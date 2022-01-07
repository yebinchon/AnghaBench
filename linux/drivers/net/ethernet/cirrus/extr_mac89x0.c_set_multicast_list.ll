; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_mac89x0.c_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_mac89x0.c_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_local = type { i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@RX_ALL_ACCEPT = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@RX_MULTCAST_ACCEPT = common dso_local global i32 0, align 4
@PP_RxCTL = common dso_local global i32 0, align 4
@DEF_RX_ACCEPT = common dso_local global i32 0, align 4
@PP_RxCFG = common dso_local global i32 0, align 4
@RX_CRC_ERROR_ENBL = common dso_local global i32 0, align 4
@RX_RUNT_ENBL = common dso_local global i32 0, align 4
@RX_EXTRA_DATA_ENBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.net_local* @netdev_priv(%struct.net_device* %4)
  store %struct.net_local* %5, %struct.net_local** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IFF_PROMISC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @RX_ALL_ACCEPT, align 4
  %14 = load %struct.net_local*, %struct.net_local** %3, align 8
  %15 = getelementptr inbounds %struct.net_local, %struct.net_local* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_ALLMULTI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @netdev_mc_empty(%struct.net_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23, %16
  %28 = load i32, i32* @RX_MULTCAST_ACCEPT, align 4
  %29 = load %struct.net_local*, %struct.net_local** %3, align 8
  %30 = getelementptr inbounds %struct.net_local, %struct.net_local* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load %struct.net_local*, %struct.net_local** %3, align 8
  %33 = getelementptr inbounds %struct.net_local, %struct.net_local* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %27
  br label %35

35:                                               ; preds = %34, %12
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i32, i32* @PP_RxCTL, align 4
  %38 = load i32, i32* @DEF_RX_ACCEPT, align 4
  %39 = load %struct.net_local*, %struct.net_local** %3, align 8
  %40 = getelementptr inbounds %struct.net_local, %struct.net_local* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  %43 = call i32 @writereg(%struct.net_device* %36, i32 %37, i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i32, i32* @PP_RxCFG, align 4
  %46 = load %struct.net_local*, %struct.net_local** %3, align 8
  %47 = getelementptr inbounds %struct.net_local, %struct.net_local* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_local*, %struct.net_local** %3, align 8
  %50 = getelementptr inbounds %struct.net_local, %struct.net_local* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RX_ALL_ACCEPT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %35
  %55 = load i32, i32* @RX_CRC_ERROR_ENBL, align 4
  %56 = load i32, i32* @RX_RUNT_ENBL, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RX_EXTRA_DATA_ENBL, align 4
  %59 = or i32 %57, %58
  br label %61

60:                                               ; preds = %35
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi i32 [ %59, %54 ], [ 0, %60 ]
  %63 = or i32 %48, %62
  %64 = call i32 @writereg(%struct.net_device* %44, i32 %45, i32 %63)
  ret void
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @writereg(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
