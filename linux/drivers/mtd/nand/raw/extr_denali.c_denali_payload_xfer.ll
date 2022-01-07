; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_payload_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_payload_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32, i32 }
%struct.denali_controller = type { i32 }
%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i8*, i32)* @denali_payload_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_payload_xfer(%struct.nand_chip* %0, i8* %1, i32 %2) #0 {
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
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %18 = call %struct.denali_controller* @to_denali_controller(%struct.nand_chip* %17)
  store %struct.denali_controller* %18, %struct.denali_controller** %8, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %20 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %19)
  store %struct.mtd_info* %20, %struct.mtd_info** %9, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %22, %struct.nand_ecc_ctrl** %10, align 8
  %23 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.denali_controller*, %struct.denali_controller** %8, align 8
  %27 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %106, %3
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %32 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %109

35:                                               ; preds = %29
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %38 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %41 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = mul nsw i32 %36, %43
  store i32 %44, i32* %15, align 4
  %45 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %10, align 8
  %46 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %15, align 4
  br label %90

55:                                               ; preds = %35
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %55
  %62 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %15, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @denali_change_column(%struct.nand_chip* %62, i32 %63, i8* %64, i32 %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %4, align 4
  br label %110

74:                                               ; preds = %61
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %15, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i8*, i8** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr i8, i8* %78, i64 %79
  store i8* %80, i8** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load i32, i32* %16, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %74, %55
  br label %90

90:                                               ; preds = %89, %51
  %91 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @denali_change_column(%struct.nand_chip* %91, i32 %92, i8* %93, i32 %94, i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %4, align 4
  br label %110

101:                                              ; preds = %90
  %102 = load i32, i32* %16, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr i8, i8* %103, i64 %104
  store i8* %105, i8** %6, align 8
  br label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %29

109:                                              ; preds = %29
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %99, %72
  %111 = load i32, i32* %4, align 4
  ret i32 %111
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
