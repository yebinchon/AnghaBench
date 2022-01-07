; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_configure_link_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_configure_link_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*, i32, i32)* @slic_configure_link_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_configure_link_locked(%struct.slic_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.slic_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  store %struct.slic_device* %0, %struct.slic_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %9 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %12 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %18 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %59

23:                                               ; preds = %16, %3
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %26 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %29 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %31 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SPEED_UNKNOWN, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %23
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = call i64 @netif_carrier_ok(%struct.net_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = call i32 @netif_carrier_off(%struct.net_device* %40)
  br label %42

42:                                               ; preds = %39, %35
  br label %59

43:                                               ; preds = %23
  %44 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %45 = call i32 @slic_configure_mac(%struct.slic_device* %44)
  %46 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %47 = call i32 @slic_configure_xmt(%struct.slic_device* %46)
  %48 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %49 = call i32 @slic_configure_rcv(%struct.slic_device* %48)
  %50 = load %struct.slic_device*, %struct.slic_device** %4, align 8
  %51 = call i32 @slic_flush_write(%struct.slic_device* %50)
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = call i64 @netif_carrier_ok(%struct.net_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %43
  %56 = load %struct.net_device*, %struct.net_device** %7, align 8
  %57 = call i32 @netif_carrier_on(%struct.net_device* %56)
  br label %58

58:                                               ; preds = %55, %43
  br label %59

59:                                               ; preds = %22, %58, %42
  ret void
}

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @slic_configure_mac(%struct.slic_device*) #1

declare dso_local i32 @slic_configure_xmt(%struct.slic_device*) #1

declare dso_local i32 @slic_configure_rcv(%struct.slic_device*) #1

declare dso_local i32 @slic_flush_write(%struct.slic_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
