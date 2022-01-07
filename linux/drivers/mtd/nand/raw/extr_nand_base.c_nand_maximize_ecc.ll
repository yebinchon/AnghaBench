; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_maximize_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_maximize_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nand_ecc_caps = type { i32, i32 (i32, i32)*, %struct.nand_ecc_step_info* }
%struct.nand_ecc_step_info = type { i32, i32, i32* }
%struct.mtd_info = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_ecc_caps*, i32)* @nand_maximize_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_maximize_ecc(%struct.nand_chip* %0, %struct.nand_ecc_caps* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.nand_ecc_caps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca %struct.nand_ecc_step_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store %struct.nand_ecc_caps* %1, %struct.nand_ecc_caps** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %22 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %21)
  store %struct.mtd_info* %22, %struct.mtd_info** %8, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %23

23:                                               ; preds = %124, %3
  %24 = load i32, i32* %19, align 4
  %25 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %26 = getelementptr inbounds %struct.nand_ecc_caps, %struct.nand_ecc_caps* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %127

29:                                               ; preds = %23
  %30 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %31 = getelementptr inbounds %struct.nand_ecc_caps, %struct.nand_ecc_caps* %30, i32 0, i32 2
  %32 = load %struct.nand_ecc_step_info*, %struct.nand_ecc_step_info** %31, align 8
  %33 = load i32, i32* %19, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nand_ecc_step_info, %struct.nand_ecc_step_info* %32, i64 %34
  store %struct.nand_ecc_step_info* %35, %struct.nand_ecc_step_info** %9, align 8
  %36 = load %struct.nand_ecc_step_info*, %struct.nand_ecc_step_info** %9, align 8
  %37 = getelementptr inbounds %struct.nand_ecc_step_info, %struct.nand_ecc_step_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  %39 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %40 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %29
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %47 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %124

52:                                               ; preds = %44, %29
  store i32 0, i32* %20, align 4
  br label %53

53:                                               ; preds = %120, %52
  %54 = load i32, i32* %20, align 4
  %55 = load %struct.nand_ecc_step_info*, %struct.nand_ecc_step_info** %9, align 8
  %56 = getelementptr inbounds %struct.nand_ecc_step_info, %struct.nand_ecc_step_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %123

59:                                               ; preds = %53
  %60 = load %struct.nand_ecc_step_info*, %struct.nand_ecc_step_info** %9, align 8
  %61 = getelementptr inbounds %struct.nand_ecc_step_info, %struct.nand_ecc_step_info* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = srem i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %120

74:                                               ; preds = %59
  %75 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %76 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sdiv i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %81 = getelementptr inbounds %struct.nand_ecc_caps, %struct.nand_ecc_caps* %80, i32 0, i32 1
  %82 = load i32 (i32, i32)*, i32 (i32, i32)** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 %82(i32 %83, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i64 @WARN_ON_ONCE(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  br label %120

92:                                               ; preds = %74
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %7, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %120

99:                                               ; preds = %92
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = mul nsw i32 %100, %101
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110, %99
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %18, align 4
  br label %119

119:                                              ; preds = %114, %110, %106
  br label %120

120:                                              ; preds = %119, %98, %91, %73
  %121 = load i32, i32* %20, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %20, align 4
  br label %53

123:                                              ; preds = %53
  br label %124

124:                                              ; preds = %123, %51
  %125 = load i32, i32* %19, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %19, align 4
  br label %23

127:                                              ; preds = %23
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* @ENOTSUPP, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %146

133:                                              ; preds = %127
  %134 = load i32, i32* %16, align 4
  %135 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %136 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %140 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %144 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 4
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %133, %130
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
