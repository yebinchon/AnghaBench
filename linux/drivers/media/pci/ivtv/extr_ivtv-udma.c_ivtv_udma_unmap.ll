; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-udma.c_ivtv_udma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-udma.c_ivtv_udma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, %struct.ivtv_user_dma }
%struct.ivtv_user_dma = type { i32, i32*, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"ivtv_unmap_user_dma\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_udma_unmap(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.ivtv_user_dma*, align 8
  %4 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %5 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %6 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %5, i32 0, i32 1
  store %struct.ivtv_user_dma* %6, %struct.ivtv_user_dma** %3, align 8
  %7 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %3, align 8
  %9 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %3, align 8
  %15 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %20 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %3, align 8
  %23 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %3, align 8
  %26 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %29 = call i32 @pci_unmap_sg(i32 %21, i32 %24, i32 %27, i32 %28)
  %30 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %3, align 8
  %31 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %18, %13
  %33 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %34 = call i32 @ivtv_udma_sync_for_cpu(%struct.ivtv* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %50, %32
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %3, align 8
  %38 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %3, align 8
  %43 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @put_page(i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %35

53:                                               ; preds = %35
  %54 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %3, align 8
  %55 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %12
  ret void
}

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i32 @pci_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @ivtv_udma_sync_for_cpu(%struct.ivtv*) #1

declare dso_local i32 @put_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
