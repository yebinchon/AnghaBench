; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_mask_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_mask_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, %struct.circ_buf }
%struct.circ_buf = type { i64, i64, i64* }

@NFP_FLOWER_MASK_ENTRY_RS = common dso_local global i32 0, align 4
@NFP_FLOWER_MASK_ELEMENT_RS = common dso_local global i32 0, align 4
@NFP_FL_MASK_REUSE_TIME_NS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i64*)* @nfp_mask_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_mask_alloc(%struct.nfp_app* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.circ_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %12 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %11, i32 0, i32 0
  %13 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %12, align 8
  store %struct.nfp_flower_priv* %13, %struct.nfp_flower_priv** %6, align 8
  %14 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %15 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store %struct.circ_buf* %16, %struct.circ_buf** %8, align 8
  %17 = load i32, i32* @NFP_FLOWER_MASK_ENTRY_RS, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %27 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %5, align 8
  store i64 %29, i64* %30, align 8
  %31 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %32 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  store i32 0, i32* %3, align 4
  br label %100

36:                                               ; preds = %2
  %37 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %38 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %41 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %95

45:                                               ; preds = %36
  %46 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %47 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %50 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i32, i32* @NFP_FLOWER_MASK_ELEMENT_RS, align 4
  %54 = call i32 @memcpy(i64* %9, i64* %52, i32 %53)
  %55 = load i64, i64* %9, align 8
  %56 = load i64*, i64** %5, align 8
  store i64 %55, i64* %56, align 8
  %57 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %58 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NFP_FL_MASK_REUSE_TIME_NS, align 4
  %66 = call i32 @ktime_add_ns(i32 %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = call i32 (...) @ktime_get()
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @ktime_before(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %45
  br label %95

72:                                               ; preds = %45
  %73 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %74 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %77 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i32, i32* @NFP_FLOWER_MASK_ELEMENT_RS, align 4
  %81 = call i32 @memcpy(i64* %79, i64* %10, i32 %80)
  %82 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %83 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @NFP_FLOWER_MASK_ELEMENT_RS, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %84, %86
  %88 = load i32, i32* @NFP_FLOWER_MASK_ENTRY_RS, align 4
  %89 = load i32, i32* @NFP_FLOWER_MASK_ELEMENT_RS, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = urem i64 %87, %91
  %93 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %94 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  store i32 0, i32* %3, align 4
  br label %100

95:                                               ; preds = %71, %44
  %96 = load i64, i64* %10, align 8
  %97 = load i64*, i64** %5, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %72, %25
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i64 @ktime_before(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
