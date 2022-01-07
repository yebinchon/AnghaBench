; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_send_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_send_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netvsc_device = type { i32, i32 }
%struct.vmbus_channel = type { i32 }
%struct.vmpacket_descriptor = type { i32 }
%struct.nvsp_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Unknown send completion type %d received!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.netvsc_device*, %struct.vmbus_channel*, %struct.vmpacket_descriptor*, i32)* @netvsc_send_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_send_completion(%struct.net_device* %0, %struct.netvsc_device* %1, %struct.vmbus_channel* %2, %struct.vmpacket_descriptor* %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netvsc_device*, align 8
  %8 = alloca %struct.vmbus_channel*, align 8
  %9 = alloca %struct.vmpacket_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvsp_message*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %7, align 8
  store %struct.vmbus_channel* %2, %struct.vmbus_channel** %8, align 8
  store %struct.vmpacket_descriptor* %3, %struct.vmpacket_descriptor** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %9, align 8
  %13 = call %struct.nvsp_message* @hv_pkt_data(%struct.vmpacket_descriptor* %12)
  store %struct.nvsp_message* %13, %struct.nvsp_message** %11, align 8
  %14 = load %struct.nvsp_message*, %struct.nvsp_message** %11, align 8
  %15 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %33 [
    i32 128, label %18
    i32 132, label %18
    i32 130, label %18
    i32 129, label %18
    i32 131, label %26
  ]

18:                                               ; preds = %5, %5, %5, %5
  %19 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %20 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %19, i32 0, i32 1
  %21 = load %struct.nvsp_message*, %struct.nvsp_message** %11, align 8
  %22 = call i32 @memcpy(i32* %20, %struct.nvsp_message* %21, i32 4)
  %23 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %24 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %23, i32 0, i32 0
  %25 = call i32 @complete(i32* %24)
  br label %40

26:                                               ; preds = %5
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %29 = load %struct.vmbus_channel*, %struct.vmbus_channel** %8, align 8
  %30 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @netvsc_send_tx_complete(%struct.net_device* %27, %struct.netvsc_device* %28, %struct.vmbus_channel* %29, %struct.vmpacket_descriptor* %30, i32 %31)
  br label %40

33:                                               ; preds = %5
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load %struct.nvsp_message*, %struct.nvsp_message** %11, align 8
  %36 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33, %26, %18
  ret void
}

declare dso_local %struct.nvsp_message* @hv_pkt_data(%struct.vmpacket_descriptor*) #1

declare dso_local i32 @memcpy(i32*, %struct.nvsp_message*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @netvsc_send_tx_complete(%struct.net_device*, %struct.netvsc_device*, %struct.vmbus_channel*, %struct.vmpacket_descriptor*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
