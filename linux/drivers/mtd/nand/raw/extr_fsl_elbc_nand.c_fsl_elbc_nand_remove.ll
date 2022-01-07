; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_elbc_nand.c_fsl_elbc_nand_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_elbc_nand.c_fsl_elbc_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.fsl_elbc_fcm_ctrl* }
%struct.fsl_elbc_fcm_ctrl = type { i32 }
%struct.platform_device = type { i32 }
%struct.fsl_elbc_mtd = type { i32 }

@fsl_lbc_ctrl_dev = common dso_local global %struct.TYPE_2__* null, align 8
@fsl_elbc_nand_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_elbc_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_elbc_nand_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fsl_elbc_fcm_ctrl*, align 8
  %4 = alloca %struct.fsl_elbc_mtd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsl_lbc_ctrl_dev, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %6, align 8
  store %struct.fsl_elbc_fcm_ctrl* %7, %struct.fsl_elbc_fcm_ctrl** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.fsl_elbc_mtd* @dev_get_drvdata(i32* %9)
  store %struct.fsl_elbc_mtd* %10, %struct.fsl_elbc_mtd** %4, align 8
  %11 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %4, align 8
  %12 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %11, i32 0, i32 0
  %13 = call i32 @nand_release(i32* %12)
  %14 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %4, align 8
  %15 = call i32 @fsl_elbc_chip_remove(%struct.fsl_elbc_mtd* %14)
  %16 = call i32 @mutex_lock(i32* @fsl_elbc_nand_mutex)
  %17 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.fsl_elbc_fcm_ctrl, %struct.fsl_elbc_fcm_ctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_elbc_fcm_ctrl, %struct.fsl_elbc_fcm_ctrl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsl_lbc_ctrl_dev, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.fsl_elbc_fcm_ctrl* null, %struct.fsl_elbc_fcm_ctrl** %27, align 8
  %28 = load %struct.fsl_elbc_fcm_ctrl*, %struct.fsl_elbc_fcm_ctrl** %3, align 8
  %29 = call i32 @kfree(%struct.fsl_elbc_fcm_ctrl* %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = call i32 @mutex_unlock(i32* @fsl_elbc_nand_mutex)
  ret i32 0
}

declare dso_local %struct.fsl_elbc_mtd* @dev_get_drvdata(i32*) #1

declare dso_local i32 @nand_release(i32*) #1

declare dso_local i32 @fsl_elbc_chip_remove(%struct.fsl_elbc_mtd*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.fsl_elbc_fcm_ctrl*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
