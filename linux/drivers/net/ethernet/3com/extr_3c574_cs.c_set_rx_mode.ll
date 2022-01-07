; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@SetRxFilter = common dso_local global i32 0, align 4
@RxStation = common dso_local global i32 0, align 4
@RxMulticast = common dso_local global i32 0, align 4
@RxBroadcast = common dso_local global i32 0, align 4
@RxProm = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IFF_PROMISC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load i32, i32* @SetRxFilter, align 4
  %15 = load i32, i32* @RxStation, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RxMulticast, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RxBroadcast, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RxProm, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @EL3_CMD, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outw(i32 %22, i64 %26)
  br label %64

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @netdev_mc_empty(%struct.net_device* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_ALLMULTI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32, %28
  %40 = load i32, i32* @SetRxFilter, align 4
  %41 = load i32, i32* @RxStation, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RxMulticast, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @RxBroadcast, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* @EL3_CMD, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outw(i32 %46, i64 %50)
  br label %63

52:                                               ; preds = %32
  %53 = load i32, i32* @SetRxFilter, align 4
  %54 = load i32, i32* @RxStation, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RxBroadcast, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %3, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* @EL3_CMD, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outw(i32 %57, i64 %61)
  br label %63

63:                                               ; preds = %52, %39
  br label %64

64:                                               ; preds = %63, %13
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
