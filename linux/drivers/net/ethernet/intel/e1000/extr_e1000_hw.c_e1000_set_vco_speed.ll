; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_set_vco_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_set_vco_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@M88E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@M88E1000_PHY_GEN_CONTROL = common dso_local global i32 0, align 4
@M88E1000_PHY_VCO_REG_BIT8 = common dso_local global i32 0, align 4
@M88E1000_PHY_VCO_REG_BIT11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_set_vco_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_vco_speed(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %11 [
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %1, %1
  br label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %12, i64* %2, align 8
  br label %89

13:                                               ; preds = %10
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %16 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %14, i32 %15, i32* %5)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %2, align 8
  br label %89

21:                                               ; preds = %13
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %24 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %22, i32 %23, i32 5)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %2, align 8
  br label %89

29:                                               ; preds = %21
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %32 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %30, i32 %31, i32* %6)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %2, align 8
  br label %89

37:                                               ; preds = %29
  %38 = load i32, i32* @M88E1000_PHY_VCO_REG_BIT8, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %42, i32 %43, i32 %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %2, align 8
  br label %89

50:                                               ; preds = %37
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %53 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %51, i32 %52, i32 4)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* %4, align 8
  store i64 %57, i64* %2, align 8
  br label %89

58:                                               ; preds = %50
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %61 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %59, i32 %60, i32* %6)
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i64, i64* %4, align 8
  store i64 %65, i64* %2, align 8
  br label %89

66:                                               ; preds = %58
  %67 = load i32, i32* @M88E1000_PHY_VCO_REG_BIT11, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %70, i32 %71, i32 %72)
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i64, i64* %4, align 8
  store i64 %77, i64* %2, align 8
  br label %89

78:                                               ; preds = %66
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %79, i32 %80, i32 %81)
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i64, i64* %4, align 8
  store i64 %86, i64* %2, align 8
  br label %89

87:                                               ; preds = %78
  %88 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %88, i64* %2, align 8
  br label %89

89:                                               ; preds = %87, %85, %76, %64, %56, %48, %35, %27, %19, %11
  %90 = load i64, i64* %2, align 8
  ret i64 %90
}

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
