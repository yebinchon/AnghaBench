; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_setup_sc_buffer_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_setup_sc_buffer_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.octeon_soft_command = type { i32, i32, i64 }

@MAX_SOFT_COMMAND_BUFFERS = common dso_local global i32 0, align 4
@SOFT_COMMAND_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_setup_sc_buffer_pool(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.octeon_soft_command*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @atomic_set(i32* %17, i32 0)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %47, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MAX_SOFT_COMMAND_BUFFERS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %25 = load i32, i32* @SOFT_COMMAND_BUFFER_SIZE, align 4
  %26 = bitcast i64* %5 to i32*
  %27 = call i64 @lio_dma_alloc(%struct.octeon_device* %24, i32 %25, i32* %26)
  %28 = inttoptr i64 %27 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %28, %struct.octeon_soft_command** %6, align 8
  %29 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %30 = icmp ne %struct.octeon_soft_command* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %33 = call i32 @octeon_free_sc_buffer_pool(%struct.octeon_device* %32)
  store i32 1, i32* %2, align 4
  br label %51

34:                                               ; preds = %23
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %37 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @SOFT_COMMAND_BUFFER_SIZE, align 4
  %39 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %40 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %42 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %41, i32 0, i32 0
  %43 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %44 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @list_add_tail(i32* %42, i32* %45)
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %19

50:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %31
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @lio_dma_alloc(%struct.octeon_device*, i32, i32*) #1

declare dso_local i32 @octeon_free_sc_buffer_pool(%struct.octeon_device*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
