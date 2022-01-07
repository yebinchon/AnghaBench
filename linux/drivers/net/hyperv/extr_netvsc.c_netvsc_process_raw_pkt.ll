; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_process_raw_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_process_raw_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.netvsc_channel = type { %struct.vmbus_channel* }
%struct.vmbus_channel = type { i32 }
%struct.netvsc_device = type { i32 }
%struct.net_device = type { i32 }
%struct.vmpacket_descriptor = type { i32, i32 }
%struct.nvsp_message = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"unhandled packet type %d, tid %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.netvsc_channel*, %struct.netvsc_device*, %struct.net_device*, %struct.vmpacket_descriptor*, i32)* @netvsc_process_raw_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_process_raw_pkt(%struct.hv_device* %0, %struct.netvsc_channel* %1, %struct.netvsc_device* %2, %struct.net_device* %3, %struct.vmpacket_descriptor* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hv_device*, align 8
  %9 = alloca %struct.netvsc_channel*, align 8
  %10 = alloca %struct.netvsc_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.vmpacket_descriptor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmbus_channel*, align 8
  %15 = alloca %struct.nvsp_message*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %8, align 8
  store %struct.netvsc_channel* %1, %struct.netvsc_channel** %9, align 8
  store %struct.netvsc_device* %2, %struct.netvsc_device** %10, align 8
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store %struct.vmpacket_descriptor* %4, %struct.vmpacket_descriptor** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %17 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %16, i32 0, i32 0
  %18 = load %struct.vmbus_channel*, %struct.vmbus_channel** %17, align 8
  store %struct.vmbus_channel* %18, %struct.vmbus_channel** %14, align 8
  %19 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %12, align 8
  %20 = call %struct.nvsp_message* @hv_pkt_data(%struct.vmpacket_descriptor* %19)
  store %struct.nvsp_message* %20, %struct.nvsp_message** %15, align 8
  %21 = load %struct.net_device*, %struct.net_device** %11, align 8
  %22 = load %struct.vmbus_channel*, %struct.vmbus_channel** %14, align 8
  %23 = load %struct.nvsp_message*, %struct.nvsp_message** %15, align 8
  %24 = call i32 @trace_nvsp_recv(%struct.net_device* %21, %struct.vmbus_channel* %22, %struct.nvsp_message* %23)
  %25 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %12, align 8
  %26 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %46 [
    i32 130, label %28
    i32 128, label %35
    i32 129, label %42
  ]

28:                                               ; preds = %6
  %29 = load %struct.net_device*, %struct.net_device** %11, align 8
  %30 = load %struct.netvsc_device*, %struct.netvsc_device** %10, align 8
  %31 = load %struct.vmbus_channel*, %struct.vmbus_channel** %14, align 8
  %32 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @netvsc_send_completion(%struct.net_device* %29, %struct.netvsc_device* %30, %struct.vmbus_channel* %31, %struct.vmpacket_descriptor* %32, i32 %33)
  br label %55

35:                                               ; preds = %6
  %36 = load %struct.net_device*, %struct.net_device** %11, align 8
  %37 = load %struct.netvsc_device*, %struct.netvsc_device** %10, align 8
  %38 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %39 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %12, align 8
  %40 = load %struct.nvsp_message*, %struct.nvsp_message** %15, align 8
  %41 = call i32 @netvsc_receive(%struct.net_device* %36, %struct.netvsc_device* %37, %struct.netvsc_channel* %38, %struct.vmpacket_descriptor* %39, %struct.nvsp_message* %40)
  store i32 %41, i32* %7, align 4
  br label %56

42:                                               ; preds = %6
  %43 = load %struct.net_device*, %struct.net_device** %11, align 8
  %44 = load %struct.nvsp_message*, %struct.nvsp_message** %15, align 8
  %45 = call i32 @netvsc_receive_inband(%struct.net_device* %43, %struct.nvsp_message* %44)
  br label %55

46:                                               ; preds = %6
  %47 = load %struct.net_device*, %struct.net_device** %11, align 8
  %48 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %12, align 8
  %49 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %12, align 8
  %52 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netdev_err(%struct.net_device* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %46, %42, %28
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local %struct.nvsp_message* @hv_pkt_data(%struct.vmpacket_descriptor*) #1

declare dso_local i32 @trace_nvsp_recv(%struct.net_device*, %struct.vmbus_channel*, %struct.nvsp_message*) #1

declare dso_local i32 @netvsc_send_completion(%struct.net_device*, %struct.netvsc_device*, %struct.vmbus_channel*, %struct.vmpacket_descriptor*, i32) #1

declare dso_local i32 @netvsc_receive(%struct.net_device*, %struct.netvsc_device*, %struct.netvsc_channel*, %struct.vmpacket_descriptor*, %struct.nvsp_message*) #1

declare dso_local i32 @netvsc_receive_inband(%struct.net_device*, %struct.nvsp_message*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
