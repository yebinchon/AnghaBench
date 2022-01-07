; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_read_flash_mfg_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_read_flash_mfg_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }

@EIO = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_ADDR = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_FDT_READ_MFG_ID_VAL = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_CONTROL = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_READ_CTRL = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_RDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_read_flash_mfg_id(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = call i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = load i32, i32* @QLC_83XX_FLASH_ADDR, align 4
  %16 = load i32, i32* @QLC_83XX_FLASH_FDT_READ_MFG_ID_VAL, align 4
  %17 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %14, i32 %15, i32 %16)
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %19 = load i32, i32* @QLC_83XX_FLASH_CONTROL, align 4
  %20 = load i32, i32* @QLC_83XX_FLASH_READ_CTRL, align 4
  %21 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %18, i32 %19, i32 %20)
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = call i32 @qlcnic_83xx_poll_flash_status_reg(%struct.qlcnic_adapter* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %50

31:                                               ; preds = %13
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %33 = load i32, i32* @QLC_83XX_FLASH_RDDATA, align 4
  %34 = call i32 @QLCRD32(%struct.qlcnic_adapter* %32, i32 %33, i32* %5)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %41 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %50

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 255
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %49 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %43, %39, %26, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_poll_flash_status_reg(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
