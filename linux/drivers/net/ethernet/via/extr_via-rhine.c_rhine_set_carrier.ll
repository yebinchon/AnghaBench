; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_set_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_set_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_if_info = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.rhine_private = type { i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"force_media %d, carrier %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_if_info*)* @rhine_set_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rhine_set_carrier(%struct.mii_if_info* %0) #0 {
  %2 = alloca %struct.mii_if_info*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rhine_private*, align 8
  store %struct.mii_if_info* %0, %struct.mii_if_info** %2, align 8
  %5 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %6 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %5, i32 0, i32 1
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.rhine_private* @netdev_priv(%struct.net_device* %8)
  store %struct.rhine_private* %9, %struct.rhine_private** %4, align 8
  %10 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %11 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @netif_carrier_ok(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @netif_carrier_on(%struct.net_device* %19)
  br label %21

21:                                               ; preds = %18, %14
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @rhine_check_media(%struct.net_device* %23, i32 0)
  %25 = load %struct.rhine_private*, %struct.rhine_private** %4, align 8
  %26 = load i32, i32* @link, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load %struct.mii_if_info*, %struct.mii_if_info** %2, align 8
  %29 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @netif_carrier_ok(%struct.net_device* %31)
  %33 = call i32 @netif_info(%struct.rhine_private* %25, i32 %26, %struct.net_device* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  ret void
}

declare dso_local %struct.rhine_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @rhine_check_media(%struct.net_device*, i32) #1

declare dso_local i32 @netif_info(%struct.rhine_private*, i32, %struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
