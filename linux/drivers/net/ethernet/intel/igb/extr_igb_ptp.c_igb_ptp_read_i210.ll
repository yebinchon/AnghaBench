; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_read_i210.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_read_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32 }
%struct.timespec64 = type { i8*, i8* }

@E1000_SYSTIMR = common dso_local global i32 0, align 4
@E1000_SYSTIML = common dso_local global i32 0, align 4
@E1000_SYSTIMH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, %struct.timespec64*)* @igb_ptp_read_i210 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_ptp_read_i210(%struct.igb_adapter* %0, %struct.timespec64* %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.timespec64*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store %struct.timespec64* %1, %struct.timespec64** %4, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 0
  store %struct.e1000_hw* %9, %struct.e1000_hw** %5, align 8
  %10 = load i32, i32* @E1000_SYSTIMR, align 4
  %11 = call i8* @rd32(i32 %10)
  %12 = load i32, i32* @E1000_SYSTIML, align 4
  %13 = call i8* @rd32(i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i32, i32* @E1000_SYSTIMH, align 4
  %15 = call i8* @rd32(i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %18 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %21 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  ret void
}

declare dso_local i8* @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
