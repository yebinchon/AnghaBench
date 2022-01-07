; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ef4_nic = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ef4_nic*, i32*)* }

@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@EF4_ETHTOOL_SW_STAT_COUNT = common dso_local global i32 0, align 4
@ef4_sw_stat_desc = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @ef4_ethtool_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_ethtool_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ef4_nic*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %9)
  store %struct.ef4_nic* %10, %struct.ef4_nic** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %67 [
    i32 129, label %12
    i32 128, label %63
  ]

12:                                               ; preds = %3
  %13 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %14 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ef4_nic*, i32*)*, i32 (%struct.ef4_nic*, i32*)** %16, align 8
  %18 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 %17(%struct.ef4_nic* %18, i32* %19)
  %21 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32*, i32** %6, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %45, %12
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @EF4_ETHTOOL_SW_STAT_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ef4_sw_stat_desc, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %44 = call i32 @strlcpy(i32* %36, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load i32, i32* @EF4_ETHTOOL_SW_STAT_COUNT, align 4
  %50 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32*, i32** %6, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %6, align 8
  %55 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @ef4_describe_per_queue_stats(%struct.ef4_nic* %55, i32* %56)
  %58 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32*, i32** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %6, align 8
  br label %68

63:                                               ; preds = %3
  %64 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @ef4_ethtool_fill_self_tests(%struct.ef4_nic* %64, i32* null, i32* %65, i32* null)
  br label %68

67:                                               ; preds = %3
  br label %68

68:                                               ; preds = %67, %63, %48
  ret void
}

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32*, i32, i32) #1

declare dso_local i32 @ef4_describe_per_queue_stats(%struct.ef4_nic*, i32*) #1

declare dso_local i32 @ef4_ethtool_fill_self_tests(%struct.ef4_nic*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
