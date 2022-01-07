; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_10_100_only_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_10_100_only_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }
%struct.pci_device_id = type { i32 }

@GRC_MISC_CFG = common dso_local global i32 0, align 4
@GRC_MISC_CFG_BOARD_ID_MASK = common dso_local global i32 0, align 4
@ASIC_REV_5703 = common dso_local global i64 0, align 8
@TG3_PHYFLG_IS_FET = common dso_local global i32 0, align 4
@TG3_DRV_DATA_FLAG_10_100_ONLY = common dso_local global i32 0, align 4
@ASIC_REV_5705 = common dso_local global i64 0, align 8
@TG3_DRV_DATA_FLAG_5705_10_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, %struct.pci_device_id*)* @tg3_10_100_only_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_10_100_only_device(%struct.tg3* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load i32, i32* @GRC_MISC_CFG, align 4
  %8 = call i32 @tr32(i32 %7)
  %9 = load i32, i32* @GRC_MISC_CFG_BOARD_ID_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.tg3*, %struct.tg3** %4, align 8
  %12 = call i64 @tg3_asic_rev(%struct.tg3* %11)
  %13 = load i64, i64* @ASIC_REV_5703, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 32768
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 16384
  br i1 %20, label %28, label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.tg3*, %struct.tg3** %4, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TG3_PHYFLG_IS_FET, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %18, %15
  store i32 1, i32* %3, align 4
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TG3_DRV_DATA_FLAG_10_100_ONLY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = load %struct.tg3*, %struct.tg3** %4, align 8
  %38 = call i64 @tg3_asic_rev(%struct.tg3* %37)
  %39 = load i64, i64* @ASIC_REV_5705, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %43 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TG3_DRV_DATA_FLAG_5705_10_100, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %53

49:                                               ; preds = %41
  br label %51

50:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %53

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %29
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %50, %48, %28
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @tr32(i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
