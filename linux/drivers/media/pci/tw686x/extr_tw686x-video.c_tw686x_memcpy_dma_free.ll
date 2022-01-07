; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_memcpy_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_memcpy_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_video_channel = type { %struct.tw686x_dev*, %struct.tw686x_dma_desc* }
%struct.tw686x_dev = type { %struct.pci_dev*, i32 }
%struct.pci_dev = type { i32 }
%struct.tw686x_dma_desc = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"trying to deallocate on missing device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tw686x_video_channel*, i32)* @tw686x_memcpy_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw686x_memcpy_dma_free(%struct.tw686x_video_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.tw686x_video_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tw686x_dma_desc*, align 8
  %6 = alloca %struct.tw686x_dev*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  store %struct.tw686x_video_channel* %0, %struct.tw686x_video_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %10 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %9, i32 0, i32 1
  %11 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %11, i64 %13
  store %struct.tw686x_dma_desc* %14, %struct.tw686x_dma_desc** %5, align 8
  %15 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %16 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %15, i32 0, i32 0
  %17 = load %struct.tw686x_dev*, %struct.tw686x_dev** %16, align 8
  store %struct.tw686x_dev* %17, %struct.tw686x_dev** %6, align 8
  %18 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %19 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %23 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %7, align 8
  %25 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %26 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %30 = icmp ne %struct.pci_dev* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %2
  %32 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %54

33:                                               ; preds = %2
  %34 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %5, align 8
  %35 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %40 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %39, i32 0, i32 0
  %41 = load %struct.pci_dev*, %struct.pci_dev** %40, align 8
  %42 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %5, align 8
  %43 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %5, align 8
  %46 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %5, align 8
  %49 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pci_free_consistent(%struct.pci_dev* %41, i32 %44, i32* %47, i32 %50)
  %52 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %5, align 8
  %53 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %31, %38, %33
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
