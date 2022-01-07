; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.vpe_ctx = type { i32 }
%struct.vpe_q_data = type { i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"get %d buffer(s) of size %d\00", align 1
@VPE_LUMA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" and %d\0A\00", align 1
@VPE_CHROMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @vpe_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpe_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vpe_ctx*, align 8
  %13 = alloca %struct.vpe_q_data*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.device** %4, %struct.device*** %10, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %15 = call %struct.vpe_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %14)
  store %struct.vpe_ctx* %15, %struct.vpe_ctx** %12, align 8
  %16 = load %struct.vpe_ctx*, %struct.vpe_ctx** %12, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx* %16, i32 %19)
  store %struct.vpe_q_data* %20, %struct.vpe_q_data** %13, align 8
  %21 = load %struct.vpe_q_data*, %struct.vpe_q_data** %13, align 8
  %22 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %42, %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.vpe_q_data*, %struct.vpe_q_data** %13, align 8
  %32 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %25

45:                                               ; preds = %25
  %46 = load %struct.vpe_ctx*, %struct.vpe_ctx** %12, align 8
  %47 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* @VPE_LUMA, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i32, ...) @vpe_dbg(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %54)
  %56 = load %struct.vpe_q_data*, %struct.vpe_q_data** %13, align 8
  %57 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %69

60:                                               ; preds = %45
  %61 = load %struct.vpe_ctx*, %struct.vpe_ctx** %12, align 8
  %62 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* @VPE_CHROMA, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, i32, ...) @vpe_dbg(i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %60, %45
  ret i32 0
}

declare dso_local %struct.vpe_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx*, i32) #1

declare dso_local i32 @vpe_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
