; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_port_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32, i32 }
%struct.macvlan_port = type { i32, i32, i32*, i32*, i32, i32, %struct.net_device* }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MACVLAN_HASH_SIZE = common dso_local global i32 0, align 4
@macvlan_process_broadcast = common dso_local global i32 0, align 4
@macvlan_handle_frame = common dso_local global i32 0, align 4
@IFF_MACVLAN_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @macvlan_port_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_port_create(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.macvlan_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ARPHRD_ETHER, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IFF_LOOPBACK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12, %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %107

22:                                               ; preds = %12
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i64 @netdev_is_rx_handler_busy(%struct.net_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %107

29:                                               ; preds = %22
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.macvlan_port* @kzalloc(i32 40, i32 %30)
  store %struct.macvlan_port* %31, %struct.macvlan_port** %4, align 8
  %32 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %33 = icmp eq %struct.macvlan_port* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %107

37:                                               ; preds = %29
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %40 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %39, i32 0, i32 6
  store %struct.net_device* %38, %struct.net_device** %40, align 8
  %41 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %42 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ether_addr_copy(i32 %43, i32 %46)
  %48 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %49 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %48, i32 0, i32 4
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %63, %37
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @MACVLAN_HASH_SIZE, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %57 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @INIT_HLIST_HEAD(i32* %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %51

66:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @MACVLAN_HASH_SIZE, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %73 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @INIT_HLIST_HEAD(i32* %77)
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %5, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %67

82:                                               ; preds = %67
  %83 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %84 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %83, i32 0, i32 1
  %85 = call i32 @skb_queue_head_init(i32* %84)
  %86 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %87 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %86, i32 0, i32 0
  %88 = load i32, i32* @macvlan_process_broadcast, align 4
  %89 = call i32 @INIT_WORK(i32* %87, i32 %88)
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = load i32, i32* @macvlan_handle_frame, align 4
  %92 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %93 = call i32 @netdev_rx_handler_register(%struct.net_device* %90, i32 %91, %struct.macvlan_port* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %82
  %97 = load %struct.macvlan_port*, %struct.macvlan_port** %4, align 8
  %98 = call i32 @kfree(%struct.macvlan_port* %97)
  br label %105

99:                                               ; preds = %82
  %100 = load i32, i32* @IFF_MACVLAN_PORT, align 4
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %96
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %34, %26, %19
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @netdev_is_rx_handler_busy(%struct.net_device*) #1

declare dso_local %struct.macvlan_port* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @netdev_rx_handler_register(%struct.net_device*, i32, %struct.macvlan_port*) #1

declare dso_local i32 @kfree(%struct.macvlan_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
