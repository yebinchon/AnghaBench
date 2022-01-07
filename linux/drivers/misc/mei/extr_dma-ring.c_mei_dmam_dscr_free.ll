; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_dma-ring.c_mei_dmam_dscr_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_dma-ring.c_mei_dmam_dscr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_dma_dscr = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*, %struct.mei_dma_dscr*)* @mei_dmam_dscr_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_dmam_dscr_free(%struct.mei_device* %0, %struct.mei_dma_dscr* %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_dma_dscr*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store %struct.mei_dma_dscr* %1, %struct.mei_dma_dscr** %4, align 8
  %5 = load %struct.mei_dma_dscr*, %struct.mei_dma_dscr** %4, align 8
  %6 = getelementptr inbounds %struct.mei_dma_dscr, %struct.mei_dma_dscr* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %26

10:                                               ; preds = %2
  %11 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %12 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mei_dma_dscr*, %struct.mei_dma_dscr** %4, align 8
  %15 = getelementptr inbounds %struct.mei_dma_dscr, %struct.mei_dma_dscr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mei_dma_dscr*, %struct.mei_dma_dscr** %4, align 8
  %18 = getelementptr inbounds %struct.mei_dma_dscr, %struct.mei_dma_dscr* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.mei_dma_dscr*, %struct.mei_dma_dscr** %4, align 8
  %21 = getelementptr inbounds %struct.mei_dma_dscr, %struct.mei_dma_dscr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dmam_free_coherent(i32 %13, i32 %16, i32* %19, i32 %22)
  %24 = load %struct.mei_dma_dscr*, %struct.mei_dma_dscr** %4, align 8
  %25 = getelementptr inbounds %struct.mei_dma_dscr, %struct.mei_dma_dscr* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @dmam_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
