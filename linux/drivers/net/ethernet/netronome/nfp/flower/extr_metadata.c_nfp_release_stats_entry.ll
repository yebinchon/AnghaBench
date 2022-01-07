; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_release_stats_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_release_stats_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32*, i32 }

@NFP_FL_STATS_ELEM_RS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i32)* @nfp_release_stats_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_release_stats_entry(%struct.nfp_app* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca %struct.circ_buf*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %8, i32 0, i32 0
  %10 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  store %struct.nfp_flower_priv* %10, %struct.nfp_flower_priv** %6, align 8
  %11 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %12 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.circ_buf* %13, %struct.circ_buf** %7, align 8
  %14 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %15 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %18 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NFP_FL_STATS_ELEM_RS, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @NFP_FL_STATS_ELEM_RS, align 4
  %26 = sub nsw i32 %24, %25
  %27 = add nsw i32 %26, 1
  %28 = call i32 @CIRC_SPACE(i64 %16, i32 %19, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOBUFS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %58

33:                                               ; preds = %2
  %34 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %35 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %38 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* @NFP_FL_STATS_ELEM_RS, align 4
  %42 = call i32 @memcpy(i32* %40, i32* %5, i32 %41)
  %43 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %44 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @NFP_FL_STATS_ELEM_RS, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %50 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NFP_FL_STATS_ELEM_RS, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = urem i64 %48, %54
  %56 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %33, %30
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @CIRC_SPACE(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
