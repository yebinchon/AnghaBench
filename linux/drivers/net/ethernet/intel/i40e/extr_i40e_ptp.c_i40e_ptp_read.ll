; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.timespec64 = type { i32 }
%struct.ptp_system_timestamp = type { i32 }

@I40E_PRTTSYN_TIME_L = common dso_local global i32 0, align 4
@I40E_PRTTSYN_TIME_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*, %struct.timespec64*, %struct.ptp_system_timestamp*)* @i40e_ptp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_ptp_read(%struct.i40e_pf* %0, %struct.timespec64* %1, %struct.ptp_system_timestamp* %2) #0 {
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca %struct.timespec64*, align 8
  %6 = alloca %struct.ptp_system_timestamp*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec64, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store %struct.timespec64* %1, %struct.timespec64** %5, align 8
  store %struct.ptp_system_timestamp* %2, %struct.ptp_system_timestamp** %6, align 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 0
  store %struct.i40e_hw* %13, %struct.i40e_hw** %7, align 8
  %14 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %6, align 8
  %15 = call i32 @ptp_read_system_prets(%struct.ptp_system_timestamp* %14)
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %17 = load i32, i32* @I40E_PRTTSYN_TIME_L, align 4
  %18 = call i32 @rd32(%struct.i40e_hw* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %6, align 8
  %20 = call i32 @ptp_read_system_postts(%struct.ptp_system_timestamp* %19)
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %22 = load i32, i32* @I40E_PRTTSYN_TIME_H, align 4
  %23 = call i32 @rd32(%struct.i40e_hw* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %24, 32
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @ns_to_timespec64(i32 %29)
  %31 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %11, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = bitcast %struct.timespec64* %28 to i8*
  %33 = bitcast %struct.timespec64* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  ret void
}

declare dso_local i32 @ptp_read_system_prets(%struct.ptp_system_timestamp*) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @ptp_read_system_postts(%struct.ptp_system_timestamp*) #1

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
