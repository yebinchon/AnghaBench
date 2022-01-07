; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-mem.c_hva_mem_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-mem.c_hva_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { i32 }
%struct.hva_buffer = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"%s free %d bytes of HW memory @(virt=%p, phy=%pad): %s\0A\00", align 1
@DMA_ATTR_WRITE_COMBINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hva_mem_free(%struct.hva_ctx* %0, %struct.hva_buffer* %1) #0 {
  %3 = alloca %struct.hva_ctx*, align 8
  %4 = alloca %struct.hva_buffer*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.hva_ctx* %0, %struct.hva_ctx** %3, align 8
  store %struct.hva_buffer* %1, %struct.hva_buffer** %4, align 8
  %6 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %7 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %6)
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.hva_buffer*, %struct.hva_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.hva_buffer, %struct.hva_buffer* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hva_buffer*, %struct.hva_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.hva_buffer, %struct.hva_buffer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hva_buffer*, %struct.hva_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.hva_buffer, %struct.hva_buffer* %18, i32 0, i32 0
  %20 = load %struct.hva_buffer*, %struct.hva_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.hva_buffer, %struct.hva_buffer* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_dbg(%struct.device* %8, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32* %19, i32 %22)
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.hva_buffer*, %struct.hva_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.hva_buffer, %struct.hva_buffer* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hva_buffer*, %struct.hva_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.hva_buffer, %struct.hva_buffer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hva_buffer*, %struct.hva_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.hva_buffer, %struct.hva_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DMA_ATTR_WRITE_COMBINE, align 4
  %35 = call i32 @dma_free_attrs(%struct.device* %24, i32 %27, i32 %30, i32 %33, i32 %34)
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %struct.hva_buffer*, %struct.hva_buffer** %4, align 8
  %38 = call i32 @devm_kfree(%struct.device* %36, %struct.hva_buffer* %37)
  ret void
}

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @dma_free_attrs(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.hva_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
