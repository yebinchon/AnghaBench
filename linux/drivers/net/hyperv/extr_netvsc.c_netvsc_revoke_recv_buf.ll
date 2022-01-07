; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_revoke_recv_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_revoke_recv_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.netvsc_device = type { i64, %struct.nvsp_message }
%struct.nvsp_message = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }

@NVSP_MSG1_TYPE_REVOKE_RECV_BUF = common dso_local global i32 0, align 4
@NETVSC_RECEIVE_BUFFER_ID = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"unable to send revoke receive buffer to netvsp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, %struct.netvsc_device*, %struct.net_device*)* @netvsc_revoke_recv_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_revoke_recv_buf(%struct.hv_device* %0, %struct.netvsc_device* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.netvsc_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nvsp_message*, align 8
  %8 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %9 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %10 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %3
  %14 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %15 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %14, i32 0, i32 1
  store %struct.nvsp_message* %15, %struct.nvsp_message** %7, align 8
  %16 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %17 = call i32 @memset(%struct.nvsp_message* %16, i32 0, i32 8)
  %18 = load i32, i32* @NVSP_MSG1_TYPE_REVOKE_RECV_BUF, align 4
  %19 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %20 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @NETVSC_RECEIVE_BUFFER_ID, align 4
  %23 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %24 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 4
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %30 = call i32 @trace_nvsp_send(%struct.net_device* %28, %struct.nvsp_message* %29)
  %31 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %32 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %35 = load %struct.nvsp_message*, %struct.nvsp_message** %7, align 8
  %36 = ptrtoint %struct.nvsp_message* %35 to i64
  %37 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %38 = call i32 @vmbus_sendpacket(%struct.TYPE_10__* %33, %struct.nvsp_message* %34, i32 8, i64 %36, i32 %37, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %40 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %13
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = call i32 @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %55

52:                                               ; preds = %46
  %53 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %54 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %52, %3
  ret void
}

declare dso_local i32 @memset(%struct.nvsp_message*, i32, i32) #1

declare dso_local i32 @trace_nvsp_send(%struct.net_device*, %struct.nvsp_message*) #1

declare dso_local i32 @vmbus_sendpacket(%struct.TYPE_10__*, %struct.nvsp_message*, i32, i64, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
