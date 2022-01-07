; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_skfp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_skfp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.s_smc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"entering skfp_open\0A\00", align 1
@skfp_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@RX_DISABLE_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @skfp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skfp_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.s_smc* @netdev_priv(%struct.net_device* %6)
  store %struct.s_smc* %7, %struct.s_smc** %4, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @skfp_interrupt, align 4
  %13 = load i32, i32* @IRQF_SHARED, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @request_irq(i32 %11, i32 %12, i32 %13, i32 %16, %struct.net_device* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %1
  %24 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %25 = call i32 @read_address(%struct.s_smc* %24, i32* null)
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %30 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = call i32 @memcpy(i32 %28, i32 %33, i32 %34)
  %36 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %37 = call i32 @init_smt(%struct.s_smc* %36, i32* null)
  %38 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %39 = call i32 @smt_online(%struct.s_smc* %38, i32 1)
  %40 = call i32 (...) @STI_FBI()
  %41 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %42 = call i32 @mac_clear_multicast(%struct.s_smc* %41)
  %43 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %44 = load i32, i32* @RX_DISABLE_PROMISC, align 4
  %45 = call i32 @mac_drv_rx_mode(%struct.s_smc* %43, i32 %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @netif_start_queue(%struct.net_device* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %23, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.s_smc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @read_address(%struct.s_smc*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @init_smt(%struct.s_smc*, i32*) #1

declare dso_local i32 @smt_online(%struct.s_smc*, i32) #1

declare dso_local i32 @STI_FBI(...) #1

declare dso_local i32 @mac_clear_multicast(%struct.s_smc*) #1

declare dso_local i32 @mac_drv_rx_mode(%struct.s_smc*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
