; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_set_phy_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_set_phy_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32, i32 }

@e1000_media_type_copper = common dso_local global i32 0, align 4
@PHY_CTRL = common dso_local global i32 0, align 4
@MII_CR_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_set_phy_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_phy_loopback(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 0
  store %struct.e1000_hw* %8, %struct.e1000_hw** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %39 [
    i32 135, label %12
    i32 134, label %36
    i32 138, label %36
    i32 133, label %36
    i32 132, label %36
    i32 131, label %36
    i32 130, label %36
    i32 137, label %36
    i32 136, label %36
    i32 129, label %36
    i32 128, label %36
  ]

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @e1000_media_type_copper, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %29, %18
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %21 = call i32 @e1000_nonintegrated_phy_loopback(%struct.e1000_adapter* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = icmp slt i32 %24, 10
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %19

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 11
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %51

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %12
  br label %50

36:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %38 = call i32 @e1000_integrated_phy_loopback(%struct.e1000_adapter* %37)
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %1
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %41 = load i32, i32* @PHY_CTRL, align 4
  %42 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %40, i32 %41, i32* %5)
  %43 = load i32, i32* @MII_CR_LOOPBACK, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %47 = load i32, i32* @PHY_CTRL, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %46, i32 %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %51

50:                                               ; preds = %35
  store i32 8, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %39, %36, %33
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @e1000_nonintegrated_phy_loopback(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_integrated_phy_loopback(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
