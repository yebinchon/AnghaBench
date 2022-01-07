; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_fc_autoneg_backplane_x550em_a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_fc_autoneg_backplane_x550em_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_ERR_FC_NOT_NEGOTIATED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Flow control autoneg is disabled\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"The link is down\00", align 1
@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_KRM_LINK_S1_MAC_AN_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Auto-Negotiation did not complete\0A\00", align 1
@IXGBE_KRM_AN_CNTL_1_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_KRM_AN_CNTL_1_ASM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_KRM_LP_BASE_PAGE_HIGH_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_KRM_LP_BASE_PAGE_HIGH_ASM_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_fc_autoneg_backplane_x550em_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_fc_autoneg_backplane_x550em_a(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %9 = load i64, i64* @IXGBE_ERR_FC_NOT_NEGOTIATED, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = call i32 @hw_err(%struct.ixgbe_hw* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %107

18:                                               ; preds = %1
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)** %22, align 8
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = bitcast %struct.ixgbe_hw* %24 to %struct.ixgbe_hw.1*
  %26 = call i32 %23(%struct.ixgbe_hw.1* %25, i32* %7, i32* %8, i32 0)
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %31 = call i32 @hw_err(%struct.ixgbe_hw* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %107

32:                                               ; preds = %18
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %36, align 8
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = bitcast %struct.ixgbe_hw* %38 to %struct.ixgbe_hw.0*
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @IXGBE_KRM_LINK_S1(i32 %43)
  %45 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %46 = call i64 %37(%struct.ixgbe_hw.0* %39, i32 %44, i32 %45, i32* %3)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @IXGBE_KRM_LINK_S1_MAC_AN_COMPLETE, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %32
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %56 = call i32 @hw_dbg(%struct.ixgbe_hw* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i64, i64* @IXGBE_ERR_FC_NOT_NEGOTIATED, align 8
  store i64 %57, i64* %6, align 8
  br label %107

58:                                               ; preds = %49
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %62, align 8
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %65 = bitcast %struct.ixgbe_hw* %64 to %struct.ixgbe_hw.0*
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %67 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @IXGBE_KRM_AN_CNTL_1(i32 %69)
  %71 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %72 = call i64 %63(%struct.ixgbe_hw.0* %65, i32 %70, i32 %71, i32* %5)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %58
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %77 = call i32 @hw_dbg(%struct.ixgbe_hw* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %107

78:                                               ; preds = %58
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %80 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %82, align 8
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %85 = bitcast %struct.ixgbe_hw* %84 to %struct.ixgbe_hw.0*
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @IXGBE_KRM_LP_BASE_PAGE_HIGH(i32 %89)
  %91 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %92 = call i64 %83(%struct.ixgbe_hw.0* %85, i32 %90, i32 %91, i32* %4)
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %78
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %97 = call i32 @hw_dbg(%struct.ixgbe_hw* %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %107

98:                                               ; preds = %78
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_SYM_PAUSE, align 4
  %103 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_ASM_PAUSE, align 4
  %104 = load i32, i32* @IXGBE_KRM_LP_BASE_PAGE_HIGH_SYM_PAUSE, align 4
  %105 = load i32, i32* @IXGBE_KRM_LP_BASE_PAGE_HIGH_ASM_PAUSE, align 4
  %106 = call i64 @ixgbe_negotiate_fc(%struct.ixgbe_hw* %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %98, %95, %75, %54, %29, %15
  %108 = load i64, i64* %6, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %112 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %125

114:                                              ; preds = %107
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %119 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %123 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 8
  br label %125

125:                                              ; preds = %114, %110
  ret void
}

declare dso_local i32 @hw_err(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @IXGBE_KRM_LINK_S1(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @IXGBE_KRM_AN_CNTL_1(i32) #1

declare dso_local i32 @IXGBE_KRM_LP_BASE_PAGE_HIGH(i32) #1

declare dso_local i64 @ixgbe_negotiate_fc(%struct.ixgbe_hw*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
