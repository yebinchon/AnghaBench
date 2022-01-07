; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_ethtool.c___iavf_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_ethtool.c___iavf_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i64, i64, i64 }
%struct.iavf_adapter = type { i32, %struct.iavf_vsi }
%struct.iavf_vsi = type { i64 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"rx-usecs=0, need to disable adaptive-rx for a complete disable\0A\00", align 1
@IAVF_MIN_ITR = common dso_local global i64 0, align 8
@IAVF_MAX_ITR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid value, rx-usecs range is 0-8160\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"tx-usecs=0, need to disable adaptive-tx for a complete disable\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Invalid value, tx-usecs range is 0-8160\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Invalid queue value, queue range is 0 - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*, i32)* @__iavf_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iavf_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_coalesce*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iavf_adapter*, align 8
  %9 = alloca %struct.iavf_vsi*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.iavf_adapter* %12, %struct.iavf_adapter** %8, align 8
  %13 = load %struct.iavf_adapter*, %struct.iavf_adapter** %8, align 8
  %14 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %13, i32 0, i32 1
  store %struct.iavf_vsi* %14, %struct.iavf_vsi** %9, align 8
  %15 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %16 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19, %3
  %25 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %26 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.iavf_vsi*, %struct.iavf_vsi** %9, align 8
  %29 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %32 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.iavf_adapter*, %struct.iavf_adapter** %8, align 8
  %42 = load i32, i32* @drv, align 4
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 (%struct.iavf_adapter*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.iavf_adapter* %41, i32 %42, %struct.net_device* %43, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %35
  br label %103

46:                                               ; preds = %30
  %47 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %48 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IAVF_MIN_ITR, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %54 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IAVF_MAX_ITR, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52, %46
  %59 = load %struct.iavf_adapter*, %struct.iavf_adapter** %8, align 8
  %60 = load i32, i32* @drv, align 4
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call i32 (%struct.iavf_adapter*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.iavf_adapter* %59, i32 %60, %struct.net_device* %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %146

65:                                               ; preds = %52
  %66 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %67 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %72 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.iavf_adapter*, %struct.iavf_adapter** %8, align 8
  %77 = load i32, i32* @drv, align 4
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = call i32 (%struct.iavf_adapter*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.iavf_adapter* %76, i32 %77, %struct.net_device* %78, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %70
  br label %101

81:                                               ; preds = %65
  %82 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %83 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IAVF_MIN_ITR, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %89 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @IAVF_MAX_ITR, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %87, %81
  %94 = load %struct.iavf_adapter*, %struct.iavf_adapter** %8, align 8
  %95 = load i32, i32* @drv, align 4
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = call i32 (%struct.iavf_adapter*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.iavf_adapter* %94, i32 %95, %struct.net_device* %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %146

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %80
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102, %45
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %103
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %118, %106
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.iavf_adapter*, %struct.iavf_adapter** %8, align 8
  %110 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load %struct.iavf_adapter*, %struct.iavf_adapter** %8, align 8
  %115 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @iavf_set_itr_per_queue(%struct.iavf_adapter* %114, %struct.ethtool_coalesce* %115, i32 %116)
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %107

121:                                              ; preds = %107
  br label %145

122:                                              ; preds = %103
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.iavf_adapter*, %struct.iavf_adapter** %8, align 8
  %125 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.iavf_adapter*, %struct.iavf_adapter** %8, align 8
  %130 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @iavf_set_itr_per_queue(%struct.iavf_adapter* %129, %struct.ethtool_coalesce* %130, i32 %131)
  br label %144

133:                                              ; preds = %122
  %134 = load %struct.iavf_adapter*, %struct.iavf_adapter** %8, align 8
  %135 = load i32, i32* @drv, align 4
  %136 = load %struct.net_device*, %struct.net_device** %5, align 8
  %137 = load %struct.iavf_adapter*, %struct.iavf_adapter** %8, align 8
  %138 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 1
  %141 = call i32 (%struct.iavf_adapter*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.iavf_adapter* %134, i32 %135, %struct.net_device* %136, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %146

144:                                              ; preds = %128
  br label %145

145:                                              ; preds = %144, %121
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %133, %93, %58
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.iavf_adapter*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @iavf_set_itr_per_queue(%struct.iavf_adapter*, %struct.ethtool_coalesce*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
