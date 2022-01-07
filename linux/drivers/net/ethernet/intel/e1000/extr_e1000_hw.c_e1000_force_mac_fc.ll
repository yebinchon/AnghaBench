; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_force_mac_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_force_mac_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i64 }

@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_TFCE = common dso_local global i32 0, align 4
@E1000_CTRL_RFCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@e1000_82542_rev2_0 = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_force_mac_fc(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %5 = load i32, i32* @CTRL, align 4
  %6 = call i32 @er32(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %39 [
    i32 130, label %10
    i32 129, label %17
    i32 128, label %25
    i32 131, label %33
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %12 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %43

17:                                               ; preds = %1
  %18 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %43

25:                                               ; preds = %1
  %26 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %43

33:                                               ; preds = %1
  %34 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %35 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %1
  %40 = call i32 @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %59

43:                                               ; preds = %33, %25, %17, %10
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @e1000_82542_rev2_0, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i32, i32* @CTRL, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ew32(i32 %55, i32 %56)
  %58 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %39
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
