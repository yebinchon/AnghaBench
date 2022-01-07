; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_dma.c_pt3_stop_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_dma.c_pt3_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pt3_board* }
%struct.pt3_board = type { i32* }

@OFST_STATUS = common dso_local global i32 0, align 4
@OFST_DMA_CTL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt3_stop_dma(%struct.pt3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt3_adapter*, align 8
  %4 = alloca %struct.pt3_board*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt3_adapter* %0, %struct.pt3_adapter** %3, align 8
  %8 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pt3_board*, %struct.pt3_board** %10, align 8
  store %struct.pt3_board* %11, %struct.pt3_board** %4, align 8
  %12 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @get_dma_base(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %17 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* @OFST_STATUS, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @ioread32(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

30:                                               ; preds = %1
  %31 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %32 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* @OFST_DMA_CTL, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @iowrite32(i32 2, i32 %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %61, %30
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 5
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %46 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* @OFST_STATUS, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @ioread32(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %67

59:                                               ; preds = %44
  %60 = call i32 @msleep(i32 50)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %41

64:                                               ; preds = %41
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %58, %29
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @get_dma_base(i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
