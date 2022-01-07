; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_rtl8150.c_rtl8150_set_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_rtl8150.c_rtl8150_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: promiscuous mode\0A\00", align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: allmulti set\0A\00", align 1
@RCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8150_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8150_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i32* @netdev_priv(%struct.net_device* %5)
  store i32* %6, i32** %3, align 8
  store i32 158, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_PROMISC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 2
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_info(i32* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %50

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @netdev_mc_empty(%struct.net_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_ALLMULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %28, %24
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 65534
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, 2
  store i32 %39, i32* %4, align 4
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 2
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %49

46:                                               ; preds = %28
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 252
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %35
  br label %50

50:                                               ; preds = %49, %15
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @RCR, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @async_set_registers(i32* %51, i32 %52, i32 4, i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @netif_wake_queue(%struct.net_device* %55)
  ret void
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @async_set_registers(i32*, i32, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
