; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_context.c_hl_ctx_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_context.c_hl_ctx_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { i64, i32*, %struct.hl_device* }
%struct.hl_device = type { %struct.hl_ctx*, i64 }

@HL_MAX_PENDING_CS = common dso_local global i32 0, align 4
@HL_KERNEL_ASID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_ctx*)* @hl_ctx_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hl_ctx_fini(%struct.hl_ctx* %0) #0 {
  %2 = alloca %struct.hl_ctx*, align 8
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hl_ctx* %0, %struct.hl_ctx** %2, align 8
  %5 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %5, i32 0, i32 2
  %7 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  store %struct.hl_device* %7, %struct.hl_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @HL_MAX_PENDING_CS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dma_fence_put(i32 %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HL_KERNEL_ASID_ID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %32 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %37 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %36, i32 0, i32 0
  %38 = load %struct.hl_ctx*, %struct.hl_ctx** %37, align 8
  %39 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %40 = icmp eq %struct.hl_ctx* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %43 = call i32 @hl_device_set_debug_mode(%struct.hl_device* %42, i32 0)
  br label %44

44:                                               ; preds = %41, %35, %30
  %45 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %46 = call i32 @hl_vm_ctx_fini(%struct.hl_ctx* %45)
  %47 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %48 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @hl_asid_free(%struct.hl_device* %47, i64 %50)
  br label %55

52:                                               ; preds = %24
  %53 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %54 = call i32 @hl_mmu_ctx_fini(%struct.hl_ctx* %53)
  br label %55

55:                                               ; preds = %52, %44
  ret void
}

declare dso_local i32 @dma_fence_put(i32) #1

declare dso_local i32 @hl_device_set_debug_mode(%struct.hl_device*, i32) #1

declare dso_local i32 @hl_vm_ctx_fini(%struct.hl_ctx*) #1

declare dso_local i32 @hl_asid_free(%struct.hl_device*, i64) #1

declare dso_local i32 @hl_mmu_ctx_fini(%struct.hl_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
