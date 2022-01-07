; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_init_ipi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_init_ipi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.vpu_run = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @vpu_init_ipi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpu_init_ipi_handler(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mtk_vpu*, align 8
  %8 = alloca %struct.vpu_run*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.mtk_vpu*
  store %struct.mtk_vpu* %10, %struct.mtk_vpu** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.vpu_run*
  store %struct.vpu_run* %12, %struct.vpu_run** %8, align 8
  %13 = load %struct.vpu_run*, %struct.vpu_run** %8, align 8
  %14 = getelementptr inbounds %struct.vpu_run, %struct.vpu_run* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mtk_vpu*, %struct.mtk_vpu** %7, align 8
  %17 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 4
  %19 = load %struct.mtk_vpu*, %struct.mtk_vpu** %7, align 8
  %20 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vpu_run*, %struct.vpu_run** %8, align 8
  %24 = getelementptr inbounds %struct.vpu_run, %struct.vpu_run* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strscpy(i32 %22, i32 %25, i32 4)
  %27 = load %struct.vpu_run*, %struct.vpu_run** %8, align 8
  %28 = getelementptr inbounds %struct.vpu_run, %struct.vpu_run* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mtk_vpu*, %struct.mtk_vpu** %7, align 8
  %31 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = load %struct.vpu_run*, %struct.vpu_run** %8, align 8
  %34 = getelementptr inbounds %struct.vpu_run, %struct.vpu_run* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mtk_vpu*, %struct.mtk_vpu** %7, align 8
  %37 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.mtk_vpu*, %struct.mtk_vpu** %7, align 8
  %40 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @wake_up_interruptible(i32* %41)
  ret void
}

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
