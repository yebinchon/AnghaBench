; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_lio_fetch_vf_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_lio_fetch_vf_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.TYPE_7__, %struct.octeon_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.octeon_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.octeon_soft_command = type { i64, i32, i32, i32, i64 }
%struct.oct_nic_vf_stats_resp = type { i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Soft command allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OCTEON_REQUEST_PENDING = common dso_local global i64 0, align 8
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_VF_PORT_STATS = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@LIO_SC_MAX_TMO_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"sc OPCODE_NIC_VF_PORT_STATS command failed\0A\00", align 1
@OCTEON_REQUEST_TIMEOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%llu Spoofed packets detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio*)* @lio_fetch_vf_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_fetch_vf_stats(%struct.lio* %0) #0 {
  %2 = alloca %struct.lio*, align 8
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.octeon_soft_command*, align 8
  %5 = alloca %struct.oct_nic_vf_stats_resp*, align 8
  %6 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %2, align 8
  %7 = load %struct.lio*, %struct.lio** %2, align 8
  %8 = getelementptr inbounds %struct.lio, %struct.lio* %7, i32 0, i32 1
  %9 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  store %struct.octeon_device* %9, %struct.octeon_device** %3, align 8
  %10 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %11 = call i64 @octeon_alloc_soft_command(%struct.octeon_device* %10, i32 0, i32 16, i32 0)
  %12 = inttoptr i64 %11 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %12, %struct.octeon_soft_command** %4, align 8
  %13 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %4, align 8
  %14 = icmp ne %struct.octeon_soft_command* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %110

23:                                               ; preds = %1
  %24 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %4, align 8
  %25 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.oct_nic_vf_stats_resp*
  store %struct.oct_nic_vf_stats_resp* %27, %struct.oct_nic_vf_stats_resp** %5, align 8
  %28 = load %struct.oct_nic_vf_stats_resp*, %struct.oct_nic_vf_stats_resp** %5, align 8
  %29 = call i32 @memset(%struct.oct_nic_vf_stats_resp* %28, i32 0, i32 16)
  %30 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %4, align 8
  %31 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %30, i32 0, i32 3
  %32 = call i32 @init_completion(i32* %31)
  %33 = load i64, i64* @OCTEON_REQUEST_PENDING, align 8
  %34 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %4, align 8
  %35 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.lio*, %struct.lio** %2, align 8
  %37 = getelementptr inbounds %struct.lio, %struct.lio* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %4, align 8
  %45 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %47 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %4, align 8
  %48 = load i32, i32* @OPCODE_NIC, align 4
  %49 = load i32, i32* @OPCODE_NIC_VF_PORT_STATS, align 4
  %50 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %46, %struct.octeon_soft_command* %47, i32 %48, i32 %49, i32 0, i32 0, i32 0)
  %51 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %52 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %4, align 8
  %53 = call i32 @octeon_send_soft_command(%struct.octeon_device* %51, %struct.octeon_soft_command* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @IQ_SEND_FAILED, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %23
  %58 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %59 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %4, align 8
  %60 = call i32 @octeon_free_soft_command(%struct.octeon_device* %58, %struct.octeon_soft_command* %59)
  br label %110

61:                                               ; preds = %23
  %62 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %63 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %4, align 8
  %64 = load i32, i32* @LIO_SC_MAX_TMO_MS, align 4
  %65 = mul nsw i32 2, %64
  %66 = call i32 @wait_for_sc_completion_timeout(%struct.octeon_device* %62, %struct.octeon_soft_command* %63, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %71 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %110

75:                                               ; preds = %61
  %76 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %4, align 8
  %77 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @OCTEON_REQUEST_TIMEOUT, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %75
  %82 = load %struct.oct_nic_vf_stats_resp*, %struct.oct_nic_vf_stats_resp** %5, align 8
  %83 = getelementptr inbounds %struct.oct_nic_vf_stats_resp, %struct.oct_nic_vf_stats_resp* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %81
  %87 = load %struct.oct_nic_vf_stats_resp*, %struct.oct_nic_vf_stats_resp** %5, align 8
  %88 = getelementptr inbounds %struct.oct_nic_vf_stats_resp, %struct.oct_nic_vf_stats_resp* %87, i32 0, i32 0
  %89 = bitcast i64* %88 to i32*
  %90 = call i32 @octeon_swap_8B_data(i32* %89, i32 0)
  %91 = load %struct.oct_nic_vf_stats_resp*, %struct.oct_nic_vf_stats_resp** %5, align 8
  %92 = getelementptr inbounds %struct.oct_nic_vf_stats_resp, %struct.oct_nic_vf_stats_resp* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %97 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.oct_nic_vf_stats_resp*, %struct.oct_nic_vf_stats_resp** %5, align 8
  %101 = getelementptr inbounds %struct.oct_nic_vf_stats_resp, %struct.oct_nic_vf_stats_resp* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @dev_warn(i32* %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %95, %86
  br label %105

105:                                              ; preds = %104, %81, %75
  %106 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %4, align 8
  %107 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @WRITE_ONCE(i32 %108, i32 1)
  br label %110

110:                                              ; preds = %105, %69, %57, %15
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i64 @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memset(%struct.oct_nic_vf_stats_resp*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @octeon_send_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @wait_for_sc_completion_timeout(%struct.octeon_device*, %struct.octeon_soft_command*, i32) #1

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
