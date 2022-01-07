; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_80003es2lan.c_e1000_read_kmrn_reg_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_80003es2lan.c_e1000_read_kmrn_reg_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_KMRNCTRLSTA_OFFSET_SHIFT = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_REN = common dso_local global i32 0, align 4
@KMRNCTRLSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i64*)* @e1000_read_kmrn_reg_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %11 = call i64 @e1000_acquire_mac_csr_80003es2lan(%struct.e1000_hw* %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* %9, align 8
  store i64 %15, i64* %4, align 8
  br label %37

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @E1000_KMRNCTRLSTA_REN, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @KMRNCTRLSTA, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ew32(i32 %24, i32 %25)
  %27 = call i32 (...) @e1e_flush()
  %28 = call i32 @udelay(i32 2)
  %29 = load i32, i32* @KMRNCTRLSTA, align 4
  %30 = call i32 @er32(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %35 = call i32 @e1000_release_mac_csr_80003es2lan(%struct.e1000_hw* %34)
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %16, %14
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i64 @e1000_acquire_mac_csr_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_release_mac_csr_80003es2lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
