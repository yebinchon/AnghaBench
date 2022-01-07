; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_p2m_dma(%struct.solo_dev* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.solo_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i8*, i8** %11, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = and i64 %19, 3
  %21 = trunc i64 %20 to i32
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %85

27:                                               ; preds = %7
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON_ONCE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %85

37:                                               ; preds = %27
  %38 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %39 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @pci_map_single(i32 %40, i8* %41, i32 %42, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %53 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call i64 @pci_dma_mapping_error(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %85

61:                                               ; preds = %49
  %62 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @solo_p2m_dma_t(%struct.solo_dev* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %71 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %61
  %78 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %81

79:                                               ; preds = %61
  %80 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = call i32 @pci_unmap_single(i32 %72, i32 %73, i32 %74, i32 %82)
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %58, %34, %24
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @pci_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @solo_p2m_dma_t(%struct.solo_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
