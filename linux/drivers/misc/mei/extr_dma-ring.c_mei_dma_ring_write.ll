; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_dma-ring.c_mei_dma_ring_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_dma-ring.c_mei_dma_ring_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.hbm_dma_ring_ctrl = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"writing to dma %u bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mei_dma_ring_write(%struct.mei_device* %0, i8* %1, i32 %2) #0 {
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
  br label %77

21:                                               ; preds = %3
  %22 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %23 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %28 = call i32 @mei_dma_ring_hbuf_depth(%struct.mei_device* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.hbm_dma_ring_ctrl*, %struct.hbm_dma_ring_ctrl** %7, align 8
  %30 = getelementptr inbounds %struct.hbm_dma_ring_ctrl, %struct.hbm_dma_ring_ctrl* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @READ_ONCE(i64 %31)
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %32, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mei_data2slots(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %21
  %44 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @mei_dma_copy_to(%struct.mei_device* %44, i8* %45, i32 %46, i32 %49)
  %51 = load i8*, i8** %5, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sub nsw i32 %54, %57
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %61

59:                                               ; preds = %21
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %43
  %62 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @mei_dma_copy_to(%struct.mei_device* %62, i8* %63, i32 %64, i32 %65)
  %67 = load %struct.hbm_dma_ring_ctrl*, %struct.hbm_dma_ring_ctrl** %7, align 8
  %68 = getelementptr inbounds %struct.hbm_dma_ring_ctrl, %struct.hbm_dma_ring_ctrl* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.hbm_dma_ring_ctrl*, %struct.hbm_dma_ring_ctrl** %7, align 8
  %71 = getelementptr inbounds %struct.hbm_dma_ring_ctrl, %struct.hbm_dma_ring_ctrl* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = call i32 @WRITE_ONCE(i64 %69, i64 %75)
  br label %77

77:                                               ; preds = %61, %20
  ret void
}

declare dso_local %struct.hbm_dma_ring_ctrl* @mei_dma_ring_ctrl(%struct.mei_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mei_dma_ring_hbuf_depth(%struct.mei_device*) #1

declare dso_local i32 @READ_ONCE(i64) #1

declare dso_local i32 @mei_data2slots(i32) #1

declare dso_local i32 @mei_dma_copy_to(%struct.mei_device*, i8*, i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
