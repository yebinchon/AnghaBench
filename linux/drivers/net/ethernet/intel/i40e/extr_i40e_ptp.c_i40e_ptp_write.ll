; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.timespec64 = type { i32 }

@I40E_PRTTSYN_TIME_L = common dso_local global i32 0, align 4
@I40E_PRTTSYN_TIME_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*, %struct.timespec64*)* @i40e_ptp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_ptp_write(%struct.i40e_pf* %0, %struct.timespec64* %1) #0 {
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.timespec64*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  store %struct.timespec64* %1, %struct.timespec64** %4, align 8
  %7 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %7, i32 0, i32 0
  store %struct.i40e_hw* %8, %struct.i40e_hw** %5, align 8
  %9 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %10 = call i32 @timespec64_to_ns(%struct.timespec64* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %12 = load i32, i32* @I40E_PRTTSYN_TIME_L, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @wr32(%struct.i40e_hw* %11, i32 %12, i32 %13)
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %16 = load i32, i32* @I40E_PRTTSYN_TIME_H, align 4
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 32
  %19 = call i32 @wr32(%struct.i40e_hw* %15, i32 %16, i32 %18)
  ret void
}

declare dso_local i32 @timespec64_to_ns(%struct.timespec64*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
