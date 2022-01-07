; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_fw_dump }
%struct.qlcnic_fw_dump = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"FW dump not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"FW dump not enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Previous dump not cleared, not forcing dump\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Forcing a FW dump\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Forcing a FW reset\0A\00", align 1
@QLCNIC_FW_RESET_OWNER = common dso_local global i32 0, align 4
@__QLCNIC_MAINTENANCE_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Device is in non-operational state\0A\00", align 1
@qlcnic_fw_dump_level = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"Invalid dump level: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*)* @qlcnic_set_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_dump(%struct.net_device* %0, %struct.ethtool_dump* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_dump*, align 8
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_fw_dump*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.qlcnic_adapter* %11, %struct.qlcnic_adapter** %5, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.qlcnic_fw_dump* %15, %struct.qlcnic_fw_dump** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.ethtool_dump*, %struct.ethtool_dump** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %104 [
    i32 131, label %19
    i32 133, label %54
    i32 132, label %67
    i32 130, label %80
    i32 128, label %94
    i32 129, label %94
  ]

19:                                               ; preds = %2
  %20 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %6, align 8
  %21 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %153

29:                                               ; preds = %19
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %31 = call i32 @qlcnic_check_fw_dump_state(%struct.qlcnic_adapter* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %153

38:                                               ; preds = %29
  %39 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %6, align 8
  %40 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %153

46:                                               ; preds = %38
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %50 = load %struct.ethtool_dump*, %struct.ethtool_dump** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @qlcnic_dev_request_reset(%struct.qlcnic_adapter* %49, i32 %52)
  br label %153

54:                                               ; preds = %2
  %55 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %6, align 8
  %56 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i32 @netdev_err(%struct.net_device* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %153

64:                                               ; preds = %54
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %66 = call i32 @qlcnic_disable_fw_dump_state(%struct.qlcnic_adapter* %65)
  store i32 %66, i32* %9, align 4
  br label %153

67:                                               ; preds = %2
  %68 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %6, align 8
  %69 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = call i32 @netdev_err(%struct.net_device* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %153

77:                                               ; preds = %67
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %79 = call i32 @qlcnic_enable_fw_dump_state(%struct.qlcnic_adapter* %78)
  store i32 %79, i32* %9, align 4
  br label %153

80:                                               ; preds = %2
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %84 = load %struct.ethtool_dump*, %struct.ethtool_dump** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @qlcnic_dev_request_reset(%struct.qlcnic_adapter* %83, i32 %86)
  %88 = load i32, i32* @QLCNIC_FW_RESET_OWNER, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %91 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %153

94:                                               ; preds = %2, %2
  %95 = load i32, i32* @__QLCNIC_MAINTENANCE_MODE, align 4
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %97 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %96, i32 0, i32 0
  %98 = call i32 @test_bit(i32 %95, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %94
  br label %153

104:                                              ; preds = %2
  %105 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %6, align 8
  %106 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = call i32 @netdev_err(%struct.net_device* %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* @EOPNOTSUPP, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %9, align 4
  br label %153

114:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %132, %114
  %116 = load i32, i32* %8, align 4
  %117 = load i32*, i32** @qlcnic_fw_dump_level, align 8
  %118 = call i32 @ARRAY_SIZE(i32* %117)
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load %struct.ethtool_dump*, %struct.ethtool_dump** %4, align 8
  %122 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** @qlcnic_fw_dump_level, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %123, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  store i32 1, i32* %7, align 4
  br label %135

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %115

135:                                              ; preds = %130, %115
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %140 = load %struct.ethtool_dump*, %struct.ethtool_dump** %4, align 8
  %141 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @qlcnic_set_dump_mask(%struct.qlcnic_adapter* %139, i32 %142)
  store i32 %143, i32* %9, align 4
  br label %152

144:                                              ; preds = %135
  %145 = load %struct.net_device*, %struct.net_device** %3, align 8
  %146 = load %struct.ethtool_dump*, %struct.ethtool_dump** %4, align 8
  %147 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %144, %138
  br label %153

153:                                              ; preds = %152, %109, %103, %80, %77, %72, %64, %59, %46, %43, %33, %24
  %154 = load i32, i32* %9, align 4
  ret i32 %154
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @qlcnic_check_fw_dump_state(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @qlcnic_dev_request_reset(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_disable_fw_dump_state(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_enable_fw_dump_state(%struct.qlcnic_adapter*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @qlcnic_set_dump_mask(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
