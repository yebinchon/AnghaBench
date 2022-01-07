; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_ipi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_ipi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vpu = type { i32*, i32, i32, %struct.vpu_ipi_desc*, %struct.share_obj* }
%struct.vpu_ipi_desc = type { i32, i32 (i32, i32, i32)* }
%struct.share_obj = type { i64, i32, i32 }

@IPI_MAX = common dso_local global i64 0, align 8
@IPI_VPU_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"No such ipi id = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_vpu*)* @vpu_ipi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpu_ipi_handler(%struct.mtk_vpu* %0) #0 {
  %2 = alloca %struct.mtk_vpu*, align 8
  %3 = alloca %struct.share_obj*, align 8
  %4 = alloca %struct.vpu_ipi_desc*, align 8
  store %struct.mtk_vpu* %0, %struct.mtk_vpu** %2, align 8
  %5 = load %struct.mtk_vpu*, %struct.mtk_vpu** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %5, i32 0, i32 4
  %7 = load %struct.share_obj*, %struct.share_obj** %6, align 8
  store %struct.share_obj* %7, %struct.share_obj** %3, align 8
  %8 = load %struct.mtk_vpu*, %struct.mtk_vpu** %2, align 8
  %9 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %8, i32 0, i32 3
  %10 = load %struct.vpu_ipi_desc*, %struct.vpu_ipi_desc** %9, align 8
  store %struct.vpu_ipi_desc* %10, %struct.vpu_ipi_desc** %4, align 8
  %11 = load %struct.share_obj*, %struct.share_obj** %3, align 8
  %12 = getelementptr inbounds %struct.share_obj, %struct.share_obj* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IPI_MAX, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %1
  %17 = load %struct.vpu_ipi_desc*, %struct.vpu_ipi_desc** %4, align 8
  %18 = load %struct.share_obj*, %struct.share_obj** %3, align 8
  %19 = getelementptr inbounds %struct.share_obj, %struct.share_obj* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.vpu_ipi_desc, %struct.vpu_ipi_desc* %17, i64 %20
  %22 = getelementptr inbounds %struct.vpu_ipi_desc, %struct.vpu_ipi_desc* %21, i32 0, i32 1
  %23 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %22, align 8
  %24 = icmp ne i32 (i32, i32, i32)* %23, null
  br i1 %24, label %25, label %64

25:                                               ; preds = %16
  %26 = load %struct.vpu_ipi_desc*, %struct.vpu_ipi_desc** %4, align 8
  %27 = load %struct.share_obj*, %struct.share_obj** %3, align 8
  %28 = getelementptr inbounds %struct.share_obj, %struct.share_obj* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.vpu_ipi_desc, %struct.vpu_ipi_desc* %26, i64 %29
  %31 = getelementptr inbounds %struct.vpu_ipi_desc, %struct.vpu_ipi_desc* %30, i32 0, i32 1
  %32 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %31, align 8
  %33 = load %struct.share_obj*, %struct.share_obj** %3, align 8
  %34 = getelementptr inbounds %struct.share_obj, %struct.share_obj* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.share_obj*, %struct.share_obj** %3, align 8
  %37 = getelementptr inbounds %struct.share_obj, %struct.share_obj* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.vpu_ipi_desc*, %struct.vpu_ipi_desc** %4, align 8
  %40 = load %struct.share_obj*, %struct.share_obj** %3, align 8
  %41 = getelementptr inbounds %struct.share_obj, %struct.share_obj* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.vpu_ipi_desc, %struct.vpu_ipi_desc* %39, i64 %42
  %44 = getelementptr inbounds %struct.vpu_ipi_desc, %struct.vpu_ipi_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %32(i32 %35, i32 %38, i32 %45)
  %47 = load %struct.share_obj*, %struct.share_obj** %3, align 8
  %48 = getelementptr inbounds %struct.share_obj, %struct.share_obj* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IPI_VPU_INIT, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %25
  %53 = load %struct.mtk_vpu*, %struct.mtk_vpu** %2, align 8
  %54 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.share_obj*, %struct.share_obj** %3, align 8
  %57 = getelementptr inbounds %struct.share_obj, %struct.share_obj* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 1, i32* %59, align 4
  %60 = load %struct.mtk_vpu*, %struct.mtk_vpu** %2, align 8
  %61 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %60, i32 0, i32 2
  %62 = call i32 @wake_up(i32* %61)
  br label %63

63:                                               ; preds = %52, %25
  br label %72

64:                                               ; preds = %16, %1
  %65 = load %struct.mtk_vpu*, %struct.mtk_vpu** %2, align 8
  %66 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.share_obj*, %struct.share_obj** %3, align 8
  %69 = getelementptr inbounds %struct.share_obj, %struct.share_obj* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %64, %63
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
