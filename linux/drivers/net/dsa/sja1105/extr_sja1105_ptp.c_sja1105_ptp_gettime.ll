; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ptp.c_sja1105_ptp_gettime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ptp.c_sja1105_ptp_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock_info = type { i32 }
%struct.timespec64 = type { i32 }
%struct.sja1105_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptp_clock_info*, %struct.timespec64*)* @sja1105_ptp_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_ptp_gettime(%struct.ptp_clock_info* %0, %struct.timespec64* %1) #0 {
  %3 = alloca %struct.ptp_clock_info*, align 8
  %4 = alloca %struct.timespec64*, align 8
  %5 = alloca %struct.sja1105_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec64, align 4
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %3, align 8
  store %struct.timespec64* %1, %struct.timespec64** %4, align 8
  %8 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %9 = call %struct.sja1105_private* @ptp_to_sja1105(%struct.ptp_clock_info* %8)
  store %struct.sja1105_private* %9, %struct.sja1105_private** %5, align 8
  %10 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %11 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %14 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %13, i32 0, i32 1
  %15 = call i32 @timecounter_read(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %17 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ns_to_timespec64(i32 %20)
  %22 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = bitcast %struct.timespec64* %19 to i8*
  %24 = bitcast %struct.timespec64* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  ret i32 0
}

declare dso_local %struct.sja1105_private* @ptp_to_sja1105(%struct.ptp_clock_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @timecounter_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ns_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
