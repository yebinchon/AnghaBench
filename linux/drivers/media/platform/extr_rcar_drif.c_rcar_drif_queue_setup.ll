; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.rcar_drif_sdr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"num_bufs %d sizes[0] %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @rcar_drif_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_drif_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device**, align 8
  %11 = alloca %struct.rcar_drif_sdr*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.device** %4, %struct.device*** %10, align 8
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %13 = call %struct.rcar_drif_sdr* @vb2_get_drv_priv(%struct.vb2_queue* %12)
  store %struct.rcar_drif_sdr* %13, %struct.rcar_drif_sdr** %11, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %15 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %16, %18
  %20 = icmp ult i32 %19, 16
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %23 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 16, %24
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %5
  %28 = load i32*, i32** %8, align 8
  store i32 1, i32* %28, align 4
  %29 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %11, align 8
  %30 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PAGE_ALIGN(i32 %33)
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %11, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rdrif_dbg(%struct.rcar_drif_sdr* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  ret i32 0
}

declare dso_local %struct.rcar_drif_sdr* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @rdrif_dbg(%struct.rcar_drif_sdr*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
