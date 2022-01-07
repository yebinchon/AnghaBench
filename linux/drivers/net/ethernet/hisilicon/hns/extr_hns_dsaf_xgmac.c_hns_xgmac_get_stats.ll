; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.mac_driver = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mac_hw_stats }
%struct.mac_hw_stats = type { i32 }

@g_xgmac_stats_string = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @hns_xgmac_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_xgmac_get_stats(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mac_driver*, align 8
  %8 = alloca %struct.mac_hw_stats*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  store i32* %9, i32** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.mac_driver*
  store %struct.mac_driver* %11, %struct.mac_driver** %7, align 8
  store %struct.mac_hw_stats* null, %struct.mac_hw_stats** %8, align 8
  %12 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %13 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.mac_hw_stats* %15, %struct.mac_hw_stats** %8, align 8
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %32, %2
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_xgmac_stats_string, align 8
  %19 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %18)
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.mac_hw_stats*, %struct.mac_hw_stats** %8, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_xgmac_stats_string, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DSAF_STATS_READ(%struct.mac_hw_stats* %22, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %21
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %16

35:                                               ; preds = %16
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @DSAF_STATS_READ(%struct.mac_hw_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
