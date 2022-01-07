; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_port_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipvl_port = type { i32, i32, i32, i32, i32*, i32, i32, %struct.net_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPVLAN_MODE_L3 = common dso_local global i32 0, align 4
@IPVLAN_HASH_SIZE = common dso_local global i32 0, align 4
@ipvlan_process_multicast = common dso_local global i32 0, align 4
@ipvlan_handle_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipvlan_port_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_port_create(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipvl_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ipvl_port* @kzalloc(i32 48, i32 %7)
  store %struct.ipvl_port* %8, %struct.ipvl_port** %4, align 8
  %9 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %10 = icmp ne %struct.ipvl_port* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %69

14:                                               ; preds = %1
  %15 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %16 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %15, i32 0, i32 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @dev_net(%struct.net_device* %17)
  %19 = call i32 @write_pnet(i32* %16, i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %22 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %21, i32 0, i32 7
  store %struct.net_device* %20, %struct.net_device** %22, align 8
  %23 = load i32, i32* @IPVLAN_MODE_L3, align 4
  %24 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %25 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %27 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %26, i32 0, i32 5
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %41, %14
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @IPVLAN_HASH_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %35 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @INIT_HLIST_HEAD(i32* %39)
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %46 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %45, i32 0, i32 3
  %47 = call i32 @skb_queue_head_init(i32* %46)
  %48 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %49 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %48, i32 0, i32 2
  %50 = load i32, i32* @ipvlan_process_multicast, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %53 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %52, i32 0, i32 1
  %54 = call i32 @ida_init(i32* %53)
  %55 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %56 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = load i32, i32* @ipvlan_handle_frame, align 4
  %59 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %60 = call i32 @netdev_rx_handler_register(%struct.net_device* %57, i32 %58, %struct.ipvl_port* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %44
  br label %65

64:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %69

65:                                               ; preds = %63
  %66 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %67 = call i32 @kfree(%struct.ipvl_port* %66)
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %64, %11
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.ipvl_port* @kzalloc(i32, i32) #1

declare dso_local i32 @write_pnet(i32*, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @netdev_rx_handler_register(%struct.net_device*, i32, %struct.ipvl_port*) #1

declare dso_local i32 @kfree(%struct.ipvl_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
