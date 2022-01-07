; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_set_dei_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_set_dei_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { i32, i32, %struct.vpe_q_data*, %struct.TYPE_3__ }
%struct.vpe_q_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.vpe_mmr_adb* }
%struct.vpe_mmr_adb = type { i32* }

@Q_DATA_SRC = common dso_local global i64 0, align 8
@Q_IS_INTERLACED = common dso_local global i32 0, align 4
@VPE_DEI_INTERLACE_BYPASS = common dso_local global i32 0, align 4
@VPE_DEI_HEIGHT_SHIFT = common dso_local global i32 0, align 4
@VPE_DEI_WIDTH_SHIFT = common dso_local global i32 0, align 4
@VPE_DEI_FIELD_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpe_ctx*)* @set_dei_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dei_regs(%struct.vpe_ctx* %0) #0 {
  %2 = alloca %struct.vpe_ctx*, align 8
  %3 = alloca %struct.vpe_mmr_adb*, align 8
  %4 = alloca %struct.vpe_q_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %2, align 8
  %10 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %12, align 8
  store %struct.vpe_mmr_adb* %13, %struct.vpe_mmr_adb** %3, align 8
  %14 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %14, i32 0, i32 2
  %16 = load %struct.vpe_q_data*, %struct.vpe_q_data** %15, align 8
  %17 = load i64, i64* @Q_DATA_SRC, align 8
  %18 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %16, i64 %17
  store %struct.vpe_q_data* %18, %struct.vpe_q_data** %4, align 8
  %19 = load %struct.vpe_q_data*, %struct.vpe_q_data** %4, align 8
  %20 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.vpe_q_data*, %struct.vpe_q_data** %4, align 8
  %24 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %3, align 8
  %28 = getelementptr inbounds %struct.vpe_mmr_adb, %struct.vpe_mmr_adb* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32* %30, i32** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %31 = load %struct.vpe_q_data*, %struct.vpe_q_data** %4, align 8
  %32 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @Q_IS_INTERLACED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %1
  store i32 0, i32* %8, align 4
  %43 = load i32, i32* @VPE_DEI_INTERLACE_BYPASS, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = mul i32 %48, 2
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %49, %47 ], [ %51, %50 ]
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @VPE_DEI_HEIGHT_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @VPE_DEI_WIDTH_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = load i32, i32* @VPE_DEI_FIELD_FLUSH, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
