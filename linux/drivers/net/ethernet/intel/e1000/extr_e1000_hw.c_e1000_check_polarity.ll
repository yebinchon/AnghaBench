; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_check_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_check_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64 }

@e1000_phy_m88 = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_REV_POLARITY = common dso_local global i32 0, align 4
@M88E1000_PSSR_REV_POLARITY_SHIFT = common dso_local global i32 0, align 4
@e1000_rev_polarity_reversed = common dso_local global i32 0, align 4
@e1000_rev_polarity_normal = common dso_local global i32 0, align 4
@e1000_phy_igp = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_1000MBPS = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PCS_INIT_REG = common dso_local global i32 0, align 4
@IGP01E1000_PHY_POLARITY_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_POLARITY_REVERSED = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32*)* @e1000_check_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_check_polarity(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_phy_m88, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %15 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %16 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %14, i32 %15, i32* %7)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %3, align 8
  br label %91

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @M88E1000_PSSR_REV_POLARITY, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @M88E1000_PSSR_REV_POLARITY_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @e1000_rev_polarity_reversed, align 4
  br label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @e1000_rev_polarity_normal, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %89

35:                                               ; preds = %2
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @e1000_phy_igp, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %88

41:                                               ; preds = %35
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %43 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  %44 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %42, i32 %43, i32* %7)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %3, align 8
  br label %91

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IGP01E1000_PSSR_SPEED_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @IGP01E1000_PSSR_SPEED_1000MBPS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %49
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %57 = load i32, i32* @IGP01E1000_PHY_PCS_INIT_REG, align 4
  %58 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %56, i32 %57, i32* %7)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %3, align 8
  br label %91

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @IGP01E1000_PHY_POLARITY_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @e1000_rev_polarity_reversed, align 4
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @e1000_rev_polarity_normal, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  br label %87

75:                                               ; preds = %49
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @IGP01E1000_PSSR_POLARITY_REVERSED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @e1000_rev_polarity_reversed, align 4
  br label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @e1000_rev_polarity_normal, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %72
  br label %88

88:                                               ; preds = %87, %35
  br label %89

89:                                               ; preds = %88, %32
  %90 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %89, %61, %47, %19
  %92 = load i64, i64* %3, align 8
  ret i64 %92
}

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
