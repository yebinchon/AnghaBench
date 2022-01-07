; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_lio_fetch_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_lio_fetch_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.cavium_wk = type { %struct.lio* }
%struct.lio = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.octeon_device* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.octeon_device = type { i32, %struct.TYPE_13__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.octeon_soft_command = type { i32, i32, i32, i32, i64 }
%struct.oct_nic_stats_resp = type { i32 }

@LIO_VFSTATS_POLL = common dso_local global i32 0, align 4
@LIQUIDIO_SPOOFCHK_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Soft command allocation failed\0A\00", align 1
@OCTEON_REQUEST_PENDING = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_PORT_STATS = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@LIO_SC_MAX_TMO_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"sc OPCODE_NIC_PORT_STATS command failed\0A\00", align 1
@LIQUIDIO_NDEV_STATS_POLL_TIME_MS = common dso_local global i32 0, align 4
@LIO_IFSTATE_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_fetch_stats(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.cavium_wk*, align 8
  %4 = alloca %struct.lio*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.octeon_soft_command*, align 8
  %7 = alloca %struct.oct_nic_stats_resp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %10 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %11 = bitcast %struct.work_struct* %10 to %struct.cavium_wk*
  store %struct.cavium_wk* %11, %struct.cavium_wk** %3, align 8
  %12 = load %struct.cavium_wk*, %struct.cavium_wk** %3, align 8
  %13 = getelementptr inbounds %struct.cavium_wk, %struct.cavium_wk* %12, i32 0, i32 0
  %14 = load %struct.lio*, %struct.lio** %13, align 8
  store %struct.lio* %14, %struct.lio** %4, align 8
  %15 = load %struct.lio*, %struct.lio** %4, align 8
  %16 = getelementptr inbounds %struct.lio, %struct.lio* %15, i32 0, i32 2
  %17 = load %struct.octeon_device*, %struct.octeon_device** %16, align 8
  store %struct.octeon_device* %17, %struct.octeon_device** %5, align 8
  %18 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %19 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %1
  %22 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LIO_VFSTATS_POLL, align 4
  %26 = srem i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %21
  %29 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @LIQUIDIO_SPOOFCHK_CAP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %38 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.lio*, %struct.lio** %4, align 8
  %44 = call i32 @lio_fetch_vf_stats(%struct.lio* %43)
  br label %45

45:                                               ; preds = %42, %36, %28, %21
  %46 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %47 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %45, %1
  %51 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %52 = call i64 @octeon_alloc_soft_command(%struct.octeon_device* %51, i32 0, i32 4, i32 0)
  %53 = inttoptr i64 %52 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %53, %struct.octeon_soft_command** %6, align 8
  %54 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %55 = icmp ne %struct.octeon_soft_command* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %58 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %125

62:                                               ; preds = %50
  %63 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %64 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.oct_nic_stats_resp*
  store %struct.oct_nic_stats_resp* %66, %struct.oct_nic_stats_resp** %7, align 8
  %67 = load %struct.oct_nic_stats_resp*, %struct.oct_nic_stats_resp** %7, align 8
  %68 = call i32 @memset(%struct.oct_nic_stats_resp* %67, i32 0, i32 4)
  %69 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %70 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %69, i32 0, i32 3
  %71 = call i32 @init_completion(i32* %70)
  %72 = load i32, i32* @OCTEON_REQUEST_PENDING, align 4
  %73 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %74 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.lio*, %struct.lio** %4, align 8
  %76 = getelementptr inbounds %struct.lio, %struct.lio* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %84 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %86 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %87 = load i32, i32* @OPCODE_NIC, align 4
  %88 = load i32, i32* @OPCODE_NIC_PORT_STATS, align 4
  %89 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %85, %struct.octeon_soft_command* %86, i32 %87, i32 %88, i32 0, i32 0, i32 0)
  %90 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %91 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %92 = call i32 @octeon_send_soft_command(%struct.octeon_device* %90, %struct.octeon_soft_command* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @IQ_SEND_FAILED, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %62
  %97 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %98 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %99 = call i32 @octeon_free_soft_command(%struct.octeon_device* %97, %struct.octeon_soft_command* %98)
  br label %125

100:                                              ; preds = %62
  %101 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %102 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %103 = load i32, i32* @LIO_SC_MAX_TMO_MS, align 4
  %104 = mul nsw i32 2, %103
  %105 = call i32 @wait_for_sc_completion_timeout(%struct.octeon_device* %101, %struct.octeon_soft_command* %102, i32 %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %110 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %109, i32 0, i32 1
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %125

114:                                              ; preds = %100
  %115 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %116 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %117 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %120 = call i32 @octnet_nic_stats_callback(%struct.octeon_device* %115, i32 %118, %struct.octeon_soft_command* %119)
  %121 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %122 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @WRITE_ONCE(i32 %123, i32 1)
  br label %125

125:                                              ; preds = %114, %108, %96, %56
  %126 = load i32, i32* @LIQUIDIO_NDEV_STATS_POLL_TIME_MS, align 4
  %127 = call i64 @msecs_to_jiffies(i32 %126)
  store i64 %127, i64* %8, align 8
  %128 = load %struct.lio*, %struct.lio** %4, align 8
  %129 = load i32, i32* @LIO_IFSTATE_RUNNING, align 4
  %130 = call i64 @ifstate_check(%struct.lio* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load %struct.lio*, %struct.lio** %4, align 8
  %134 = getelementptr inbounds %struct.lio, %struct.lio* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i64, i64* %8, align 8
  %137 = call i32 @schedule_delayed_work(i32* %135, i64 %136)
  br label %138

138:                                              ; preds = %132, %125
  ret void
}

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i32 @lio_fetch_vf_stats(%struct.lio*) #1

declare dso_local i64 @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memset(%struct.oct_nic_stats_resp*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @octeon_send_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @wait_for_sc_completion_timeout(%struct.octeon_device*, %struct.octeon_soft_command*, i32) #1

declare dso_local i32 @octnet_nic_stats_callback(%struct.octeon_device*, i32, %struct.octeon_soft_command*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @ifstate_check(%struct.lio*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
