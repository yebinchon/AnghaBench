; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_pcierror_quiesce_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_pcierror_quiesce_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.octeon_instr_queue**, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.octeon_instr_queue = type { i32, i32, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@WAIT_INFLIGHT_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"There were pending requests\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @pcierror_quiesce_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcierror_quiesce_device(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_instr_queue*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %5 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %6 = call i32 @force_io_queues_off(%struct.octeon_device* %5)
  %7 = load i32, i32* @WAIT_INFLIGHT_REQUEST, align 4
  %8 = call i32 @schedule_timeout_uninterruptible(i32 %7)
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = call i64 @wait_for_pending_requests(%struct.octeon_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %12, %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %74, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %22 = call i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %77

24:                                               ; preds = %19
  %25 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @BIT_ULL(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %74

34:                                               ; preds = %24
  %35 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %35, i32 0, i32 0
  %37 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %37, i64 %39
  %41 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %40, align 8
  store %struct.octeon_instr_queue* %41, %struct.octeon_instr_queue** %4, align 8
  %42 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %43 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %42, i32 0, i32 1
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %34
  %47 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %48 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_bh(i32* %48)
  %50 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %51 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %53 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %56 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %58 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %57, i32 0, i32 1
  %59 = call i64 @atomic_read(i32* %58)
  %60 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %61 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %59
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %68 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %69 = call i32 @lio_process_iq_request_list(%struct.octeon_device* %67, %struct.octeon_instr_queue* %68, i32 0)
  %70 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %71 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_bh(i32* %71)
  br label %73

73:                                               ; preds = %46, %34
  br label %74

74:                                               ; preds = %73, %33
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %19

77:                                               ; preds = %19
  %78 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %79 = call i32 @lio_process_ordered_list(%struct.octeon_device* %78, i32 1)
  ret void
}

declare dso_local i32 @force_io_queues_off(%struct.octeon_device*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @wait_for_pending_requests(%struct.octeon_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @lio_process_iq_request_list(%struct.octeon_device*, %struct.octeon_instr_queue*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @lio_process_ordered_list(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
