; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_lio_sync_octeon_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_lio_sync_octeon_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.cavium_wk = type { i64 }
%struct.lio = type { %struct.TYPE_12__, %struct.TYPE_9__, %struct.octeon_device* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.octeon_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.octeon_soft_command = type { i32, i32, i32, i32, i64 }
%struct.timespec64 = type { i32, i32 }
%struct.lio_time = type { i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"Failed to sync time to octeon: soft command allocation failed\0A\00", align 1
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_SYNC_OCTEON_TIME = common dso_local global i32 0, align 4
@OCTEON_REQUEST_PENDING = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Failed to sync time to octeon: failed to send soft command\0A\00", align 1
@LIO_SYNC_OCTEON_TIME_INTERVAL_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @lio_sync_octeon_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_sync_octeon_time(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.cavium_wk*, align 8
  %4 = alloca %struct.lio*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.octeon_soft_command*, align 8
  %7 = alloca %struct.timespec64, align 4
  %8 = alloca %struct.lio_time*, align 8
  %9 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %10 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %11 = bitcast %struct.work_struct* %10 to %struct.cavium_wk*
  store %struct.cavium_wk* %11, %struct.cavium_wk** %3, align 8
  %12 = load %struct.cavium_wk*, %struct.cavium_wk** %3, align 8
  %13 = getelementptr inbounds %struct.cavium_wk, %struct.cavium_wk* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.lio*
  store %struct.lio* %15, %struct.lio** %4, align 8
  %16 = load %struct.lio*, %struct.lio** %4, align 8
  %17 = getelementptr inbounds %struct.lio, %struct.lio* %16, i32 0, i32 2
  %18 = load %struct.octeon_device*, %struct.octeon_device** %17, align 8
  store %struct.octeon_device* %18, %struct.octeon_device** %5, align 8
  %19 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %20 = call %struct.octeon_soft_command* @octeon_alloc_soft_command(%struct.octeon_device* %19, i32 8, i32 16, i32 0)
  store %struct.octeon_soft_command* %20, %struct.octeon_soft_command** %6, align 8
  %21 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %22 = icmp ne %struct.octeon_soft_command* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %25 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %99

29:                                               ; preds = %1
  %30 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %31 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.lio_time*
  store %struct.lio_time* %33, %struct.lio_time** %8, align 8
  %34 = call i32 @ktime_get_real_ts64(%struct.timespec64* %7)
  %35 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lio_time*, %struct.lio_time** %8, align 8
  %38 = getelementptr inbounds %struct.lio_time, %struct.lio_time* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.lio_time*, %struct.lio_time** %8, align 8
  %42 = getelementptr inbounds %struct.lio_time, %struct.lio_time* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.lio_time*, %struct.lio_time** %8, align 8
  %44 = bitcast %struct.lio_time* %43 to i32*
  %45 = call i32 @octeon_swap_8B_data(i32* %44, i32 1)
  %46 = load %struct.lio*, %struct.lio** %4, align 8
  %47 = getelementptr inbounds %struct.lio, %struct.lio* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %55 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %57 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %58 = load i32, i32* @OPCODE_NIC, align 4
  %59 = load i32, i32* @OPCODE_NIC_SYNC_OCTEON_TIME, align 4
  %60 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %56, %struct.octeon_soft_command* %57, i32 %58, i32 %59, i32 0, i32 0, i32 0)
  %61 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %62 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %61, i32 0, i32 2
  %63 = call i32 @init_completion(i32* %62)
  %64 = load i32, i32* @OCTEON_REQUEST_PENDING, align 4
  %65 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %66 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %68 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %69 = call i32 @octeon_send_soft_command(%struct.octeon_device* %67, %struct.octeon_soft_command* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @IQ_SEND_FAILED, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %29
  %74 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %75 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %80 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %81 = call i32 @octeon_free_soft_command(%struct.octeon_device* %79, %struct.octeon_soft_command* %80)
  br label %87

82:                                               ; preds = %29
  %83 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %84 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @WRITE_ONCE(i32 %85, i32 1)
  br label %87

87:                                               ; preds = %82, %73
  %88 = load %struct.lio*, %struct.lio** %4, align 8
  %89 = getelementptr inbounds %struct.lio, %struct.lio* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.lio*, %struct.lio** %4, align 8
  %93 = getelementptr inbounds %struct.lio, %struct.lio* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* @LIO_SYNC_OCTEON_TIME_INTERVAL_MS, align 4
  %97 = call i32 @msecs_to_jiffies(i32 %96)
  %98 = call i32 @queue_delayed_work(i32 %91, i32* %95, i32 %97)
  br label %99

99:                                               ; preds = %87, %23
  ret void
}

declare dso_local %struct.octeon_soft_command* @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @octeon_send_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
