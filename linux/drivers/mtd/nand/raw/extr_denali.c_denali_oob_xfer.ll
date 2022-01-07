; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_oob_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_oob_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32, i32 }
%struct.denali_controller = type { i32 }
%struct.mtd_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i8*, i32)* @denali_oob_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_oob_xfer(%struct.nand_chip* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.denali_controller*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.nand_ecc_ctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %19 = call %struct.denali_controller* @to_denali_controller(%struct.nand_chip* %18)
  store %struct.denali_controller* %19, %struct.denali_controller** %8, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %21 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %20)
  store %struct.mtd_info* %21, %struct.mtd_info** %9, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %23, %struct.nand_ecc_ctrl** %10, align 8
  %24 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.denali_controller*, %struct.denali_controller** %8, align 8
  %31 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @denali_change_column(%struct.nand_chip* %33, i32 %34, i8* %35, i32 %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %4, align 4
  br label %149

43:                                               ; preds = %3
  %44 = load i32, i32* %13, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  store i8* %47, i8** %6, align 8
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %145, %43
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %51 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %148

54:                                               ; preds = %48
  %55 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %56 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %60 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %63 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = mul nsw i32 %58, %65
  %67 = add nsw i32 %57, %66
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %70 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp eq i32 %68, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %54
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %17, align 4
  br label %86

82:                                               ; preds = %54
  %83 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %84 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %82, %74
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %16, align 4
  br label %129

94:                                               ; preds = %86
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %11, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %128

100:                                              ; preds = %94
  %101 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @denali_change_column(%struct.nand_chip* %101, i32 %102, i8* %103, i32 %106, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %4, align 4
  br label %149

113:                                              ; preds = %100
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %16, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load i8*, i8** %6, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr i8, i8* %117, i64 %118
  store i8* %119, i8** %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %16, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load i32, i32* %17, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %125, %126
  store i32 %127, i32* %16, align 4
  br label %128

128:                                              ; preds = %113, %94
  br label %129

129:                                              ; preds = %128, %90
  %130 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %131 = load i32, i32* %16, align 4
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @denali_change_column(%struct.nand_chip* %130, i32 %131, i8* %132, i32 %133, i32 %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %4, align 4
  br label %149

140:                                              ; preds = %129
  %141 = load i32, i32* %17, align 4
  %142 = load i8*, i8** %6, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr i8, i8* %142, i64 %143
  store i8* %144, i8** %6, align 8
  br label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %48

148:                                              ; preds = %48
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %138, %111, %41
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.denali_controller* @to_denali_controller(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @denali_change_column(%struct.nand_chip*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
