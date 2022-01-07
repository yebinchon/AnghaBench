; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_rxfh_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_rxfh_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.efx_nic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*, %struct.efx_rss_context*)*, i32 }
%struct.efx_rss_context = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32*, i32)* @efx_ethtool_get_rxfh_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_get_rxfh_context(%struct.net_device* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.efx_nic*, align 8
  %13 = alloca %struct.efx_rss_context*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %15)
  store %struct.efx_nic* %16, %struct.efx_nic** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.efx_nic*, %struct.efx_rss_context*)*, i32 (%struct.efx_nic*, %struct.efx_rss_context*)** %20, align 8
  %22 = icmp ne i32 (%struct.efx_nic*, %struct.efx_rss_context*)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %85

26:                                               ; preds = %5
  %27 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.efx_rss_context* @efx_find_rss_context_entry(%struct.efx_nic* %30, i32 %31)
  store %struct.efx_rss_context* %32, %struct.efx_rss_context** %13, align 8
  %33 = load %struct.efx_rss_context*, %struct.efx_rss_context** %13, align 8
  %34 = icmp ne %struct.efx_rss_context* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %14, align 4
  br label %80

38:                                               ; preds = %26
  %39 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.efx_nic*, %struct.efx_rss_context*)*, i32 (%struct.efx_nic*, %struct.efx_rss_context*)** %42, align 8
  %44 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %45 = load %struct.efx_rss_context*, %struct.efx_rss_context** %13, align 8
  %46 = call i32 %43(%struct.efx_nic* %44, %struct.efx_rss_context* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %80

50:                                               ; preds = %38
  %51 = load i32*, i32** %10, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.efx_rss_context*, %struct.efx_rss_context** %13, align 8
  %62 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcpy(i32* %60, i32 %63, i32 4)
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.efx_rss_context*, %struct.efx_rss_context** %13, align 8
  %71 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %74 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @memcpy(i32* %69, i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %68, %65
  br label %80

80:                                               ; preds = %79, %49, %35
  %81 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  %82 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %80, %23
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.efx_rss_context* @efx_find_rss_context_entry(%struct.efx_nic*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
