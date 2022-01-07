; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_set_pcie_completion_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_set_pcie_completion_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_GCR = common dso_local global i32 0, align 4
@E1000_GCR_CMPL_TMOUT_MASK = common dso_local global i32 0, align 4
@E1000_GCR_CAP_VER2 = common dso_local global i32 0, align 4
@E1000_GCR_CMPL_TMOUT_10ms = common dso_local global i32 0, align 4
@PCIE_DEVICE_CONTROL2 = common dso_local global i32 0, align 4
@PCIE_DEVICE_CONTROL2_16ms = common dso_local global i32 0, align 4
@E1000_GCR_CMPL_TMOUT_RESEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_set_pcie_completion_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_set_pcie_completion_timeout(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load i32, i32* @E1000_GCR, align 4
  %7 = call i32 @rd32(i32 %6)
  store i32 %7, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @E1000_GCR_CMPL_TMOUT_MASK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %36

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @E1000_GCR_CAP_VER2, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @E1000_GCR_CMPL_TMOUT_10ms, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %13
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = load i32, i32* @PCIE_DEVICE_CONTROL2, align 4
  %25 = call i64 @igb_read_pcie_cap_reg(%struct.e1000_hw* %23, i32 %24, i32* %5)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %36

29:                                               ; preds = %22
  %30 = load i32, i32* @PCIE_DEVICE_CONTROL2_16ms, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = load i32, i32* @PCIE_DEVICE_CONTROL2, align 4
  %35 = call i64 @igb_write_pcie_cap_reg(%struct.e1000_hw* %33, i32 %34, i32* %5)
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %29, %28, %18, %12
  %37 = load i32, i32* @E1000_GCR_CMPL_TMOUT_RESEND, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @E1000_GCR, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @wr32(i32 %41, i32 %42)
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i64 @igb_read_pcie_cap_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @igb_write_pcie_cap_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
