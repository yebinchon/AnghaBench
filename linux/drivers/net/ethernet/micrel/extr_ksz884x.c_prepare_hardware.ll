; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_prepare_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_prepare_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { i32, i32, %struct.net_device*, %struct.ksz_hw }
%struct.ksz_hw = type { %struct.TYPE_4__, %struct.TYPE_3__, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@netdev_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@rx_proc_task = common dso_local global i32 0, align 4
@tx_proc_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @prepare_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_hardware(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dev_priv*, align 8
  %5 = alloca %struct.dev_info*, align 8
  %6 = alloca %struct.ksz_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.dev_priv* %9, %struct.dev_priv** %4, align 8
  %10 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %11 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %10, i32 0, i32 0
  %12 = load %struct.dev_info*, %struct.dev_info** %11, align 8
  store %struct.dev_info* %12, %struct.dev_info** %5, align 8
  %13 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %14 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %13, i32 0, i32 3
  store %struct.ksz_hw* %14, %struct.ksz_hw** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %17 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %16, i32 0, i32 2
  store %struct.net_device* %15, %struct.net_device** %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @netdev_intr, align 4
  %22 = load i32, i32* @IRQF_SHARED, align 4
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @request_irq(i32 %20, i32 %21, i32 %22, i32 %25, %struct.net_device* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %70

32:                                               ; preds = %1
  %33 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %34 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %33, i32 0, i32 1
  %35 = load i32, i32* @rx_proc_task, align 4
  %36 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %37 = ptrtoint %struct.dev_info* %36 to i64
  %38 = call i32 @tasklet_init(i32* %34, i32 %35, i64 %37)
  %39 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %40 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %39, i32 0, i32 0
  %41 = load i32, i32* @tx_proc_task, align 4
  %42 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %43 = ptrtoint %struct.dev_info* %42 to i64
  %44 = call i32 @tasklet_init(i32* %40, i32 %41, i64 %43)
  %45 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %46 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %48 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %50 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %52 = call i32 @hw_reset(%struct.ksz_hw* %51)
  %53 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %54 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %55 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %59 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @hw_set_desc_base(%struct.ksz_hw* %53, i32 %57, i32 %61)
  %63 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %64 = call i32 @hw_set_addr(%struct.ksz_hw* %63)
  %65 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %66 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %67 = call i32 @hw_cfg_huge_frame(%struct.dev_info* %65, %struct.ksz_hw* %66)
  %68 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %69 = call i32 @ksz_init_rx_buffers(%struct.dev_info* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %32, %30
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @hw_reset(%struct.ksz_hw*) #1

declare dso_local i32 @hw_set_desc_base(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @hw_set_addr(%struct.ksz_hw*) #1

declare dso_local i32 @hw_cfg_huge_frame(%struct.dev_info*, %struct.ksz_hw*) #1

declare dso_local i32 @ksz_init_rx_buffers(%struct.dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
