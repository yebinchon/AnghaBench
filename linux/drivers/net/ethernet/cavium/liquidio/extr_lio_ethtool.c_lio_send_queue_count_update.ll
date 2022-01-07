; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_send_queue_count_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_send_queue_count_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio = type { %struct.octeon_device*, %struct.TYPE_11__ }
%struct.octeon_device = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.octnic_ctrl_pkt = type { i32, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i8*, i8*, i32 }

@OCTNET_CMD_QUEUE_COUNT_CTL = common dso_local global i32 0, align 4
@liquidio_link_ctrl_cmd_completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to send Queue reset command (ret: 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @lio_send_queue_count_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_send_queue_count_update(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca %struct.octnic_ctrl_pkt, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.lio* @GET_LIO(%struct.net_device* %10)
  store %struct.lio* %11, %struct.lio** %6, align 8
  %12 = load %struct.lio*, %struct.lio** %6, align 8
  %13 = getelementptr inbounds %struct.lio, %struct.lio* %12, i32 0, i32 0
  %14 = load %struct.octeon_device*, %struct.octeon_device** %13, align 8
  store %struct.octeon_device* %14, %struct.octeon_device** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = call i32 @memset(%struct.octnic_ctrl_pkt* %8, i32 0, i32 56)
  %16 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @OCTNET_CMD_QUEUE_COUNT_CTL, align 4
  %19 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load %struct.lio*, %struct.lio** %6, align 8
  %31 = getelementptr inbounds %struct.lio, %struct.lio* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = ptrtoint %struct.net_device* %39 to i64
  %41 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @liquidio_link_ctrl_cmd_completion, align 4
  %43 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %8, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load %struct.lio*, %struct.lio** %6, align 8
  %45 = getelementptr inbounds %struct.lio, %struct.lio* %44, i32 0, i32 0
  %46 = load %struct.octeon_device*, %struct.octeon_device** %45, align 8
  %47 = call i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device* %46, %struct.octnic_ctrl_pkt* %8)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %2
  %51 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %52 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 -1, i32* %3, align 4
  br label %58

57:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.octnic_ctrl_pkt*, i32, i32) #1

declare dso_local i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device*, %struct.octnic_ctrl_pkt*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
