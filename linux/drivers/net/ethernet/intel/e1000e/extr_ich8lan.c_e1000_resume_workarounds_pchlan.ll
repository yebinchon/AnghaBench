; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_resume_workarounds_pchlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_resume_workarounds_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@e1000_pch2lan = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to init PHY flow ret_val=%d\0A\00", align 1
@e1000_phy_i217 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to setup iRST\0A\00", align 1
@I217_LPI_GPIO_CTRL = common dso_local global i32 0, align 4
@I217_LPI_GPIO_CTRL_AUTO_EN_LPI = common dso_local global i32 0, align 4
@FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@I217_MEMPWR = common dso_local global i32 0, align 4
@I217_MEMPWR_DISABLE_SMB_RELEASE = common dso_local global i32 0, align 4
@I217_PROXY_CTRL = common dso_local global i32 0, align 4
@I217_CGFREG = common dso_local global i32 0, align 4
@I217_CGFREG_ENABLE_MTA_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Error %d in resume workarounds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_resume_workarounds_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @e1000_pch2lan, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %106

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = call i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw* %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %106

20:                                               ; preds = %12
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @e1000_phy_i217, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %106

27:                                               ; preds = %20
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %31, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = bitcast %struct.e1000_hw* %33 to %struct.e1000_hw.1*
  %35 = call i64 %32(%struct.e1000_hw.1* %34)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %106

40:                                               ; preds = %27
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = load i32, i32* @I217_LPI_GPIO_CTRL, align 4
  %43 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %41, i32 %42, i32* %4)
  %44 = load i32, i32* @I217_LPI_GPIO_CTRL_AUTO_EN_LPI, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = load i32, i32* @I217_LPI_GPIO_CTRL, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @FWSM, align 4
  %53 = call i32 @er32(i32 %52)
  %54 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %40
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = load i32, i32* @I217_MEMPWR, align 4
  %60 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %58, i32 %59, i32* %4)
  store i64 %60, i64* %3, align 8
  %61 = load i64, i64* %3, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %91

64:                                               ; preds = %57
  %65 = load i32, i32* @I217_MEMPWR_DISABLE_SMB_RELEASE, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %69 = load i32, i32* @I217_MEMPWR, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %68, i32 %69, i32 %70)
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = load i32, i32* @I217_PROXY_CTRL, align 4
  %74 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %72, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %64, %40
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %77 = load i32, i32* @I217_CGFREG, align 4
  %78 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %76, i32 %77, i32* %4)
  store i64 %78, i64* %3, align 8
  %79 = load i64, i64* %3, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %91

82:                                               ; preds = %75
  %83 = load i32, i32* @I217_CGFREG_ENABLE_MTA_RESET, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %88 = load i32, i32* @I217_CGFREG, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %82, %81, %63
  %92 = load i64, i64* %3, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* %3, align 8
  %96 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %101, align 8
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %104 = bitcast %struct.e1000_hw* %103 to %struct.e1000_hw.0*
  %105 = call i32 %102(%struct.e1000_hw.0* %104)
  br label %106

106:                                              ; preds = %11, %17, %38, %97, %20
  ret void
}

declare dso_local i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i64 @e1e_rphy_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1e_wphy_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
