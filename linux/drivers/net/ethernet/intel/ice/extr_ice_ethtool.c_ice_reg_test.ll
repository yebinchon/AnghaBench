; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_reg_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_reg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ice_hw* }
%struct.ice_hw = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ice_diag_reg_test_info = type { i32, i32, i32, i32 }
%struct.ice_diag_reg_test_info.0 = type { i32, i32, i32, i32 }

@GLINT_CTL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Register test\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ice_reg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_reg_test(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ice_netdev_priv*, align 8
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x %struct.ice_diag_reg_test_info], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ice_netdev_priv* %13, %struct.ice_netdev_priv** %4, align 8
  %14 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %4, align 8
  %15 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.ice_hw*, %struct.ice_hw** %19, align 8
  store %struct.ice_hw* %20, %struct.ice_hw** %5, align 8
  %21 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %29 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi i32 [ %33, %27 ], [ 1, %34 ]
  store i32 %36, i32* %6, align 4
  %37 = getelementptr inbounds [4 x %struct.ice_diag_reg_test_info], [4 x %struct.ice_diag_reg_test_info]* %7, i64 0, i64 0
  %38 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %37, i32 0, i32 0
  %39 = call i64 @GLINT_ITR(i32 0, i32 0)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %38, align 16
  %41 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %37, i32 0, i32 1
  store i32 4095, i32* %41, align 4
  %42 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %37, i32 0, i32 2
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %37, i32 0, i32 3
  %45 = call i64 @GLINT_ITR(i32 0, i32 1)
  %46 = call i64 @GLINT_ITR(i32 0, i32 0)
  %47 = sub nsw i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %37, i64 1
  %50 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %49, i32 0, i32 0
  %51 = call i64 @GLINT_ITR(i32 1, i32 0)
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %50, align 16
  %53 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %49, i32 0, i32 1
  store i32 4095, i32* %53, align 4
  %54 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %49, i32 0, i32 2
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %54, align 8
  %56 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %49, i32 0, i32 3
  %57 = call i64 @GLINT_ITR(i32 1, i32 1)
  %58 = call i64 @GLINT_ITR(i32 1, i32 0)
  %59 = sub nsw i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %49, i64 1
  %62 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %61, i32 0, i32 0
  %63 = call i64 @GLINT_ITR(i32 0, i32 0)
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %62, align 16
  %65 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %61, i32 0, i32 1
  store i32 4095, i32* %65, align 4
  %66 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %61, i32 0, i32 2
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %66, align 8
  %68 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %61, i32 0, i32 3
  %69 = call i64 @GLINT_ITR(i32 2, i32 1)
  %70 = call i64 @GLINT_ITR(i32 2, i32 0)
  %71 = sub nsw i64 %69, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %61, i64 1
  %74 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %73, i32 0, i32 0
  %75 = load i64, i64* @GLINT_CTL, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %74, align 16
  %77 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %73, i32 0, i32 1
  store i32 -65535, i32* %77, align 4
  %78 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %73, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %73, i32 0, i32 3
  store i32 0, i32* %79, align 4
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = call i32 @netdev_dbg(%struct.net_device* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %127, %35
  %83 = load i32, i32* %8, align 4
  %84 = getelementptr inbounds [4 x %struct.ice_diag_reg_test_info], [4 x %struct.ice_diag_reg_test_info]* %7, i64 0, i64 0
  %85 = bitcast %struct.ice_diag_reg_test_info* %84 to %struct.ice_diag_reg_test_info.0*
  %86 = call i32 @ARRAY_SIZE(%struct.ice_diag_reg_test_info.0* %85)
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %130

88:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %123, %88
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x %struct.ice_diag_reg_test_info], [4 x %struct.ice_diag_reg_test_info]* %7, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %90, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %89
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x %struct.ice_diag_reg_test_info], [4 x %struct.ice_diag_reg_test_info]* %7, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x %struct.ice_diag_reg_test_info], [4 x %struct.ice_diag_reg_test_info]* %7, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 16
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x %struct.ice_diag_reg_test_info], [4 x %struct.ice_diag_reg_test_info]* %7, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.ice_diag_reg_test_info, %struct.ice_diag_reg_test_info* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %108, %113
  %115 = add nsw i32 %107, %114
  store i32 %115, i32* %11, align 4
  %116 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i64 @ice_reg_pattern_test(%struct.ice_hw* %116, i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %97
  store i32 1, i32* %2, align 4
  br label %131

122:                                              ; preds = %97
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %89

126:                                              ; preds = %89
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %82

130:                                              ; preds = %82
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %121
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @GLINT_ITR(i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ice_diag_reg_test_info.0*) #1

declare dso_local i64 @ice_reg_pattern_test(%struct.ice_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
