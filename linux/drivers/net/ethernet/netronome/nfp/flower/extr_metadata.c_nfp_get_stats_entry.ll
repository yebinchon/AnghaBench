; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_get_stats_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_get_stats_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.circ_buf }
%struct.circ_buf = type { i64, i64, i32* }

@NFP_FL_STAT_ID_STAT = common dso_local global i32 0, align 4
@NFP_FL_STAT_ID_MU_NUM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NFP_FL_STATS_ELEM_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i32*)* @nfp_get_stats_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_get_stats_entry(%struct.nfp_app* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.circ_buf*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %11 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %10, i32 0, i32 0
  %12 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %11, align 8
  store %struct.nfp_flower_priv* %12, %struct.nfp_flower_priv** %6, align 8
  %13 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %14 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.circ_buf* %15, %struct.circ_buf** %9, align 8
  %16 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %17 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %20 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %2
  %25 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %26 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %29 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %34 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %39 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %32, %24
  %41 = load i32, i32* @NFP_FL_STAT_ID_STAT, align 4
  %42 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %43 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, 1
  %47 = call i32 @FIELD_PREP(i32 %41, i64 %46)
  %48 = load i32, i32* @NFP_FL_STAT_ID_MU_NUM, align 4
  %49 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %50 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @FIELD_PREP(i32 %48, i64 %51)
  %53 = or i32 %47, %52
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %56 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  store i32 0, i32* %3, align 4
  br label %108

59:                                               ; preds = %2
  %60 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %64 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %108

72:                                               ; preds = %59
  %73 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %74 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %77 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* @NFP_FL_STATS_ELEM_RS, align 4
  %81 = call i32 @memcpy(i32* %8, i32* %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %85 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %88 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* @NFP_FL_STATS_ELEM_RS, align 4
  %92 = call i32 @memcpy(i32* %90, i32* %7, i32 %91)
  %93 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %94 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @NFP_FL_STATS_ELEM_RS, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %95, %97
  %99 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %100 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @NFP_FL_STATS_ELEM_RS, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = urem i64 %98, %104
  %106 = load %struct.circ_buf*, %struct.circ_buf** %9, align 8
  %107 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %72, %67, %40
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @FIELD_PREP(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
