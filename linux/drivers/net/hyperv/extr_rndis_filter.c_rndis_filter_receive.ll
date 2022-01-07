; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netvsc_device = type { i32 }
%struct.netvsc_channel = type { i32 }
%struct.net_device_context = type { i32 }
%struct.rndis_message = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"unhandled rndis message (type %u len %u)\0A\00", align 1
@NVSP_STAT_FAIL = common dso_local global i32 0, align 4
@NVSP_STAT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rndis_filter_receive(%struct.net_device* %0, %struct.netvsc_device* %1, %struct.netvsc_channel* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netvsc_device*, align 8
  %9 = alloca %struct.netvsc_channel*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device_context*, align 8
  %13 = alloca %struct.rndis_message*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %8, align 8
  store %struct.netvsc_channel* %2, %struct.netvsc_channel** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %14)
  store %struct.net_device_context* %15, %struct.net_device_context** %12, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.rndis_message*
  store %struct.rndis_message* %17, %struct.rndis_message** %13, align 8
  %18 = load %struct.net_device_context*, %struct.net_device_context** %12, align 8
  %19 = call i64 @netif_msg_rx_status(%struct.net_device_context* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = load %struct.rndis_message*, %struct.rndis_message** %13, align 8
  %24 = call i32 @dump_rndis_message(%struct.net_device* %22, %struct.rndis_message* %23)
  br label %25

25:                                               ; preds = %21, %5
  %26 = load %struct.rndis_message*, %struct.rndis_message** %13, align 8
  %27 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %45 [
    i32 130, label %29
    i32 131, label %36
    i32 129, label %36
    i32 128, label %36
    i32 132, label %41
  ]

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %32 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %33 = load %struct.rndis_message*, %struct.rndis_message** %13, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @rndis_filter_receive_data(%struct.net_device* %30, %struct.netvsc_device* %31, %struct.netvsc_channel* %32, %struct.rndis_message* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %57

36:                                               ; preds = %25, %25, %25
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %39 = load %struct.rndis_message*, %struct.rndis_message** %13, align 8
  %40 = call i32 @rndis_filter_receive_response(%struct.net_device* %37, %struct.netvsc_device* %38, %struct.rndis_message* %39)
  br label %55

41:                                               ; preds = %25
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = load %struct.rndis_message*, %struct.rndis_message** %13, align 8
  %44 = call i32 @netvsc_linkstatus_callback(%struct.net_device* %42, %struct.rndis_message* %43)
  br label %55

45:                                               ; preds = %25
  %46 = load %struct.net_device*, %struct.net_device** %7, align 8
  %47 = load %struct.rndis_message*, %struct.rndis_message** %13, align 8
  %48 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rndis_message*, %struct.rndis_message** %13, align 8
  %51 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i32, i32* @NVSP_STAT_FAIL, align 4
  store i32 %54, i32* %6, align 4
  br label %57

55:                                               ; preds = %41, %36
  %56 = load i32, i32* @NVSP_STAT_SUCCESS, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %45, %29
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_rx_status(%struct.net_device_context*) #1

declare dso_local i32 @dump_rndis_message(%struct.net_device*, %struct.rndis_message*) #1

declare dso_local i32 @rndis_filter_receive_data(%struct.net_device*, %struct.netvsc_device*, %struct.netvsc_channel*, %struct.rndis_message*, i32) #1

declare dso_local i32 @rndis_filter_receive_response(%struct.net_device*, %struct.netvsc_device*, %struct.rndis_message*) #1

declare dso_local i32 @netvsc_linkstatus_callback(%struct.net_device*, %struct.rndis_message*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
