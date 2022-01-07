; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_pcierror_quiesce_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_pcierror_quiesce_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.octeon_instr_queue**, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.octeon_instr_queue = type { i32, i32, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"There were pending requests\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @pcierror_quiesce_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcierror_quiesce_device(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_instr_queue*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %5 = call i32 @schedule_timeout_uninterruptible(i32 100)
  %6 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %7 = call i64 @wait_for_pending_requests(%struct.octeon_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %9, %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %71, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %19 = call i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %74

21:                                               ; preds = %16
  %22 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @BIT_ULL(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %71

31:                                               ; preds = %21
  %32 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %32, i32 0, i32 0
  %34 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %34, i64 %36
  %38 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %37, align 8
  store %struct.octeon_instr_queue* %38, %struct.octeon_instr_queue** %4, align 8
  %39 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %40 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %39, i32 0, i32 1
  %41 = call i64 @atomic_read(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %31
  %44 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %45 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_bh(i32* %45)
  %47 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %48 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %50 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %53 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %55 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %54, i32 0, i32 1
  %56 = call i64 @atomic_read(i32* %55)
  %57 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %58 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %56
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  %64 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %65 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %66 = call i32 @lio_process_iq_request_list(%struct.octeon_device* %64, %struct.octeon_instr_queue* %65, i32 0)
  %67 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %68 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock_bh(i32* %68)
  br label %70

70:                                               ; preds = %43, %31
  br label %71

71:                                               ; preds = %70, %30
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %16

74:                                               ; preds = %16
  %75 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %76 = call i32 @lio_process_ordered_list(%struct.octeon_device* %75, i32 1)
  ret void
}

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
