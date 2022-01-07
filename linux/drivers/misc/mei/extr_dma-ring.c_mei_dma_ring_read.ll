; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_dma-ring.c_mei_dma_ring_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_dma-ring.c_mei_dma_ring_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hbm_dma_ring_ctrl = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"reading from dma %u bytes\0A\00", align 1
@DMA_DSCR_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mei_dma_ring_read(%struct.mei_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hbm_dma_ring_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %13 = call %struct.hbm_dma_ring_ctrl* @mei_dma_ring_ctrl(%struct.mei_device* %12)
  store %struct.hbm_dma_ring_ctrl* %13, %struct.hbm_dma_ring_ctrl** %7, align 8
  %14 = load %struct.hbm_dma_ring_ctrl*, %struct.hbm_dma_ring_ctrl** %7, align 8
  %15 = icmp ne %struct.hbm_dma_ring_ctrl* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %92

21:                                               ; preds = %3
  %22 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %23 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %92

30:                                               ; preds = %21
  %31 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* @DMA_DSCR_DEVICE, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 2
  store i32 %38, i32* %8, align 4
  %39 = load %struct.hbm_dma_ring_ctrl*, %struct.hbm_dma_ring_ctrl** %7, align 8
  %40 = getelementptr inbounds %struct.hbm_dma_ring_ctrl, %struct.hbm_dma_ring_ctrl* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @READ_ONCE(i64 %41)
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %42, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mei_data2slots(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %30
  br label %81

51:                                               ; preds = %30
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @mei_dma_copy_from(%struct.mei_device* %58, i8* %59, i32 %60, i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %75

73:                                               ; preds = %51
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %73, %57
  %76 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @mei_dma_copy_from(%struct.mei_device* %76, i8* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %50
  %82 = load %struct.hbm_dma_ring_ctrl*, %struct.hbm_dma_ring_ctrl** %7, align 8
  %83 = getelementptr inbounds %struct.hbm_dma_ring_ctrl, %struct.hbm_dma_ring_ctrl* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.hbm_dma_ring_ctrl*, %struct.hbm_dma_ring_ctrl** %7, align 8
  %86 = getelementptr inbounds %struct.hbm_dma_ring_ctrl, %struct.hbm_dma_ring_ctrl* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = call i32 @WRITE_ONCE(i64 %84, i64 %90)
  br label %92

92:                                               ; preds = %81, %29, %20
  ret void
}

declare dso_local %struct.hbm_dma_ring_ctrl* @mei_dma_ring_ctrl(%struct.mei_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @READ_ONCE(i64) #1

declare dso_local i32 @mei_data2slots(i32) #1

declare dso_local i32 @mei_dma_copy_from(%struct.mei_device*, i8*, i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
