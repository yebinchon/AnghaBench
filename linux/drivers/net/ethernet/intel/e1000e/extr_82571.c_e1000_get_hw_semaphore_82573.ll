; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_82571.c_e1000_get_hw_semaphore_82573.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_82571.c_e1000_get_hw_semaphore_82573.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@EXTCNF_CTRL = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP = common dso_local global i32 0, align 4
@MDIO_OWNERSHIP_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Driver can't access the PHY\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_get_hw_semaphore_82573 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_get_hw_semaphore_82573(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @EXTCNF_CTRL, align 4
  %7 = call i32 @er32(i32 %6)
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* @E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @EXTCNF_CTRL, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ew32(i32 %12, i32 %13)
  %15 = load i32, i32* @EXTCNF_CTRL, align 4
  %16 = call i32 @er32(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @E1000_EXTCNF_CTRL_MDIO_SW_OWNERSHIP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %8
  br label %30

22:                                               ; preds = %8
  %23 = call i32 @usleep_range(i32 2000, i32 4000)
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @MDIO_OWNERSHIP_TIMEOUT, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %8, label %30

30:                                               ; preds = %26, %21
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @MDIO_OWNERSHIP_TIMEOUT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = call i32 @e1000_put_hw_semaphore_82573(%struct.e1000_hw* %35)
  %37 = call i32 @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @E1000_ERR_PHY, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %2, align 8
  br label %41

40:                                               ; preds = %30
  store i64 0, i64* %2, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e1000_put_hw_semaphore_82573(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
