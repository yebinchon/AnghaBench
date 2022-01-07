; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_fc_backplane_x550em_a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_fc_backplane_x550em_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [49 x i8] c"ixgbe_fc_rx_pause not valid in strict IEEE mode\0A\00", align 1
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i64 0, align 8
@ixgbe_fc_default = common dso_local global i32 0, align 4
@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Auto-Negotiation did not complete\0A\00", align 1
@IXGBE_KRM_AN_CNTL_1_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_KRM_AN_CNTL_1_ASM_PAUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_setup_fc_backplane_x550em_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_fc_backplane_x550em_a(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 129
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = call i32 @hw_err(%struct.ixgbe_hw* %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 8
  store i64 %20, i64* %2, align 8
  br label %102

21:                                               ; preds = %11, %1
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ixgbe_fc_default, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 131, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %21
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %36, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = bitcast %struct.ixgbe_hw* %38 to %struct.ixgbe_hw.1*
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @IXGBE_KRM_AN_CNTL_1(i32 %43)
  %45 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %46 = call i64 %37(%struct.ixgbe_hw.1* %39, i32 %44, i32 %45, i32* %5)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %32
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %51 = call i32 @hw_dbg(%struct.ixgbe_hw* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i64, i64* %4, align 8
  store i64 %52, i64* %2, align 8
  br label %102

53:                                               ; preds = %32
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %79 [
    i32 130, label %58
    i32 128, label %65
    i32 129, label %73
    i32 131, label %73
  ]

58:                                               ; preds = %53
  %59 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_SYM_PAUSE, align 4
  %60 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_ASM_PAUSE, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %83

65:                                               ; preds = %53
  %66 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_ASM_PAUSE, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_SYM_PAUSE, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %83

73:                                               ; preds = %53, %53
  %74 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_SYM_PAUSE, align 4
  %75 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_ASM_PAUSE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %83

79:                                               ; preds = %53
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %81 = call i32 @hw_err(%struct.ixgbe_hw* %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i64, i64* @IXGBE_ERR_CONFIG, align 8
  store i64 %82, i64* %2, align 8
  br label %102

83:                                               ; preds = %73, %65, %58
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %87, align 8
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %90 = bitcast %struct.ixgbe_hw* %89 to %struct.ixgbe_hw.0*
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %92 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @IXGBE_KRM_AN_CNTL_1(i32 %94)
  %96 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i64 %88(%struct.ixgbe_hw.0* %90, i32 %95, i32 %96, i32 %97)
  store i64 %98, i64* %4, align 8
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %100 = call i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw* %99)
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* %4, align 8
  store i64 %101, i64* %2, align 8
  br label %102

102:                                              ; preds = %83, %79, %49, %17
  %103 = load i64, i64* %2, align 8
  ret i64 %103
}

declare dso_local i32 @hw_err(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @IXGBE_KRM_AN_CNTL_1(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
