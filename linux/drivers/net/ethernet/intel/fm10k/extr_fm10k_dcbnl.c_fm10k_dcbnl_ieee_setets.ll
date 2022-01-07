; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_dcbnl.c_fm10k_dcbnl_ieee_setets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_dcbnl.c_fm10k_dcbnl_ieee_setets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_ets = type { i64*, i32*, i64*, i64* }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE_8021QAZ_TSA_STRICT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_ets*)* @fm10k_dcbnl_ieee_setets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_dcbnl_ieee_setets(%struct.net_device* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %66, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %69

13:                                               ; preds = %9
  %14 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %15 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %14, i32 0, i32 3
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %13
  %23 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %24 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22, %13
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %116

34:                                               ; preds = %22
  %35 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %36 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IEEE_8021QAZ_TSA_STRICT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %116

47:                                               ; preds = %34
  %48 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %49 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %59 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %57, %47
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %9

69:                                               ; preds = %9
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %116

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = call i32 @netdev_get_num_tc(%struct.net_device* %84)
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @fm10k_setup_tc(%struct.net_device* %88, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %116

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %82
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %112, %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %105 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @netdev_set_prio_tc_map(%struct.net_device* %102, i32 %103, i32 %110)
  br label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %97

115:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %93, %79, %44, %31
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @netdev_get_num_tc(%struct.net_device*) #1

declare dso_local i32 @fm10k_setup_tc(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_set_prio_tc_map(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
