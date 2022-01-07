; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mac.c_igb_force_mac_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mac.c_igb_force_mac_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"hw->fc.current_mode = %u\0A\00", align 1
@E1000_CTRL_TFCE = common dso_local global i32 0, align 4
@E1000_CTRL_RFCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_force_mac_fc(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @E1000_CTRL, align 4
  %6 = call i32 @rd32(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %45 [
    i32 130, label %16
    i32 129, label %23
    i32 128, label %31
    i32 131, label %39
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %18 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %1
  %24 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %1
  %32 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %1
  %40 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %41 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %1
  %46 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %53

49:                                               ; preds = %39, %31, %23, %16
  %50 = load i32, i32* @E1000_CTRL, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @wr32(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @hw_dbg(i8*, ...) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
