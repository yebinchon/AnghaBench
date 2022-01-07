; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_set_cfg_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_set_cfg_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.vpe_mmr_adb* }
%struct.vpe_mmr_adb = type { i32*, i32*, i32* }
%struct.TYPE_4__ = type { %struct.vpe_fmt* }
%struct.vpe_fmt = type { i64 }

@Q_DATA_SRC = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@VPE_US_MODE_MASK = common dso_local global i32 0, align 4
@VPE_US_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpe_ctx*)* @set_cfg_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cfg_modes(%struct.vpe_ctx* %0) #0 {
  %2 = alloca %struct.vpe_ctx*, align 8
  %3 = alloca %struct.vpe_fmt*, align 8
  %4 = alloca %struct.vpe_mmr_adb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %2, align 8
  %9 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i64, i64* @Q_DATA_SRC, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.vpe_fmt*, %struct.vpe_fmt** %14, align 8
  store %struct.vpe_fmt* %15, %struct.vpe_fmt** %3, align 8
  %16 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %18, align 8
  store %struct.vpe_mmr_adb* %19, %struct.vpe_mmr_adb** %4, align 8
  %20 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %4, align 8
  %21 = getelementptr inbounds %struct.vpe_mmr_adb, %struct.vpe_mmr_adb* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32* %23, i32** %5, align 8
  %24 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %4, align 8
  %25 = getelementptr inbounds %struct.vpe_mmr_adb, %struct.vpe_mmr_adb* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32* %27, i32** %6, align 8
  %28 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %4, align 8
  %29 = getelementptr inbounds %struct.vpe_mmr_adb, %struct.vpe_mmr_adb* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32* %31, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %32 = load %struct.vpe_fmt*, %struct.vpe_fmt** %3, align 8
  %33 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @VPE_US_MODE_MASK, align 4
  %42 = load i32, i32* @VPE_US_MODE_SHIFT, align 4
  %43 = call i32 @write_field(i32* %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @VPE_US_MODE_MASK, align 4
  %47 = load i32, i32* @VPE_US_MODE_SHIFT, align 4
  %48 = call i32 @write_field(i32* %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @VPE_US_MODE_MASK, align 4
  %52 = load i32, i32* @VPE_US_MODE_SHIFT, align 4
  %53 = call i32 @write_field(i32* %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  ret void
}

declare dso_local i32 @write_field(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
