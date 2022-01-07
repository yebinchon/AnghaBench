; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_ptp.c_mv88e6xxx_ptp_gettime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_ptp.c_mv88e6xxx_ptp_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock_info = type { i32 }
%struct.timespec64 = type { i32 }
%struct.mv88e6xxx_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptp_clock_info*, %struct.timespec64*)* @mv88e6xxx_ptp_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_ptp_gettime(%struct.ptp_clock_info* %0, %struct.timespec64* %1) #0 {
  %3 = alloca %struct.ptp_clock_info*, align 8
  %4 = alloca %struct.timespec64*, align 8
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec64, align 4
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %3, align 8
  store %struct.timespec64* %1, %struct.timespec64** %4, align 8
  %8 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %9 = call %struct.mv88e6xxx_chip* @ptp_to_chip(%struct.ptp_clock_info* %8)
  store %struct.mv88e6xxx_chip* %9, %struct.mv88e6xxx_chip** %5, align 8
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %11 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %10)
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %13 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %12, i32 0, i32 0
  %14 = call i32 @timecounter_read(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %16 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %15)
  %17 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ns_to_timespec64(i32 %18)
  %20 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = bitcast %struct.timespec64* %17 to i8*
  %22 = bitcast %struct.timespec64* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  ret i32 0
}

declare dso_local %struct.mv88e6xxx_chip* @ptp_to_chip(%struct.ptp_clock_info*) #1

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @timecounter_read(i32*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

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
