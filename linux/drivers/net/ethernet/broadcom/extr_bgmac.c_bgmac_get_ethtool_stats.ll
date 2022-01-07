; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac_stat = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.bgmac = type { i32 }

@BGMAC_STATS_LEN = common dso_local global i32 0, align 4
@bgmac_get_strings_stats = common dso_local global %struct.bgmac_stat* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @bgmac_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bgmac*, align 8
  %8 = alloca %struct.bgmac_stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.bgmac* @netdev_priv(%struct.net_device* %11)
  store %struct.bgmac* %12, %struct.bgmac** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %55

17:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %52, %17
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @BGMAC_STATS_LEN, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load %struct.bgmac_stat*, %struct.bgmac_stat** @bgmac_get_strings_stats, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bgmac_stat, %struct.bgmac_stat* %23, i64 %25
  store %struct.bgmac_stat* %26, %struct.bgmac_stat** %8, align 8
  store i32 0, i32* %10, align 4
  %27 = load %struct.bgmac_stat*, %struct.bgmac_stat** %8, align 8
  %28 = getelementptr inbounds %struct.bgmac_stat, %struct.bgmac_stat* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %33 = load %struct.bgmac_stat*, %struct.bgmac_stat** %8, align 8
  %34 = getelementptr inbounds %struct.bgmac_stat, %struct.bgmac_stat* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 4
  %37 = call i32 @bgmac_read(%struct.bgmac* %32, i64 %36)
  %38 = shl i32 %37, 32
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %31, %22
  %40 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %41 = load %struct.bgmac_stat*, %struct.bgmac_stat** %8, align 8
  %42 = getelementptr inbounds %struct.bgmac_stat, %struct.bgmac_stat* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @bgmac_read(%struct.bgmac* %40, i64 %43)
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %18

55:                                               ; preds = %16, %18
  ret void
}

declare dso_local %struct.bgmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bgmac_read(%struct.bgmac*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
