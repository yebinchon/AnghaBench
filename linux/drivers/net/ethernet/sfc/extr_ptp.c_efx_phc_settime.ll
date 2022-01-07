; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_phc_settime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_phc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock_info = type { i32 }
%struct.timespec64 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptp_clock_info*, %struct.timespec64*)* @efx_phc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_phc_settime(%struct.ptp_clock_info* %0, %struct.timespec64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptp_clock_info*, align 8
  %5 = alloca %struct.timespec64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec64, align 4
  %8 = alloca %struct.timespec64, align 4
  %9 = alloca %struct.timespec64, align 4
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %4, align 8
  store %struct.timespec64* %1, %struct.timespec64** %5, align 8
  %10 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %11 = call i32 @efx_phc_gettime(%struct.ptp_clock_info* %10, %struct.timespec64* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %18 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @timespec64_sub(i32 %19, i32 %21)
  %23 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = bitcast %struct.timespec64* %8 to i8*
  %25 = bitcast %struct.timespec64* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %27 = call i32 @timespec64_to_ns(%struct.timespec64* %8)
  %28 = call i32 @efx_phc_adjtime(%struct.ptp_clock_info* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @efx_phc_gettime(%struct.ptp_clock_info*, %struct.timespec64*) #1

declare dso_local i32 @timespec64_sub(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @efx_phc_adjtime(%struct.ptp_clock_info*, i32) #1

declare dso_local i32 @timespec64_to_ns(%struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
