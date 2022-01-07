; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_set_rss_vsi_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_set_rss_vsi_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ice_vsi = type { i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ICE_AQ_VSI_Q_OPT_RSS_LUT_PF = common dso_local global i32 0, align 4
@ICE_AQ_VSI_Q_OPT_RSS_TPLZ = common dso_local global i32 0, align 4
@ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unsupported VSI type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown VSI type %d\0A\00", align 1
@ICE_AQ_VSI_Q_OPT_RSS_LUT_S = common dso_local global i32 0, align 4
@ICE_AQ_VSI_Q_OPT_RSS_LUT_M = common dso_local global i32 0, align 4
@ICE_AQ_VSI_Q_OPT_RSS_HASH_S = common dso_local global i32 0, align 4
@ICE_AQ_VSI_Q_OPT_RSS_HASH_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi_ctx*, %struct.ice_vsi*)* @ice_set_rss_vsi_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_set_rss_vsi_ctx(%struct.ice_vsi_ctx* %0, %struct.ice_vsi* %1) #0 {
  %3 = alloca %struct.ice_vsi_ctx*, align 8
  %4 = alloca %struct.ice_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_pf*, align 8
  store %struct.ice_vsi_ctx* %0, %struct.ice_vsi_ctx** %3, align 8
  store %struct.ice_vsi* %1, %struct.ice_vsi** %4, align 8
  %8 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %9 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %8, i32 0, i32 1
  %10 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  store %struct.ice_pf* %10, %struct.ice_pf** %7, align 8
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %12 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %29 [
    i32 129, label %14
    i32 128, label %17
    i32 130, label %20
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @ICE_AQ_VSI_Q_OPT_RSS_LUT_PF, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @ICE_AQ_VSI_Q_OPT_RSS_TPLZ, align 4
  store i32 %16, i32* %6, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* @ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @ICE_AQ_VSI_Q_OPT_RSS_TPLZ, align 4
  store i32 %19, i32* %6, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %22 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %26 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %31 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %35 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %53

38:                                               ; preds = %17, %14
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ICE_AQ_VSI_Q_OPT_RSS_LUT_S, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @ICE_AQ_VSI_Q_OPT_RSS_LUT_M, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ICE_AQ_VSI_Q_OPT_RSS_HASH_S, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* @ICE_AQ_VSI_Q_OPT_RSS_HASH_M, align 4
  %48 = and i32 %46, %47
  %49 = or i32 %43, %48
  %50 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %38, %29, %20
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
