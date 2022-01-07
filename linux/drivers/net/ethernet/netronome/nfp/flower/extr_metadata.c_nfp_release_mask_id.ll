; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_release_mask_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_release_mask_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.circ_buf }
%struct.circ_buf = type { i64, i32*, i32 }

@NFP_FLOWER_MASK_ENTRY_RS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NFP_FLOWER_MASK_ELEMENT_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i64)* @nfp_release_mask_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_release_mask_id(%struct.nfp_app* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca %struct.circ_buf*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %8, i32 0, i32 0
  %10 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  store %struct.nfp_flower_priv* %10, %struct.nfp_flower_priv** %6, align 8
  %11 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %12 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.circ_buf* %13, %struct.circ_buf** %7, align 8
  %14 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %15 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %18 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NFP_FLOWER_MASK_ENTRY_RS, align 4
  %21 = call i64 @CIRC_SPACE(i64 %16, i32 %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOBUFS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %56

26:                                               ; preds = %2
  %27 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %28 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %31 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* @NFP_FLOWER_MASK_ELEMENT_RS, align 4
  %35 = call i32 @memcpy(i32* %33, i64* %5, i32 %34)
  %36 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %37 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @NFP_FLOWER_MASK_ELEMENT_RS, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %38, %40
  %42 = load i32, i32* @NFP_FLOWER_MASK_ENTRY_RS, align 4
  %43 = load i32, i32* @NFP_FLOWER_MASK_ELEMENT_RS, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = urem i64 %41, %45
  %47 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %48 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = call i32 (...) @ktime_get()
  %50 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %51 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %49, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %26, %23
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @CIRC_SPACE(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
