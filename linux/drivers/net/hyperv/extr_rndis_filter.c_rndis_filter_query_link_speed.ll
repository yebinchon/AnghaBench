; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_query_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_query_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_device = type { i32 }
%struct.netvsc_device = type { i32 }
%struct.net_device_context = type { i32 }

@RNDIS_OID_GEN_LINK_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndis_device*, %struct.netvsc_device*)* @rndis_filter_query_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_filter_query_link_speed(%struct.rndis_device* %0, %struct.netvsc_device* %1) #0 {
  %3 = alloca %struct.rndis_device*, align 8
  %4 = alloca %struct.netvsc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device_context*, align 8
  %8 = alloca i32, align 4
  store %struct.rndis_device* %0, %struct.rndis_device** %3, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %4, align 8
  store i32 4, i32* %5, align 4
  %9 = load %struct.rndis_device*, %struct.rndis_device** %3, align 8
  %10 = load %struct.netvsc_device*, %struct.netvsc_device** %4, align 8
  %11 = load i32, i32* @RNDIS_OID_GEN_LINK_SPEED, align 4
  %12 = call i32 @rndis_filter_query_device(%struct.rndis_device* %9, %struct.netvsc_device* %10, i32 %11, i32* %6, i32* %5)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.rndis_device*, %struct.rndis_device** %3, align 8
  %17 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net_device_context* @netdev_priv(i32 %18)
  store %struct.net_device_context* %19, %struct.net_device_context** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 10000
  %22 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %23 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %15, %2
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

declare dso_local i32 @rndis_filter_query_device(%struct.rndis_device*, %struct.netvsc_device*, i32, i32*, i32*) #1

declare dso_local %struct.net_device_context* @netdev_priv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
