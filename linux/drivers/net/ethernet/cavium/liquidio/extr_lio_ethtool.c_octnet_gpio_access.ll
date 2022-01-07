; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_octnet_gpio_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_octnet_gpio_access.c"
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
%struct.TYPE_7__ = type { i32, i32, i32 }

@OCTNET_CMD_GPIO_ACCESS = common dso_local global i32 0, align 4
@liquidio_link_ctrl_cmd_completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to configure gpio value, ret=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @octnet_gpio_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octnet_gpio_access(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lio*, align 8
  %9 = alloca %struct.octeon_device*, align 8
  %10 = alloca %struct.octnic_ctrl_pkt, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.lio* @GET_LIO(%struct.net_device* %12)
  store %struct.lio* %13, %struct.lio** %8, align 8
  %14 = load %struct.lio*, %struct.lio** %8, align 8
  %15 = getelementptr inbounds %struct.lio, %struct.lio* %14, i32 0, i32 0
  %16 = load %struct.octeon_device*, %struct.octeon_device** %15, align 8
  store %struct.octeon_device* %16, %struct.octeon_device** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = call i32 @memset(%struct.octnic_ctrl_pkt* %10, i32 0, i32 48)
  %18 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @OCTNET_CMD_GPIO_ACCESS, align 4
  %21 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.lio*, %struct.lio** %8, align 8
  %33 = getelementptr inbounds %struct.lio, %struct.lio* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = ptrtoint %struct.net_device* %41 to i64
  %43 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @liquidio_link_ctrl_cmd_completion, align 4
  %45 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.lio*, %struct.lio** %8, align 8
  %47 = getelementptr inbounds %struct.lio, %struct.lio* %46, i32 0, i32 0
  %48 = load %struct.octeon_device*, %struct.octeon_device** %47, align 8
  %49 = call i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device* %48, %struct.octnic_ctrl_pkt* %10)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %3
  %53 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %54 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i32, i32* %4, align 4
  ret i32 %63
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
