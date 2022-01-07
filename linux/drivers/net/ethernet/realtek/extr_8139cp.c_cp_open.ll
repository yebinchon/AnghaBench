; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cp_private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"enabling interface\0A\00", align 1
@cp_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cp_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.cp_private* @netdev_priv(%struct.net_device* %7)
  store %struct.cp_private* %8, %struct.cp_private** %4, align 8
  %9 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %10 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %15 = load i32, i32* @ifup, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @netif_dbg(%struct.cp_private* %14, i32 %15, %struct.net_device* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %19 = call i32 @cp_alloc_rings(%struct.cp_private* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %62

24:                                               ; preds = %1
  %25 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %26 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %25, i32 0, i32 0
  %27 = call i32 @napi_enable(i32* %26)
  %28 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %29 = call i32 @cp_init_hw(%struct.cp_private* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @cp_interrupt, align 4
  %32 = load i32, i32* @IRQF_SHARED, align 4
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @request_irq(i32 %30, i32 %31, i32 %32, i32 %35, %struct.net_device* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %53

41:                                               ; preds = %24
  %42 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %43 = call i32 @cp_enable_irq(%struct.cp_private* %42)
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @netif_carrier_off(%struct.net_device* %44)
  %46 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %47 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %46, i32 0, i32 1
  %48 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %49 = call i32 @netif_msg_link(%struct.cp_private* %48)
  %50 = call i32 @mii_check_media(i32* %47, i32 %49, i32 1)
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @netif_start_queue(%struct.net_device* %51)
  store i32 0, i32* %2, align 4
  br label %62

53:                                               ; preds = %40
  %54 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %55 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %54, i32 0, i32 0
  %56 = call i32 @napi_disable(i32* %55)
  %57 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %58 = call i32 @cp_stop_hw(%struct.cp_private* %57)
  %59 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %60 = call i32 @cp_free_rings(%struct.cp_private* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %53, %41, %22
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.cp_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @cp_alloc_rings(%struct.cp_private*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @cp_init_hw(%struct.cp_private*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @cp_enable_irq(%struct.cp_private*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @mii_check_media(i32*, i32, i32) #1

declare dso_local i32 @netif_msg_link(%struct.cp_private*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @cp_stop_hw(%struct.cp_private*) #1

declare dso_local i32 @cp_free_rings(%struct.cp_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
