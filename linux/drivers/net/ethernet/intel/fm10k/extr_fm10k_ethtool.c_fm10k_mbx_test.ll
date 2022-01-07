; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_mbx_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_mbx_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.fm10k_hw }
%struct.fm10k_hw = type { %struct.TYPE_3__, %struct.fm10k_mbx_info }
%struct.TYPE_3__ = type { i64 }
%struct.fm10k_mbx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i64*)*, i32 (%struct.fm10k_hw.2*, %struct.fm10k_mbx_info.3*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_mbx_info.1 = type opaque
%struct.fm10k_hw.2 = type opaque
%struct.fm10k_mbx_info.3 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@fm10k_mac_vf = common dso_local global i64 0, align 8
@FM10K_TEST_MSG_UNSET = common dso_local global i32 0, align 4
@FM10K_TEST_MSG_NESTED = common dso_local global i32 0, align 4
@FM10K_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_intfc*, i64*)* @fm10k_mbx_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_test(%struct.fm10k_intfc* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_intfc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.fm10k_hw*, align 8
  %7 = alloca %struct.fm10k_mbx_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [6 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %13 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %12, i32 0, i32 0
  store %struct.fm10k_hw* %13, %struct.fm10k_hw** %6, align 8
  %14 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %15 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %14, i32 0, i32 1
  store %struct.fm10k_mbx_info* %15, %struct.fm10k_mbx_info** %7, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %19 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @fm10k_mac_vf, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %112

25:                                               ; preds = %2
  %26 = load i32, i32* @FM10K_TEST_MSG_UNSET, align 4
  %27 = call i64 @BIT(i32 %26)
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %93, %25
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* @FM10K_TEST_MSG_NESTED, align 4
  %31 = mul nsw i32 2, %30
  %32 = call i64 @BIT(i32 %31)
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %97

34:                                               ; preds = %28
  %35 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 0
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @fm10k_tlv_msg_test_create(i64* %35, i64 %36)
  %38 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %39 = call i32 @fm10k_mbx_lock(%struct.fm10k_intfc* %38)
  %40 = load i32, i32* @FM10K_NOT_IMPLEMENTED, align 4
  %41 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %42 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %44 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i64*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i64*)** %45, align 8
  %47 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %48 = bitcast %struct.fm10k_hw* %47 to %struct.fm10k_hw.0*
  %49 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %50 = bitcast %struct.fm10k_mbx_info* %49 to %struct.fm10k_mbx_info.1*
  %51 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 0
  %52 = call i32 %46(%struct.fm10k_hw.0* %48, %struct.fm10k_mbx_info.1* %50, i64* %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %54 = call i32 @fm10k_mbx_unlock(%struct.fm10k_intfc* %53)
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i64, i64* @HZ, align 8
  %57 = add i64 %55, %56
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %84, %34
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %98

62:                                               ; preds = %58
  %63 = call i32 @usleep_range(i32 500, i32 1000)
  %64 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %65 = call i32 @fm10k_mbx_lock(%struct.fm10k_intfc* %64)
  %66 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %67 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32 (%struct.fm10k_hw.2*, %struct.fm10k_mbx_info.3*)*, i32 (%struct.fm10k_hw.2*, %struct.fm10k_mbx_info.3*)** %68, align 8
  %70 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %71 = bitcast %struct.fm10k_hw* %70 to %struct.fm10k_hw.2*
  %72 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %73 = bitcast %struct.fm10k_mbx_info* %72 to %struct.fm10k_mbx_info.3*
  %74 = call i32 %69(%struct.fm10k_hw.2* %71, %struct.fm10k_mbx_info.3* %73)
  %75 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %76 = call i32 @fm10k_mbx_unlock(%struct.fm10k_intfc* %75)
  %77 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %7, align 8
  %78 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %62
  br label %88

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @time_is_after_jiffies(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %58, label %88

88:                                               ; preds = %84, %82
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %98

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %8, align 8
  br label %28

97:                                               ; preds = %28
  br label %98

98:                                               ; preds = %97, %91, %61
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i64, i64* %8, align 8
  br label %108

103:                                              ; preds = %98
  %104 = load i32, i32* %11, align 4
  %105 = icmp sgt i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = sext i32 %106 to i64
  br label %108

108:                                              ; preds = %103, %101
  %109 = phi i64 [ %102, %101 ], [ %107, %103 ]
  %110 = load i64*, i64** %5, align 8
  store i64 %109, i64* %110, align 8
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %24
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @fm10k_tlv_msg_test_create(i64*, i64) #1

declare dso_local i32 @fm10k_mbx_lock(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_mbx_unlock(%struct.fm10k_intfc*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
