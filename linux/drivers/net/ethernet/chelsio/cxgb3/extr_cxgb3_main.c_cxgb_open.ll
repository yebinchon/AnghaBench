; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_cxgb_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_cxgb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { i32, i32, %struct.adapter* }
%struct.adapter = type { i32, i32 }

@PORT_MASK = common dso_local global i32 0, align 4
@ofld_disable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not initialize offload capabilities\0A\00", align 1
@OFFLOAD_PORT_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cxgb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.port_info* @netdev_priv(%struct.net_device* %8)
  store %struct.port_info* %9, %struct.port_info** %4, align 8
  %10 = load %struct.port_info*, %struct.port_info** %4, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 2
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %5, align 8
  %13 = load %struct.adapter*, %struct.adapter** %5, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PORT_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.adapter*, %struct.adapter** %5, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.adapter*, %struct.adapter** %5, align 8
  %24 = call i32 @cxgb_up(%struct.adapter* %23)
  store i32 %24, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %87

28:                                               ; preds = %22, %1
  %29 = load %struct.port_info*, %struct.port_info** %4, align 8
  %30 = getelementptr inbounds %struct.port_info, %struct.port_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.adapter*, %struct.adapter** %5, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  %35 = load %struct.adapter*, %struct.adapter** %5, align 8
  %36 = call i64 @is_offload(%struct.adapter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %28
  %39 = load i32, i32* @ofld_disable, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @offload_open(%struct.net_device* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  br label %49

49:                                               ; preds = %48, %38, %28
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = load %struct.port_info*, %struct.port_info** %4, align 8
  %52 = getelementptr inbounds %struct.port_info, %struct.port_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %50, i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = load %struct.port_info*, %struct.port_info** %4, align 8
  %57 = getelementptr inbounds %struct.port_info, %struct.port_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %55, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %87

64:                                               ; preds = %49
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @link_start(%struct.net_device* %65)
  %67 = load %struct.adapter*, %struct.adapter** %5, align 8
  %68 = load %struct.port_info*, %struct.port_info** %4, align 8
  %69 = getelementptr inbounds %struct.port_info, %struct.port_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @t3_port_intr_enable(%struct.adapter* %67, i32 %70)
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = call i32 @netif_tx_start_all_queues(%struct.net_device* %72)
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %64
  %77 = load %struct.adapter*, %struct.adapter** %5, align 8
  %78 = call i32 @schedule_chk_task(%struct.adapter* %77)
  br label %79

79:                                               ; preds = %76, %64
  %80 = load %struct.adapter*, %struct.adapter** %5, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 1
  %82 = load i32, i32* @OFFLOAD_PORT_UP, align 4
  %83 = load %struct.port_info*, %struct.port_info** %4, align 8
  %84 = getelementptr inbounds %struct.port_info, %struct.port_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @cxgb3_event_notify(i32* %81, i32 %82, i32 %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %79, %62, %26
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cxgb_up(%struct.adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @is_offload(%struct.adapter*) #1

declare dso_local i32 @offload_open(%struct.net_device*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @link_start(%struct.net_device*) #1

declare dso_local i32 @t3_port_intr_enable(%struct.adapter*, i32) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @schedule_chk_task(%struct.adapter*) #1

declare dso_local i32 @cxgb3_event_notify(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
