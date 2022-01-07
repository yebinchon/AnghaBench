; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ee.c_ixgb_wait_eeprom_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ee.c_ixgb_wait_eeprom_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@EECD = common dso_local global i32 0, align 4
@IXGB_EECD_DO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_hw*)* @ixgb_wait_eeprom_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_wait_eeprom_command(%struct.ixgb_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgb_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %3, align 8
  %6 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %7 = call i32 @ixgb_standby_eeprom(%struct.ixgb_hw* %6)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 200
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %13 = load i32, i32* @EECD, align 4
  %14 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @IXGB_EECD_DO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %27

20:                                               ; preds = %11
  %21 = call i32 @udelay(i32 50)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %8

25:                                               ; preds = %8
  %26 = call i32 @ASSERT(i32 0)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @ixgb_standby_eeprom(%struct.ixgb_hw*) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
