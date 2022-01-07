; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_82571.c_e1000_setup_copper_link_82571.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_82571.c_e1000_setup_copper_link_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_copper_link_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_copper_link_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load i32, i32* @CTRL, align 4
  %7 = call i32 @er32(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @E1000_CTRL_SLU, align 4
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %12 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @CTRL, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ew32(i32 %17, i32 %18)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %30 [
    i32 128, label %24
    i32 130, label %24
    i32 129, label %27
  ]

24:                                               ; preds = %1, %1
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = call i64 @e1000e_copper_link_setup_m88(%struct.e1000_hw* %25)
  store i64 %26, i64* %5, align 8
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = call i64 @e1000e_copper_link_setup_igp(%struct.e1000_hw* %28)
  store i64 %29, i64* %5, align 8
  br label %33

30:                                               ; preds = %1
  %31 = load i64, i64* @E1000_ERR_PHY, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %2, align 8
  br label %41

33:                                               ; preds = %27, %24
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %2, align 8
  br label %41

38:                                               ; preds = %33
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = call i64 @e1000e_setup_copper_link(%struct.e1000_hw* %39)
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %38, %36, %30
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000e_copper_link_setup_m88(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_copper_link_setup_igp(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_setup_copper_link(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
