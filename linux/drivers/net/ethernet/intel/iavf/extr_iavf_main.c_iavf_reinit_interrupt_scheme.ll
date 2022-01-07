; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_reinit_interrupt_scheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_reinit_interrupt_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@__IAVF_VSI_DOWN = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_CONFIGURE_RSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*)* @iavf_reinit_interrupt_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_reinit_interrupt_scheme(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %5 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %5, i32 0, i32 2
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i64 @netif_running(%struct.net_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %13 = call i32 @iavf_free_traffic_irqs(%struct.iavf_adapter* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %16 = call i32 @iavf_free_misc_irq(%struct.iavf_adapter* %15)
  %17 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %18 = call i32 @iavf_reset_interrupt_capability(%struct.iavf_adapter* %17)
  %19 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %20 = call i32 @iavf_free_q_vectors(%struct.iavf_adapter* %19)
  %21 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %22 = call i32 @iavf_free_queues(%struct.iavf_adapter* %21)
  %23 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %24 = call i32 @iavf_init_interrupt_scheme(%struct.iavf_adapter* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %58

28:                                               ; preds = %14
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %29)
  %31 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %32 = call i32 @iavf_request_misc_irq(%struct.iavf_adapter* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %58

36:                                               ; preds = %28
  %37 = load i32, i32* @__IAVF_VSI_DOWN, align 4
  %38 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_bit(i32 %37, i32 %41)
  %43 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %44 = call i32 @iavf_map_rings_to_vectors(%struct.iavf_adapter* %43)
  %45 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %46 = call i64 @RSS_AQ(%struct.iavf_adapter* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load i32, i32* @IAVF_FLAG_AQ_CONFIGURE_RSS, align 4
  %50 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %57

54:                                               ; preds = %36
  %55 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %56 = call i32 @iavf_init_rss(%struct.iavf_adapter* %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %35, %27
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @iavf_free_traffic_irqs(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_free_misc_irq(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_reset_interrupt_capability(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_free_q_vectors(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_free_queues(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_init_interrupt_scheme(%struct.iavf_adapter*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @iavf_request_misc_irq(%struct.iavf_adapter*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @iavf_map_rings_to_vectors(%struct.iavf_adapter*) #1

declare dso_local i64 @RSS_AQ(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_init_rss(%struct.iavf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
