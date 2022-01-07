; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.enic = type { i32 }
%struct.vnic_stats = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@enic_n_tx_stats = common dso_local global i32 0, align 4
@enic_tx_stats = common dso_local global %struct.TYPE_4__* null, align 8
@enic_n_rx_stats = common dso_local global i32 0, align 4
@enic_rx_stats = common dso_local global %struct.TYPE_5__* null, align 8
@enic_n_gen_stats = common dso_local global i32 0, align 4
@enic_gen_stats = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i8**)* @enic_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i8** %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.enic*, align 8
  %8 = alloca %struct.vnic_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i8** %2, i8*** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.enic* @netdev_priv(%struct.net_device* %11)
  store %struct.enic* %12, %struct.enic** %7, align 8
  %13 = load %struct.enic*, %struct.enic** %7, align 8
  %14 = call i32 @enic_dev_stats_dump(%struct.enic* %13, %struct.vnic_stats** %8)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %86

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @enic_n_tx_stats, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load %struct.vnic_stats*, %struct.vnic_stats** %8, align 8
  %27 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %26, i32 0, i32 1
  %28 = bitcast i32* %27 to i8**
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @enic_tx_stats, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i8*, i8** %28, i64 %34
  %36 = load i8*, i8** %35, align 4
  %37 = load i8**, i8*** %6, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %6, align 8
  store i8* %36, i8** %37, align 8
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %21

42:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @enic_n_rx_stats, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load %struct.vnic_stats*, %struct.vnic_stats** %8, align 8
  %49 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %48, i32 0, i32 0
  %50 = bitcast i32* %49 to i8**
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @enic_rx_stats, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8*, i8** %50, i64 %56
  %58 = load i8*, i8** %57, align 4
  %59 = load i8**, i8*** %6, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %6, align 8
  store i8* %58, i8** %59, align 8
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %43

64:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @enic_n_gen_stats, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load %struct.enic*, %struct.enic** %7, align 8
  %71 = getelementptr inbounds %struct.enic, %struct.enic* %70, i32 0, i32 0
  %72 = bitcast i32* %71 to i8**
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @enic_gen_stats, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8*, i8** %72, i64 %78
  %80 = load i8*, i8** %79, align 4
  %81 = load i8**, i8*** %6, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %6, align 8
  store i8* %80, i8** %81, align 8
  br label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %9, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %65

86:                                               ; preds = %19, %65
  ret void
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enic_dev_stats_dump(%struct.enic*, %struct.vnic_stats**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
