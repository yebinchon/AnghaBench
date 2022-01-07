; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_elbc_nand.c_fsl_elbc_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_elbc_nand.c_fsl_elbc_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fsl_elbc_mtd = type { %struct.fsl_lbc_ctrl* }
%struct.fsl_lbc_ctrl = type { %struct.fsl_elbc_fcm_ctrl* }
%struct.fsl_elbc_fcm_ctrl = type { i32 }

@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @fsl_elbc_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_elbc_read_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.fsl_elbc_mtd*, align 8
  %11 = alloca %struct.fsl_lbc_ctrl*, align 8
  %12 = alloca %struct.fsl_elbc_fcm_ctrl*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %9, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %16 = call %struct.fsl_elbc_mtd* @nand_get_controller_data(%struct.nand_chip* %15)
  store %struct.fsl_elbc_mtd* %16, %struct.fsl_elbc_mtd** %10, align 8
  %17 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %10, align 8
  %18 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %17, i32 0, i32 0
  %19 = load %struct.fsl_lbc_ctrl*, %struct.fsl_lbc_ctrl** %18, align 8
  store %struct.fsl_lbc_ctrl* %19, %struct.fsl_lbc_ctrl** %11, align 8
  %20 = load %struct.fsl_lbc_ctrl*, %struct.fsl_lbc_ctrl** %11, align 8
  %21 = getelementptr inbounds %struct.fsl_lbc_ctrl, %struct.fsl_lbc_ctrl* %20, i32 0, i32 0
  %22 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %21, align 8
  store %struct.fsl_elbc_fcm_ctrl* %22, %struct.fsl_elbc_fcm_ctrl** %12, align 8
  %23 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nand_read_page_op(%struct.nand_chip* %23, i32 %24, i32 0, i32* %25, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %4
  %33 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %34 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @fsl_elbc_read_buf(%struct.nand_chip* %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %32, %4
  %42 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %43 = call i32 @fsl_elbc_wait(%struct.nand_chip* %42)
  %44 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %12, align 8
  %55 = getelementptr inbounds %struct.fsl_elbc_fcm_ctrl, %struct.fsl_elbc_fcm_ctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  ret i32 %56
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.fsl_elbc_mtd* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @fsl_elbc_read_buf(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @fsl_elbc_wait(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
