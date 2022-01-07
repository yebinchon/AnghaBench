; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_reset_init_script_82575.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_reset_init_script_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_82575 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Running reset init script for 82575\0A\00", align 1
@E1000_SCTL = common dso_local global i32 0, align 4
@E1000_CCMCTL = common dso_local global i32 0, align 4
@E1000_GIOCTL = common dso_local global i32 0, align 4
@E1000_SCCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @igb_reset_init_script_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_reset_init_script_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %3 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %4 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @e1000_82575, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %1
  %10 = call i32 @hw_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = load i32, i32* @E1000_SCTL, align 4
  %13 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %11, i32 %12, i32 0, i32 12)
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = load i32, i32* @E1000_SCTL, align 4
  %16 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %14, i32 %15, i32 1, i32 120)
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = load i32, i32* @E1000_SCTL, align 4
  %19 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %17, i32 %18, i32 27, i32 35)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = load i32, i32* @E1000_SCTL, align 4
  %22 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %20, i32 %21, i32 35, i32 21)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = load i32, i32* @E1000_CCMCTL, align 4
  %25 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %23, i32 %24, i32 20, i32 0)
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = load i32, i32* @E1000_CCMCTL, align 4
  %28 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %26, i32 %27, i32 16, i32 0)
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = load i32, i32* @E1000_GIOCTL, align 4
  %31 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %29, i32 %30, i32 0, i32 236)
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %33 = load i32, i32* @E1000_GIOCTL, align 4
  %34 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %32, i32 %33, i32 97, i32 223)
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = load i32, i32* @E1000_GIOCTL, align 4
  %37 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %35, i32 %36, i32 52, i32 5)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = load i32, i32* @E1000_GIOCTL, align 4
  %40 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %38, i32 %39, i32 47, i32 129)
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = load i32, i32* @E1000_SCCTL, align 4
  %43 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %41, i32 %42, i32 2, i32 71)
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = load i32, i32* @E1000_SCCTL, align 4
  %46 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %44, i32 %45, i32 20, i32 0)
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = load i32, i32* @E1000_SCCTL, align 4
  %49 = call i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw* %47, i32 %48, i32 16, i32 0)
  br label %50

50:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @igb_write_8bit_ctrl_reg(%struct.e1000_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
