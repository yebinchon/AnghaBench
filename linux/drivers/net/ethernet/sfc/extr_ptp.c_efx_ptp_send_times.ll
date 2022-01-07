; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_send_times.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_send_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_4__*, %struct.efx_ptp_data* }
%struct.TYPE_4__ = type { i32 (%struct.efx_nic*, i32)* }
%struct.efx_ptp_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i32, i32 }

@SYNCHRONISE_PERIOD_NS = common dso_local global i32 0, align 4
@SYNCHRONISATION_GRANULARITY_NS = common dso_local global i32 0, align 4
@MC_NANOSECOND_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.pps_event_time*)* @efx_ptp_send_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ptp_send_times(%struct.efx_nic* %0, %struct.pps_event_time* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.pps_event_time*, align 8
  %5 = alloca %struct.pps_event_time, align 4
  %6 = alloca %struct.timespec64, align 4
  %7 = alloca %struct.efx_ptp_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.timespec64, align 4
  %10 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.pps_event_time* %1, %struct.pps_event_time** %4, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 1
  %13 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %12, align 8
  store %struct.efx_ptp_data* %13, %struct.efx_ptp_data** %7, align 8
  %14 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %15 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = call i32 @pps_get_ts(%struct.pps_event_time* %5)
  %19 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %20 = bitcast %struct.timespec64* %6 to i8*
  %21 = bitcast %struct.timespec64* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 8, i1 false)
  %22 = load i32, i32* @SYNCHRONISE_PERIOD_NS, align 4
  %23 = call i32 @timespec64_add_ns(%struct.timespec64* %6, i32 %22)
  br label %24

24:                                               ; preds = %54, %2
  %25 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %26 = call i64 @timespec64_compare(%struct.timespec64* %25, %struct.timespec64* %6)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @READ_ONCE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i1 [ false, %24 ], [ %32, %28 ]
  br i1 %34, label %35, label %72

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %37 = bitcast %struct.timespec64* %9 to i8*
  %38 = bitcast %struct.timespec64* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  %39 = load i32, i32* @SYNCHRONISATION_GRANULARITY_NS, align 4
  %40 = call i32 @timespec64_add_ns(%struct.timespec64* %9, i32 %39)
  br label %41

41:                                               ; preds = %52, %35
  %42 = call i32 @pps_get_ts(%struct.pps_event_time* %5)
  br label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %45 = call i64 @timespec64_compare(%struct.timespec64* %44, %struct.timespec64* %9)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @READ_ONCE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i1 [ false, %43 ], [ %51, %47 ]
  br i1 %53, label %41, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %56 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MC_NANOSECOND_BITS, align 4
  %59 = shl i32 %57, %58
  %60 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %61 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %59, %62
  store i32 %63, i32* %10, align 4
  %64 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %65 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (%struct.efx_nic*, i32)*, i32 (%struct.efx_nic*, i32)** %67, align 8
  %69 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 %68(%struct.efx_nic* %69, i32 %70)
  br label %24

72:                                               ; preds = %33
  %73 = load %struct.pps_event_time*, %struct.pps_event_time** %4, align 8
  %74 = bitcast %struct.pps_event_time* %73 to i8*
  %75 = bitcast %struct.pps_event_time* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 8, i1 false)
  ret void
}

declare dso_local i32 @pps_get_ts(%struct.pps_event_time*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespec64_add_ns(%struct.timespec64*, i32) #1

declare dso_local i64 @timespec64_compare(%struct.timespec64*, %struct.timespec64*) #1

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
