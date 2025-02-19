; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_config_netdev_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_config_netdev_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.TYPE_6__, %struct.i40e_pf*, %struct.net_device* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.i40e_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { %struct.i40e_dcbx_config }
%struct.i40e_dcbx_config = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.net_device = type { i32 }

@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@I40E_FLAG_TC_MQPRIO = common dso_local global i32 0, align 4
@I40E_MAX_USER_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*, i64)* @i40e_vsi_config_netdev_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vsi_config_netdev_tc(%struct.i40e_vsi* %0, i64 %1) #0 {
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_dcbx_config*, align 8
  %11 = alloca i64, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 2
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 1
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %6, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 1
  store %struct.i40e_hw* %19, %struct.i40e_hw** %7, align 8
  store i64 0, i64* %8, align 8
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 0
  store %struct.i40e_dcbx_config* %21, %struct.i40e_dcbx_config** %10, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %125

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call i32 @netdev_reset_tc(%struct.net_device* %29)
  br label %125

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @netdev_set_num_tc(%struct.net_device* %32, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %125

40:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %85, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %88

45:                                               ; preds = %41
  %46 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %47 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %45
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %57 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %66 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %75 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @netdev_set_tc_queue(%struct.net_device* %55, i64 %64, i32 %73, i32 %82)
  br label %84

84:                                               ; preds = %54, %45
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %41

88:                                               ; preds = %41
  %89 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %90 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @I40E_FLAG_TC_MQPRIO, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %125

96:                                               ; preds = %88
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %122, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @I40E_MAX_USER_PRIORITY, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %97
  %102 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %10, align 8
  %103 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %11, align 8
  %110 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %111 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %8, align 8
  %118 = load %struct.net_device*, %struct.net_device** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @netdev_set_prio_tc_map(%struct.net_device* %118, i32 %119, i64 %120)
  br label %122

122:                                              ; preds = %101
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %97

125:                                              ; preds = %24, %28, %39, %95, %97
  ret void
}

declare dso_local i32 @netdev_reset_tc(%struct.net_device*) #1

declare dso_local i64 @netdev_set_num_tc(%struct.net_device*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i64, i32, i32) #1

declare dso_local i32 @netdev_set_prio_tc_map(%struct.net_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
