; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nicvf = type { i32, %struct.TYPE_2__*, %struct.nicvf** }
%struct.TYPE_2__ = type { i32, i32 }

@ETH_SS_STATS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nicvf_n_queue_stats = common dso_local global i32 0, align 4
@nicvf_n_hw_stats = common dso_local global i32 0, align 4
@nicvf_n_drv_stats = common dso_local global i32 0, align 4
@BGX_RX_STATS_COUNT = common dso_local global i32 0, align 4
@BGX_TX_STATS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nicvf_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nicvf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nicvf*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.nicvf* @netdev_priv(%struct.net_device* %10)
  store %struct.nicvf* %11, %struct.nicvf** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ETH_SS_STATS, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %78

18:                                               ; preds = %2
  %19 = load i32, i32* @nicvf_n_queue_stats, align 4
  %20 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %21 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %26 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %24, %29
  %31 = mul nsw i32 %19, %30
  store i32 %31, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %65, %18
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %35 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %32
  %39 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %40 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %39, i32 0, i32 2
  %41 = load %struct.nicvf**, %struct.nicvf*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.nicvf*, %struct.nicvf** %41, i64 %43
  %45 = load %struct.nicvf*, %struct.nicvf** %44, align 8
  store %struct.nicvf* %45, %struct.nicvf** %9, align 8
  %46 = load %struct.nicvf*, %struct.nicvf** %9, align 8
  %47 = icmp ne %struct.nicvf* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %65

49:                                               ; preds = %38
  %50 = load i32, i32* @nicvf_n_queue_stats, align 4
  %51 = load %struct.nicvf*, %struct.nicvf** %9, align 8
  %52 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nicvf*, %struct.nicvf** %9, align 8
  %57 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %55, %60
  %62 = mul nsw i32 %50, %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %49, %48
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %32

68:                                               ; preds = %32
  %69 = load i32, i32* @nicvf_n_hw_stats, align 4
  %70 = load i32, i32* @nicvf_n_drv_stats, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* @BGX_RX_STATS_COUNT, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* @BGX_TX_STATS_COUNT, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %68, %15
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
