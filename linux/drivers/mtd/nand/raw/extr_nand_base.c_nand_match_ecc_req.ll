; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_match_ecc_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_match_ecc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nand_ecc_caps = type { i32, i32 (i32, i32)*, %struct.nand_ecc_step_info* }
%struct.nand_ecc_step_info = type { i32, i32, i32* }
%struct.mtd_info = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_ecc_caps*, i32)* @nand_match_ecc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_match_ecc_req(%struct.nand_chip* %0, %struct.nand_ecc_caps* %1, i32 %2) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store %struct.nand_ecc_caps* %1, %struct.nand_ecc_caps** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %25 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %24)
  store %struct.mtd_info* %25, %struct.mtd_info** %8, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* @INT_MAX, align 4
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39, %3
  %43 = load i32, i32* @ENOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %168

45:                                               ; preds = %39
  %46 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sdiv i32 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %12, align 4
  store i32 0, i32* %22, align 4
  br label %53

53:                                               ; preds = %145, %45
  %54 = load i32, i32* %22, align 4
  %55 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %56 = getelementptr inbounds %struct.nand_ecc_caps, %struct.nand_ecc_caps* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %148

59:                                               ; preds = %53
  %60 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %61 = getelementptr inbounds %struct.nand_ecc_caps, %struct.nand_ecc_caps* %60, i32 0, i32 2
  %62 = load %struct.nand_ecc_step_info*, %struct.nand_ecc_step_info** %61, align 8
  %63 = load i32, i32* %22, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.nand_ecc_step_info, %struct.nand_ecc_step_info* %62, i64 %64
  store %struct.nand_ecc_step_info* %65, %struct.nand_ecc_step_info** %9, align 8
  %66 = load %struct.nand_ecc_step_info*, %struct.nand_ecc_step_info** %9, align 8
  %67 = getelementptr inbounds %struct.nand_ecc_step_info, %struct.nand_ecc_step_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %13, align 4
  store i32 0, i32* %23, align 4
  br label %69

69:                                               ; preds = %141, %59
  %70 = load i32, i32* %23, align 4
  %71 = load %struct.nand_ecc_step_info*, %struct.nand_ecc_step_info** %9, align 8
  %72 = getelementptr inbounds %struct.nand_ecc_step_info, %struct.nand_ecc_step_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %144

75:                                               ; preds = %69
  %76 = load %struct.nand_ecc_step_info*, %struct.nand_ecc_step_info** %9, align 8
  %77 = getelementptr inbounds %struct.nand_ecc_step_info, %struct.nand_ecc_step_info* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %23, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %141

91:                                               ; preds = %86, %75
  %92 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %93 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = srem i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %141

99:                                               ; preds = %91
  %100 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %101 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sdiv i32 %102, %103
  store i32 %104, i32* %15, align 4
  %105 = load %struct.nand_ecc_caps*, %struct.nand_ecc_caps** %6, align 8
  %106 = getelementptr inbounds %struct.nand_ecc_caps, %struct.nand_ecc_caps* %105, i32 0, i32 1
  %107 = load i32 (i32, i32)*, i32 (i32, i32)** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 %107(i32 %108, i32 %109)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp slt i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i64 @WARN_ON_ONCE(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %99
  br label %141

117:                                              ; preds = %99
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %15, align 4
  %120 = mul nsw i32 %118, %119
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124, %117
  br label %141

131:                                              ; preds = %124
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %21, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %20, align 4
  br label %140

140:                                              ; preds = %135, %131
  br label %141

141:                                              ; preds = %140, %130, %116, %98, %90
  %142 = load i32, i32* %23, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %23, align 4
  br label %69

144:                                              ; preds = %69
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %22, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %22, align 4
  br label %53

148:                                              ; preds = %53
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* @INT_MAX, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* @ENOTSUPP, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  br label %168

155:                                              ; preds = %148
  %156 = load i32, i32* %18, align 4
  %157 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %158 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* %19, align 4
  %161 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %162 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* %20, align 4
  %165 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %166 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  store i32 %164, i32* %167, align 4
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %155, %152, %42
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
