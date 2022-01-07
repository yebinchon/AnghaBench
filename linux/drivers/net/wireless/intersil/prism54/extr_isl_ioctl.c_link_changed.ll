; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_link_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_link_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i64 }
%union.iwreq_data = type { i32 }
%struct.sockaddr = type { i32 }

@IW_MODE_INFRA = common dso_local global i64 0, align 8
@SIOCGIWAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Link established\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Link lost\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @link_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_changed(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %union.iwreq_data, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.TYPE_4__* @netdev_priv(%struct.net_device* %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @netif_carrier_on(%struct.net_device* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IW_MODE_INFRA, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = bitcast %union.iwreq_data* %6 to %struct.sockaddr*
  %22 = call i32 @prism54_get_wap(%struct.net_device* %20, i32* null, %struct.sockaddr* %21, i32* null)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = load i32, i32* @SIOCGIWAP, align 4
  %25 = call i32 @wireless_send_event(%struct.net_device* %23, i32 %24, %union.iwreq_data* %6, i32* null)
  br label %30

26:                                               ; preds = %11
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call %struct.TYPE_4__* @netdev_priv(%struct.net_device* %27)
  %29 = call i32 @send_simple_event(%struct.TYPE_4__* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %19
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @netif_carrier_off(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call %struct.TYPE_4__* @netdev_priv(%struct.net_device* %34)
  %36 = call i32 @send_simple_event(%struct.TYPE_4__* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %31, %30
  ret void
}

declare dso_local %struct.TYPE_4__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @prism54_get_wap(%struct.net_device*, i32*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @wireless_send_event(%struct.net_device*, i32, %union.iwreq_data*, i32*) #1

declare dso_local i32 @send_simple_event(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
