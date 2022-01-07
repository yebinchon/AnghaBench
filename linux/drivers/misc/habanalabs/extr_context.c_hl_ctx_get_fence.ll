; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_context.c_hl_ctx_get_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_context.c_hl_ctx_get_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.hl_ctx = type { i32, i32, i32*, %struct.hl_device* }
%struct.hl_device = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Can't wait on seq %llu because current CS is at seq %llu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HL_MAX_PENDING_CS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Can't wait on seq %llu because current CS is at seq %llu (Fence is gone)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_fence* @hl_ctx_get_fence(%struct.hl_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.hl_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  store %struct.hl_ctx* %0, %struct.hl_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %8, i32 0, i32 3
  %10 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  store %struct.hl_device* %10, %struct.hl_device** %6, align 8
  %11 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %21 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_notice(i32 %22, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.dma_fence* @ERR_PTR(i32 %32)
  store %struct.dma_fence* %33, %struct.dma_fence** %3, align 8
  br label %70

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @HL_MAX_PENDING_CS, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %44 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock(i32* %52)
  store %struct.dma_fence* null, %struct.dma_fence** %3, align 8
  br label %70

54:                                               ; preds = %34
  %55 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @HL_MAX_PENDING_CS, align 4
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %58, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.dma_fence* @dma_fence_get(i32 %64)
  store %struct.dma_fence* %65, %struct.dma_fence** %7, align 8
  %66 = load %struct.hl_ctx*, %struct.hl_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %66, i32 0, i32 1
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  store %struct.dma_fence* %69, %struct.dma_fence** %3, align 8
  br label %70

70:                                               ; preds = %54, %42, %19
  %71 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  ret %struct.dma_fence* %71
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_notice(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dma_fence* @ERR_PTR(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local %struct.dma_fence* @dma_fence_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
