; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_handle_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_handle_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { i32 }
%struct.vio_net_mcast_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.net_device = type { i32 }

@VIO_SUBTYPE_ACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"%s: Got unexpected MCAST reply [%02x:%02x:%04x:%08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnet_port*, i8*)* @handle_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_mcast(%struct.vnet_port* %0, i8* %1) #0 {
  %3 = alloca %struct.vnet_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vio_net_mcast_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.vnet_port* %0, %struct.vnet_port** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.vio_net_mcast_info*
  store %struct.vio_net_mcast_info* %8, %struct.vio_net_mcast_info** %5, align 8
  %9 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %10 = call %struct.net_device* @VNET_PORT_TO_NET_DEVICE(%struct.vnet_port* %9)
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.vio_net_mcast_info*, %struct.vio_net_mcast_info** %5, align 8
  %12 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VIO_SUBTYPE_ACK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vio_net_mcast_info*, %struct.vio_net_mcast_info** %5, align 8
  %22 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vio_net_mcast_info*, %struct.vio_net_mcast_info** %5, align 8
  %26 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vio_net_mcast_info*, %struct.vio_net_mcast_info** %5, align 8
  %30 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vio_net_mcast_info*, %struct.vio_net_mcast_info** %5, align 8
  %34 = getelementptr inbounds %struct.vio_net_mcast_info, %struct.vio_net_mcast_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i64 %28, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %17, %2
  ret i32 0
}

declare dso_local %struct.net_device* @VNET_PORT_TO_NET_DEVICE(%struct.vnet_port*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
