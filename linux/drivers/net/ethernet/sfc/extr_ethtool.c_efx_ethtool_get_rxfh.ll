; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.efx_nic = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.efx_nic*)*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32*)* @efx_ethtool_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_get_rxfh(%struct.net_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.efx_nic*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %12)
  store %struct.efx_nic* %13, %struct.efx_nic** %10, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %17, align 8
  %19 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %20 = call i32 %18(%struct.efx_nic* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %57

25:                                               ; preds = %4
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %37 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32* %35, i32 %39, i32 4)
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %47 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %51 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i32* %45, i32 %49, i32 %54)
  br label %56

56:                                               ; preds = %44, %41
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
