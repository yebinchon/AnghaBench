; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_submission.c__hl_cs_wait_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_submission.c__hl_cs_wait_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_ctx = type { i32 }
%struct.dma_fence = type { i64 }

@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hl_device*, %struct.hl_ctx*, i64, i64)* @_hl_cs_wait_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_hl_cs_wait_ioctl(%struct.hl_device* %0, %struct.hl_ctx* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dma_fence*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_ctx* %1, %struct.hl_ctx** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %10, align 8
  br label %20

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @usecs_to_jiffies(i64 %18)
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %17, %15
  %21 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %22 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %23 = call i32 @hl_ctx_get(%struct.hl_device* %21, %struct.hl_ctx* %22)
  %24 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call %struct.dma_fence* @hl_ctx_get_fence(%struct.hl_ctx* %24, i64 %25)
  store %struct.dma_fence* %26, %struct.dma_fence** %9, align 8
  %27 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %28 = call i64 @IS_ERR(%struct.dma_fence* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %32 = call i64 @PTR_ERR(%struct.dma_fence* %31)
  store i64 %32, i64* %11, align 8
  br label %65

33:                                               ; preds = %20
  %34 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %35 = icmp ne %struct.dma_fence* %34, null
  br i1 %35, label %36, label %63

36:                                               ; preds = %33
  %37 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %37, i32 1, i64 %38)
  store i64 %39, i64* %11, align 8
  %40 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %41 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ETIMEDOUT, align 8
  %44 = sub nsw i64 0, %43
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i64, i64* @ETIMEDOUT, align 8
  %48 = sub nsw i64 0, %47
  store i64 %48, i64* %11, align 8
  br label %60

49:                                               ; preds = %36
  %50 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %51 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EIO, align 8
  %54 = sub nsw i64 0, %53
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i64, i64* @EIO, align 8
  %58 = sub nsw i64 0, %57
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %56, %49
  br label %60

60:                                               ; preds = %59, %46
  %61 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %62 = call i32 @dma_fence_put(%struct.dma_fence* %61)
  br label %64

63:                                               ; preds = %33
  store i64 1, i64* %11, align 8
  br label %64

64:                                               ; preds = %63, %60
  br label %65

65:                                               ; preds = %64, %30
  %66 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %67 = call i32 @hl_ctx_put(%struct.hl_ctx* %66)
  %68 = load i64, i64* %11, align 8
  ret i64 %68
}

declare dso_local i64 @usecs_to_jiffies(i64) #1

declare dso_local i32 @hl_ctx_get(%struct.hl_device*, %struct.hl_ctx*) #1

declare dso_local %struct.dma_fence* @hl_ctx_get_fence(%struct.hl_ctx*, i64) #1

declare dso_local i64 @IS_ERR(%struct.dma_fence*) #1

declare dso_local i64 @PTR_ERR(%struct.dma_fence*) #1

declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i64) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @hl_ctx_put(%struct.hl_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
