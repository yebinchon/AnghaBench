; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_stat_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_stat_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i64, %struct.TYPE_2__, %struct.i40e_vsi** }
%struct.TYPE_2__ = type { i32 }

@i40e_gstrings_net_stats = common dso_local global i32 0, align 4
@i40e_gstrings_misc_stats = common dso_local global i32 0, align 4
@i40e_gstrings_queue_stats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@i40e_gstrings_veb_stats = common dso_local global i32 0, align 4
@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@i40e_gstrings_veb_tc_stats = common dso_local global i32 0, align 4
@i40e_gstrings_stats = common dso_local global i32 0, align 4
@I40E_MAX_USER_PRIORITY = common dso_local global i32 0, align 4
@i40e_gstrings_pfc_stats = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"stat strings count mismatch!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32*)* @i40e_get_stat_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_get_stat_strings(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i40e_netdev_priv*, align 8
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.i40e_netdev_priv* %11, %struct.i40e_netdev_priv** %5, align 8
  %12 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %5, align 8
  %13 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %12, i32 0, i32 0
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %13, align 8
  store %struct.i40e_vsi* %14, %struct.i40e_vsi** %6, align 8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 0
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %7, align 8
  %18 = load i32*, i32** %4, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i32, i32* @i40e_gstrings_net_stats, align 4
  %20 = call i32 (i32**, i32, ...) @i40e_add_stat_strings(i32** %4, i32 %19)
  %21 = load i32, i32* @i40e_gstrings_misc_stats, align 4
  %22 = call i32 (i32**, i32, ...) @i40e_add_stat_strings(i32** %4, i32 %21)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %36, %2
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32, i32* @i40e_gstrings_queue_stats, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i32**, i32, ...) @i40e_add_stat_strings(i32** %4, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @i40e_gstrings_queue_stats, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i32**, i32, ...) @i40e_add_stat_strings(i32** %4, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %41 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %42 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %41, i32 0, i32 2
  %43 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %42, align 8
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %45 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %43, i64 %46
  %48 = load %struct.i40e_vsi*, %struct.i40e_vsi** %47, align 8
  %49 = icmp ne %struct.i40e_vsi* %40, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %39
  %51 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %52 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %39
  br label %86

57:                                               ; preds = %50
  %58 = load i32, i32* @i40e_gstrings_veb_stats, align 4
  %59 = call i32 (i32**, i32, ...) @i40e_add_stat_strings(i32** %4, i32 %58)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %68, %57
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* @i40e_gstrings_veb_tc_stats, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32**, i32, ...) @i40e_add_stat_strings(i32** %4, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %60

71:                                               ; preds = %60
  %72 = load i32, i32* @i40e_gstrings_stats, align 4
  %73 = call i32 (i32**, i32, ...) @i40e_add_stat_strings(i32** %4, i32 %72)
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %82, %71
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @I40E_MAX_USER_PRIORITY, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* @i40e_gstrings_pfc_stats, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (i32**, i32, ...) @i40e_add_stat_strings(i32** %4, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %74

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %56
  %87 = load i32*, i32** %4, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = ptrtoint i32* %87 to i64
  %90 = ptrtoint i32* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = call i32 @i40e_get_stats_count(%struct.net_device* %93)
  %95 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = icmp ne i64 %92, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @WARN_ONCE(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @i40e_add_stat_strings(i32**, i32, ...) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @i40e_get_stats_count(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
