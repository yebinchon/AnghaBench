; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_copper_link_preconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_copper_link_preconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32, i32 }

@CTRL = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error, did not detect valid phy.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Phy ID = %x\0A\00", align 1
@e1000_82545_rev_3 = common dso_local global i64 0, align 8
@e1000_82546_rev_3 = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@e1000_82541 = common dso_local global i64 0, align 8
@e1000_82547 = common dso_local global i64 0, align 8
@e1000_82541_rev_2 = common dso_local global i64 0, align 8
@e1000_82547_rev_2 = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_copper_link_preconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_copper_link_preconfig(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load i32, i32* @CTRL, align 4
  %8 = call i32 @er32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_82543, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load i32, i32* @E1000_CTRL_SLU, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %19 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @CTRL, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ew32(i32 %24, i32 %25)
  br label %45

27:                                               ; preds = %1
  %28 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %29 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @E1000_CTRL_SLU, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @CTRL, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ew32(i32 %35, i32 %36)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = call i64 @e1000_phy_hw_reset(%struct.e1000_hw* %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %2, align 8
  br label %121

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %14
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = call i64 @e1000_detect_gig_phy(%struct.e1000_hw* %46)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %52 = load i64, i64* %5, align 8
  store i64 %52, i64* %2, align 8
  br label %121

53:                                               ; preds = %45
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = call i64 @e1000_set_phy_mode(%struct.e1000_hw* %58)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i64, i64* %5, align 8
  store i64 %63, i64* %2, align 8
  br label %121

64:                                               ; preds = %53
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @e1000_82545_rev_3, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @e1000_82546_rev_3, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70, %64
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %79 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %77, i32 %78, i32* %6)
  store i64 %79, i64* %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, 8
  store i32 %81, i32* %6, align 4
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %82, i32 %83, i32 %84)
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %76, %70
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %88 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @e1000_82543, align 8
  %91 = icmp sle i64 %89, %90
  br i1 %91, label %116, label %92

92:                                               ; preds = %86
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @e1000_82541, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %116, label %98

98:                                               ; preds = %92
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %100 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @e1000_82547, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %116, label %104

104:                                              ; preds = %98
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %106 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @e1000_82541_rev_2, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %112 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @e1000_82547_rev_2, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110, %104, %98, %92, %86
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 1
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %110
  %120 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %120, i64* %2, align 8
  br label %121

121:                                              ; preds = %119, %62, %50, %42
  %122 = load i64, i64* %2, align 8
  ret i64 %122
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_phy_hw_reset(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_detect_gig_phy(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i64 @e1000_set_phy_mode(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
