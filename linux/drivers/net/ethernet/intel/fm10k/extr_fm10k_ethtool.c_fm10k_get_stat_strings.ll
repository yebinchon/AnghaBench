; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_get_stat_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_get_stat_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fm10k_intfc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@fm10k_gstrings_net_stats = common dso_local global i32 0, align 4
@fm10k_gstrings_global_stats = common dso_local global i32 0, align 4
@fm10k_gstrings_mbx_stats = common dso_local global i32 0, align 4
@fm10k_mac_vf = common dso_local global i64 0, align 8
@fm10k_gstrings_pf_stats = common dso_local global i32 0, align 4
@fm10k_gstrings_queue_stats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32*)* @fm10k_get_stat_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_get_stat_strings(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fm10k_intfc*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %7)
  store %struct.fm10k_intfc* %8, %struct.fm10k_intfc** %5, align 8
  %9 = load i32, i32* @fm10k_gstrings_net_stats, align 4
  %10 = call i32 (i32**, i32, ...) @fm10k_add_stat_strings(i32** %4, i32 %9)
  %11 = load i32, i32* @fm10k_gstrings_global_stats, align 4
  %12 = call i32 (i32**, i32, ...) @fm10k_add_stat_strings(i32** %4, i32 %11)
  %13 = load i32, i32* @fm10k_gstrings_mbx_stats, align 4
  %14 = call i32 (i32**, i32, ...) @fm10k_add_stat_strings(i32** %4, i32 %13)
  %15 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %16 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @fm10k_mac_vf, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @fm10k_gstrings_pf_stats, align 4
  %24 = call i32 (i32**, i32, ...) @fm10k_add_stat_strings(i32** %4, i32 %23)
  br label %25

25:                                               ; preds = %22, %2
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %29 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %27, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load i32, i32* @fm10k_gstrings_queue_stats, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32**, i32, ...) @fm10k_add_stat_strings(i32** %4, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @fm10k_gstrings_queue_stats, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32**, i32, ...) @fm10k_add_stat_strings(i32** %4, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %26

44:                                               ; preds = %26
  ret void
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fm10k_add_stat_strings(i32**, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
