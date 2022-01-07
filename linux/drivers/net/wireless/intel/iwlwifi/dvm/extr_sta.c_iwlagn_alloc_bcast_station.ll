; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwlagn_alloc_bcast_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwlagn_alloc_bcast_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iwl_link_quality_cmd*, i32 }
%struct.iwl_link_quality_cmd = type { i32 }
%struct.iwl_rxon_context = type { i32 }

@iwl_bcast_addr = common dso_local global i32 0, align 4
@IWL_INVALID_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Unable to prepare broadcast station\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWL_STA_DRIVER_ACTIVE = common dso_local global i32 0, align 4
@IWL_STA_BCAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Unable to initialize rate scaling for bcast station.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_alloc_bcast_station(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca %struct.iwl_link_quality_cmd*, align 8
  %7 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %12 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %13 = load i32, i32* @iwl_bcast_addr, align 4
  %14 = call i64 @iwl_prep_station(%struct.iwl_priv* %11, %struct.iwl_rxon_context* %12, i32 %13, i32 0, i32* null)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @IWL_INVALID_STATION, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %20 = call i32 @IWL_ERR(%struct.iwl_priv* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %73

26:                                               ; preds = %2
  %27 = load i32, i32* @IWL_STA_DRIVER_ACTIVE, align 4
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %27
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @IWL_STA_BCAST, align 4
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %38 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %36
  store i32 %44, i32* %42, align 8
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_bh(i32* %46)
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %49 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call %struct.iwl_link_quality_cmd* @iwl_sta_alloc_lq(%struct.iwl_priv* %48, %struct.iwl_rxon_context* %49, i64 %50)
  store %struct.iwl_link_quality_cmd* %51, %struct.iwl_link_quality_cmd** %6, align 8
  %52 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %6, align 8
  %53 = icmp ne %struct.iwl_link_quality_cmd* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %26
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %56 = call i32 @IWL_ERR(%struct.iwl_priv* %55, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %73

59:                                               ; preds = %26
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 0
  %62 = call i32 @spin_lock_bh(i32* %61)
  %63 = load %struct.iwl_link_quality_cmd*, %struct.iwl_link_quality_cmd** %6, align 8
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %65 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store %struct.iwl_link_quality_cmd* %63, %struct.iwl_link_quality_cmd** %69, align 8
  %70 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %71 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_bh(i32* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %59, %54, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @iwl_prep_station(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32, i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.iwl_link_quality_cmd* @iwl_sta_alloc_lq(%struct.iwl_priv*, %struct.iwl_rxon_context*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
