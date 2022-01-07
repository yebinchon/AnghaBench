; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_fc_x550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_fc_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@.str = private unnamed_addr constant [49 x i8] c"ixgbe_fc_rx_pause not valid in strict IEEE mode\0A\00", align 1
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i32 0, align 4
@ixgbe_fc_default = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_KRM_AN_CNTL_1_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_KRM_AN_CNTL_1_ASM_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_setup_fc_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_setup_fc_x550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 129
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = call i32 @hw_err(%struct.ixgbe_hw* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 4
  store i32 %22, i32* %2, align 4
  br label %115

23:                                               ; preds = %13, %1
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ixgbe_fc_default, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 131, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %42 [
    i32 130, label %39
    i32 128, label %40
    i32 129, label %41
    i32 131, label %41
  ]

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %46

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %46

41:                                               ; preds = %34, %34
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = call i32 @hw_err(%struct.ixgbe_hw* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %45, i32* %2, align 4
  br label %115

46:                                               ; preds = %41, %40, %39
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %112 [
    i32 133, label %50
    i32 135, label %50
    i32 134, label %50
    i32 132, label %108
  ]

50:                                               ; preds = %46, %46, %46
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %54, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = bitcast %struct.ixgbe_hw* %56 to %struct.ixgbe_hw.1*
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @IXGBE_KRM_AN_CNTL_1(i32 %61)
  %63 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %64 = call i32 %55(%struct.ixgbe_hw.1* %57, i32 %62, i32 %63, i32* %6)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %115

69:                                               ; preds = %50
  %70 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_SYM_PAUSE, align 4
  %71 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_ASM_PAUSE, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_SYM_PAUSE, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %69
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* @IXGBE_KRM_AN_CNTL_1_ASM_PAUSE, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %91 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %93, align 8
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %96 = bitcast %struct.ixgbe_hw* %95 to %struct.ixgbe_hw.0*
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %98 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @IXGBE_KRM_AN_CNTL_1(i32 %100)
  %102 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 %94(%struct.ixgbe_hw.0* %96, i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  br label %113

108:                                              ; preds = %46
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  br label %113

112:                                              ; preds = %46
  br label %113

113:                                              ; preds = %112, %108, %89
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %67, %42, %19
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @hw_err(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @IXGBE_KRM_AN_CNTL_1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
