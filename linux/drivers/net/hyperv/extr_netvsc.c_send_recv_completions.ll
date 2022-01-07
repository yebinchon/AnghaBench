; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_send_recv_completions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_send_recv_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netvsc_device = type { i64, i32, i32 }
%struct.netvsc_channel = type { i32, %struct.multi_recv_comp }
%struct.multi_recv_comp = type { i64, i64, %struct.recv_comp_data* }
%struct.recv_comp_data = type { i32, i32 }
%struct.recv_comp_msg = type { %struct.nvsp_message_header, i32 }
%struct.nvsp_message_header = type { i32 }
%struct.net_device_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.recv_comp_msg.0 = type opaque

@NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE = common dso_local global i32 0, align 4
@VM_PKT_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netvsc_device*, %struct.netvsc_channel*)* @send_recv_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_recv_completions(%struct.net_device* %0, %struct.netvsc_device* %1, %struct.netvsc_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  %7 = alloca %struct.netvsc_channel*, align 8
  %8 = alloca %struct.multi_recv_comp*, align 8
  %9 = alloca %struct.recv_comp_msg, align 4
  %10 = alloca %struct.recv_comp_msg, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.recv_comp_data*, align 8
  %13 = alloca %struct.net_device_context*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %6, align 8
  store %struct.netvsc_channel* %2, %struct.netvsc_channel** %7, align 8
  %14 = load %struct.netvsc_channel*, %struct.netvsc_channel** %7, align 8
  %15 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %14, i32 0, i32 1
  store %struct.multi_recv_comp* %15, %struct.multi_recv_comp** %8, align 8
  %16 = getelementptr inbounds %struct.recv_comp_msg, %struct.recv_comp_msg* %10, i32 0, i32 0
  %17 = getelementptr inbounds %struct.nvsp_message_header, %struct.nvsp_message_header* %16, i32 0, i32 0
  %18 = load i32, i32* @NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.recv_comp_msg, %struct.recv_comp_msg* %10, i32 0, i32 1
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %73, %3
  %21 = load %struct.multi_recv_comp*, %struct.multi_recv_comp** %8, align 8
  %22 = getelementptr inbounds %struct.multi_recv_comp, %struct.multi_recv_comp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.multi_recv_comp*, %struct.multi_recv_comp** %8, align 8
  %25 = getelementptr inbounds %struct.multi_recv_comp, %struct.multi_recv_comp* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %20
  %29 = load %struct.multi_recv_comp*, %struct.multi_recv_comp** %8, align 8
  %30 = getelementptr inbounds %struct.multi_recv_comp, %struct.multi_recv_comp* %29, i32 0, i32 2
  %31 = load %struct.recv_comp_data*, %struct.recv_comp_data** %30, align 8
  %32 = load %struct.multi_recv_comp*, %struct.multi_recv_comp** %8, align 8
  %33 = getelementptr inbounds %struct.multi_recv_comp, %struct.multi_recv_comp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.recv_comp_data, %struct.recv_comp_data* %31, i64 %34
  store %struct.recv_comp_data* %35, %struct.recv_comp_data** %12, align 8
  %36 = load %struct.recv_comp_data*, %struct.recv_comp_data** %12, align 8
  %37 = getelementptr inbounds %struct.recv_comp_data, %struct.recv_comp_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.recv_comp_msg, %struct.recv_comp_msg* %10, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.netvsc_channel*, %struct.netvsc_channel** %7, align 8
  %41 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = bitcast %struct.recv_comp_msg* %10 to %struct.recv_comp_msg.0*
  %44 = load %struct.recv_comp_data*, %struct.recv_comp_data** %12, align 8
  %45 = getelementptr inbounds %struct.recv_comp_data, %struct.recv_comp_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VM_PKT_COMP, align 4
  %48 = call i32 @vmbus_sendpacket(i32 %42, %struct.recv_comp_msg.0* %43, i32 8, i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %28
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %53)
  store %struct.net_device_context* %54, %struct.net_device_context** %13, align 8
  %55 = load %struct.net_device_context*, %struct.net_device_context** %13, align 8
  %56 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %85

61:                                               ; preds = %28
  %62 = load %struct.multi_recv_comp*, %struct.multi_recv_comp** %8, align 8
  %63 = getelementptr inbounds %struct.multi_recv_comp, %struct.multi_recv_comp* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %67 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load %struct.multi_recv_comp*, %struct.multi_recv_comp** %8, align 8
  %72 = getelementptr inbounds %struct.multi_recv_comp, %struct.multi_recv_comp* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %61
  br label %20

74:                                               ; preds = %20
  %75 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %76 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %82 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %81, i32 0, i32 2
  %83 = call i32 @wake_up(i32* %82)
  br label %84

84:                                               ; preds = %80, %74
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %52
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @vmbus_sendpacket(i32, %struct.recv_comp_msg.0*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
