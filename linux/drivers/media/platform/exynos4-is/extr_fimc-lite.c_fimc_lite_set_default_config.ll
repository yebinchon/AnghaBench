; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_set_default_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_set_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { %struct.flite_frame, %struct.flite_frame }
%struct.flite_frame = type { %struct.TYPE_2__, i8*, i8*, i32* }
%struct.TYPE_2__ = type { i64, i64, i8*, i8* }

@fimc_lite_formats = common dso_local global i32* null, align 8
@FLITE_DEFAULT_WIDTH = common dso_local global i8* null, align 8
@FLITE_DEFAULT_HEIGHT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_lite*)* @fimc_lite_set_default_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_lite_set_default_config(%struct.fimc_lite* %0) #0 {
  %2 = alloca %struct.fimc_lite*, align 8
  %3 = alloca %struct.flite_frame*, align 8
  %4 = alloca %struct.flite_frame*, align 8
  store %struct.fimc_lite* %0, %struct.fimc_lite** %2, align 8
  %5 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %6 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %5, i32 0, i32 1
  store %struct.flite_frame* %6, %struct.flite_frame** %3, align 8
  %7 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %8 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %7, i32 0, i32 0
  store %struct.flite_frame* %8, %struct.flite_frame** %4, align 8
  %9 = load i32*, i32** @fimc_lite_formats, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load %struct.flite_frame*, %struct.flite_frame** %3, align 8
  %12 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %11, i32 0, i32 3
  store i32* %10, i32** %12, align 8
  %13 = load i8*, i8** @FLITE_DEFAULT_WIDTH, align 8
  %14 = load %struct.flite_frame*, %struct.flite_frame** %3, align 8
  %15 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @FLITE_DEFAULT_HEIGHT, align 8
  %17 = load %struct.flite_frame*, %struct.flite_frame** %3, align 8
  %18 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @FLITE_DEFAULT_WIDTH, align 8
  %20 = load %struct.flite_frame*, %struct.flite_frame** %3, align 8
  %21 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** @FLITE_DEFAULT_HEIGHT, align 8
  %24 = load %struct.flite_frame*, %struct.flite_frame** %3, align 8
  %25 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i8* %23, i8** %26, align 8
  %27 = load %struct.flite_frame*, %struct.flite_frame** %3, align 8
  %28 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.flite_frame*, %struct.flite_frame** %3, align 8
  %31 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.flite_frame*, %struct.flite_frame** %4, align 8
  %34 = load %struct.flite_frame*, %struct.flite_frame** %3, align 8
  %35 = bitcast %struct.flite_frame* %33 to i8*
  %36 = bitcast %struct.flite_frame* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 56, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
