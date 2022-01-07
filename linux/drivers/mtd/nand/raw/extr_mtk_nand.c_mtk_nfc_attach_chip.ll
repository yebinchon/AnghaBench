; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.mtd_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.mtk_nfc = type { i32 }
%struct.mtk_nfc_nand_chip = type { i32, i32, i32 }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"16bits buswidth not supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @mtk_nfc_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mtk_nfc*, align 8
  %7 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %10)
  store %struct.mtd_info* %11, %struct.mtd_info** %4, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %17 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %16)
  store %struct.mtk_nfc* %17, %struct.mtk_nfc** %6, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %19 = call %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip* %18)
  store %struct.mtk_nfc_nand_chip* %19, %struct.mtk_nfc_nand_chip** %7, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %91

31:                                               ; preds = %1
  %32 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %40 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %41 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %47 = call i32 @mtk_nfc_ecc_init(%struct.device* %45, %struct.mtd_info* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %2, align 4
  br label %91

52:                                               ; preds = %44
  %53 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %7, align 8
  %54 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %53, i32 0, i32 2
  %55 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %56 = call i32 @mtk_nfc_set_spare_per_sector(i32* %54, %struct.mtd_info* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %2, align 4
  br label %91

61:                                               ; preds = %52
  %62 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %7, align 8
  %63 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %62, i32 0, i32 1
  %64 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %65 = call i32 @mtk_nfc_set_fdm(i32* %63, %struct.mtd_info* %64)
  %66 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %7, align 8
  %67 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %66, i32 0, i32 0
  %68 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %69 = call i32 @mtk_nfc_set_bad_mark_ctl(i32* %67, %struct.mtd_info* %68)
  %70 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %74 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i32 @devm_kzalloc(%struct.device* %77, i32 %78, i32 %79)
  %81 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %82 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mtk_nfc*, %struct.mtk_nfc** %6, align 8
  %84 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %61
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %91

90:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %87, %59, %50, %26
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mtk_nfc_ecc_init(%struct.device*, %struct.mtd_info*) #1

declare dso_local i32 @mtk_nfc_set_spare_per_sector(i32*, %struct.mtd_info*) #1

declare dso_local i32 @mtk_nfc_set_fdm(i32*, %struct.mtd_info*) #1

declare dso_local i32 @mtk_nfc_set_bad_mark_ctl(i32*, %struct.mtd_info*) #1

declare dso_local i32 @devm_kzalloc(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
