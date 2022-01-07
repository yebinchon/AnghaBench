; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_do_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_do_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r852_device = type { i32, i32, i8*, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"doing dma %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@DMA_INTERNAL = common dso_local global i32 0, align 4
@DMA_MEMORY = common dso_local global i32 0, align 4
@R852_DMA_LEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"dma: using bounce buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r852_device*, i8*, i32)* @r852_do_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_do_dma(%struct.r852_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.r852_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.r852_device* %0, %struct.r852_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %11 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %10, i32 0, i32 9
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %14 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %16 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %18 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %17, i32 0, i32 8
  %19 = call i32 @reinit_completion(i32* %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @DMA_INTERNAL, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @DMA_MEMORY, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %34 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load i32, i32* @R852_DMA_LEN, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = and i64 %36, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %75, label %46

46:                                               ; preds = %43
  %47 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %48 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %47, i32 0, i32 6
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @R852_DMA_LEN, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = call i32 @dma_map_single(i32* %50, i8* %51, i32 %52, i32 %60)
  %62 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %63 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %65 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %64, i32 0, i32 6
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %69 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @dma_mapping_error(i32* %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %74, %43
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %81 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %84 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %78
  %88 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %89 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* @R852_DMA_LEN, align 4
  %93 = call i32 @memcpy(i8* %90, i8* %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %78
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %97 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %96, i32 0, i32 3
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @spin_lock_irqsave(i32* %97, i64 %98)
  %100 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %101 = call i32 @r852_dma_enable(%struct.r852_device* %100)
  %102 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %103 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %102, i32 0, i32 3
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  %106 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %107 = call i32 @r852_dma_wait(%struct.r852_device* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %95
  %111 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @r852_dma_done(%struct.r852_device* %111, i32 %112)
  br label %127

114:                                              ; preds = %95
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i8*, i8** %5, align 8
  %122 = load %struct.r852_device*, %struct.r852_device** %4, align 8
  %123 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* @R852_DMA_LEN, align 4
  %126 = call i32 @memcpy(i8* %121, i8* %124, i32 %125)
  br label %127

127:                                              ; preds = %110, %120, %117, %114
  ret void
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dbg_verbose(i8*, ...) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @r852_dma_enable(%struct.r852_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @r852_dma_wait(%struct.r852_device*) #1

declare dso_local i32 @r852_dma_done(%struct.r852_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
