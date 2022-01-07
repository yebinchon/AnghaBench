; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000e_igp3_phy_powerdown_workaround_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000e_igp3_phy_powerdown_workaround_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@PHY_CTRL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_GBE_DISABLE = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_GBE_DISABLE = common dso_local global i32 0, align 4
@e1000_ich8lan = common dso_local global i64 0, align 8
@IGP3_VR_CTRL = common dso_local global i32 0, align 4
@IGP3_VR_CTRL_DEV_POWERDOWN_MODE_MASK = common dso_local global i32 0, align 4
@IGP3_VR_CTRL_MODE_SHUTDOWN = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_igp3_phy_powerdown_workaround_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_phy_igp_3, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %74

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %71, %13
  %15 = load i32, i32* @PHY_CTRL, align 4
  %16 = call i32 @er32(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @E1000_PHY_CTRL_GBE_DISABLE, align 4
  %18 = load i32, i32* @E1000_PHY_CTRL_NOND0A_GBE_DISABLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @PHY_CTRL, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ew32(i32 %22, i32 %23)
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @e1000_ich8lan, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %14
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %33 = call i32 @e1000e_gig_downshift_workaround_ich8lan(%struct.e1000_hw* %32)
  br label %34

34:                                               ; preds = %31, %14
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = load i32, i32* @IGP3_VR_CTRL, align 4
  %37 = call i32 @e1e_rphy(%struct.e1000_hw* %35, i32 %36, i32* %4)
  %38 = load i32, i32* @IGP3_VR_CTRL_DEV_POWERDOWN_MODE_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = load i32, i32* @IGP3_VR_CTRL, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @IGP3_VR_CTRL_MODE_SHUTDOWN, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @e1e_wphy(%struct.e1000_hw* %42, i32 %43, i32 %46)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = load i32, i32* @IGP3_VR_CTRL, align 4
  %50 = call i32 @e1e_rphy(%struct.e1000_hw* %48, i32 %49, i32* %4)
  %51 = load i32, i32* @IGP3_VR_CTRL_DEV_POWERDOWN_MODE_MASK, align 4
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @IGP3_VR_CTRL_MODE_SHUTDOWN, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %34
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %34
  br label %74

61:                                               ; preds = %57
  %62 = load i32, i32* @CTRL, align 4
  %63 = call i32 @er32(i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* @CTRL, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @ew32(i32 %64, i32 %67)
  %69 = load i64, i64* %5, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %61
  %72 = load i64, i64* %5, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %14, label %74

74:                                               ; preds = %12, %71, %60
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000e_gig_downshift_workaround_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
