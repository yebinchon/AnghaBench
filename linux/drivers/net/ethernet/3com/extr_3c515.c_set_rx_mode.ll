; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@corkscrew_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: Setting promiscuous mode.\0A\00", align 1
@SetRxFilter = common dso_local global i16 0, align 2
@RxStation = common dso_local global i16 0, align 2
@RxMulticast = common dso_local global i16 0, align 2
@RxBroadcast = common dso_local global i16 0, align 2
@RxProm = common dso_local global i16 0, align 2
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IFF_PROMISC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load i32, i32* @corkscrew_debug, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %14
  %23 = load i16, i16* @SetRxFilter, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* @RxStation, align 2
  %26 = zext i16 %25 to i32
  %27 = or i32 %24, %26
  %28 = load i16, i16* @RxMulticast, align 2
  %29 = zext i16 %28 to i32
  %30 = or i32 %27, %29
  %31 = load i16, i16* @RxBroadcast, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %30, %32
  %34 = load i16, i16* @RxProm, align 2
  %35 = zext i16 %34 to i32
  %36 = or i32 %33, %35
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %4, align 2
  br label %73

38:                                               ; preds = %1
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = call i32 @netdev_mc_empty(%struct.net_device* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFF_ALLMULTI, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42, %38
  %50 = load i16, i16* @SetRxFilter, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @RxStation, align 2
  %53 = zext i16 %52 to i32
  %54 = or i32 %51, %53
  %55 = load i16, i16* @RxMulticast, align 2
  %56 = zext i16 %55 to i32
  %57 = or i32 %54, %56
  %58 = load i16, i16* @RxBroadcast, align 2
  %59 = zext i16 %58 to i32
  %60 = or i32 %57, %59
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %4, align 2
  br label %72

62:                                               ; preds = %42
  %63 = load i16, i16* @SetRxFilter, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* @RxStation, align 2
  %66 = zext i16 %65 to i32
  %67 = or i32 %64, %66
  %68 = load i16, i16* @RxBroadcast, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 %67, %69
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %4, align 2
  br label %72

72:                                               ; preds = %62, %49
  br label %73

73:                                               ; preds = %72, %22
  %74 = load i16, i16* %4, align 2
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @EL3_CMD, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outw(i16 zeroext %74, i64 %78)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
