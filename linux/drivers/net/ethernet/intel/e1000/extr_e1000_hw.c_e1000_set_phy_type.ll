; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_set_phy_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_set_phy_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32, i32 }

@e1000_undefined = common dso_local global i64 0, align 8
@E1000_ERR_PHY_TYPE = common dso_local global i32 0, align 4
@e1000_phy_m88 = common dso_local global i32 0, align 4
@e1000_82541 = common dso_local global i64 0, align 8
@e1000_82541_rev_2 = common dso_local global i64 0, align 8
@e1000_82547 = common dso_local global i64 0, align 8
@e1000_82547_rev_2 = common dso_local global i64 0, align 8
@e1000_phy_igp = common dso_local global i32 0, align 4
@e1000_phy_8211 = common dso_local global i32 0, align 4
@e1000_phy_8201 = common dso_local global i32 0, align 4
@e1000_phy_undefined = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_set_phy_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_phy_type(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @e1000_undefined, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @E1000_ERR_PHY_TYPE, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %65

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %57 [
    i32 134, label %16
    i32 133, label %16
    i32 132, label %16
    i32 131, label %16
    i32 130, label %16
    i32 135, label %20
    i32 128, label %49
    i32 129, label %53
  ]

16:                                               ; preds = %12, %12, %12, %12, %12
  %17 = load i32, i32* @e1000_phy_m88, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %63

20:                                               ; preds = %12
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @e1000_82541, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %44, label %26

26:                                               ; preds = %20
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @e1000_82541_rev_2, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @e1000_82547, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @e1000_82547_rev_2, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38, %32, %26, %20
  %45 = load i32, i32* @e1000_phy_igp, align 4
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %38
  br label %63

49:                                               ; preds = %12
  %50 = load i32, i32* @e1000_phy_8211, align 4
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  br label %63

53:                                               ; preds = %12
  %54 = load i32, i32* @e1000_phy_8201, align 4
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %63

57:                                               ; preds = %12
  %58 = load i32, i32* @e1000_phy_undefined, align 4
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @E1000_ERR_PHY_TYPE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %53, %49, %48, %16
  %64 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %57, %9
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
