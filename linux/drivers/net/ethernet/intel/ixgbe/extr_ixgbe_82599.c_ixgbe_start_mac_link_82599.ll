; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_start_mac_link_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_start_mac_link_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_KX_KR = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII = common dso_local global i64 0, align 8
@IXGBE_AUTO_NEG_TIME = common dso_local global i64 0, align 8
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_KX_AN_COMP = common dso_local global i64 0, align 8
@IXGBE_ERR_AUTONEG_NOT_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Autoneg did not complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32)* @ixgbe_start_mac_link_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_start_mac_link_82599(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %12 = call i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %18, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %21 = bitcast %struct.ixgbe_hw* %20 to %struct.ixgbe_hw.1*
  %22 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %23 = call i64 %19(%struct.ixgbe_hw.1* %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %3, align 8
  br label %101

28:                                               ; preds = %14
  store i32 1, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %31 = call i32 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw* %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %38, align 8
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %41 = bitcast %struct.ixgbe_hw* %40 to %struct.ixgbe_hw.0*
  %42 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %43 = call i32 %39(%struct.ixgbe_hw.0* %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %29
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %98

47:                                               ; preds = %44
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %49 = load i32, i32* @IXGBE_AUTOC, align 4
  %50 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %48, i32 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %53 = and i64 %51, %52
  %54 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_KX_KR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %47
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %59 = and i64 %57, %58
  %60 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %65 = and i64 %63, %64
  %66 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %62, %56, %47
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %69

69:                                               ; preds = %84, %68
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @IXGBE_AUTO_NEG_TIME, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %75 = load i32, i32* @IXGBE_LINKS, align 4
  %76 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %74, i32 %75)
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @IXGBE_LINKS_KX_AN_COMP, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %87

82:                                               ; preds = %73
  %83 = call i32 @msleep(i32 100)
  br label %84

84:                                               ; preds = %82
  %85 = load i64, i64* %8, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %8, align 8
  br label %69

87:                                               ; preds = %81, %69
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @IXGBE_LINKS_KX_AN_COMP, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* @IXGBE_ERR_AUTONEG_NOT_COMPLETE, align 8
  store i64 %93, i64* %9, align 8
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %95 = call i32 @hw_dbg(%struct.ixgbe_hw* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %87
  br label %97

97:                                               ; preds = %96, %62
  br label %98

98:                                               ; preds = %97, %44
  %99 = call i32 @msleep(i32 50)
  %100 = load i64, i64* %9, align 8
  store i64 %100, i64* %3, align 8
  br label %101

101:                                              ; preds = %98, %26
  %102 = load i64, i64* %3, align 8
  ret i64 %102
}

declare dso_local i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
