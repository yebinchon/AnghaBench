; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sysfs.c_ixgbe_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sysfs.c_ixgbe_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_12__*, %struct.TYPE_13__, %struct.hwmon_buff* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_13__*)* }
%struct.hwmon_buff = type { %struct.TYPE_14__**, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IXGBE_MAX_SENSORS = common dso_local global i32 0, align 4
@IXGBE_HWMON_TYPE_CAUTION = common dso_local global i32 0, align 4
@IXGBE_HWMON_TYPE_LOC = common dso_local global i32 0, align 4
@IXGBE_HWMON_TYPE_TEMP = common dso_local global i32 0, align 4
@IXGBE_HWMON_TYPE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ixgbe\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_sysfs_init(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.hwmon_buff*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %11, align 8
  %13 = icmp eq i64 (%struct.TYPE_13__*)* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %126

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %20, align 8
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 1
  %24 = call i64 %21(%struct.TYPE_13__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %126

27:                                               ; preds = %15
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.hwmon_buff* @devm_kzalloc(i32* %31, i32 16, i32 %32)
  store %struct.hwmon_buff* %33, %struct.hwmon_buff** %3, align 8
  %34 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %35 = icmp eq %struct.hwmon_buff* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %126

39:                                               ; preds = %27
  %40 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %41, i32 0, i32 2
  store %struct.hwmon_buff* %40, %struct.hwmon_buff** %42, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %94, %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @IXGBE_MAX_SENSORS, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %97

47:                                               ; preds = %43
  %48 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %94

61:                                               ; preds = %47
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @IXGBE_HWMON_TYPE_CAUTION, align 4
  %65 = call i32 @ixgbe_add_hwmon_attr(%struct.ixgbe_adapter* %62, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %126

69:                                               ; preds = %61
  %70 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @IXGBE_HWMON_TYPE_LOC, align 4
  %73 = call i32 @ixgbe_add_hwmon_attr(%struct.ixgbe_adapter* %70, i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %126

77:                                               ; preds = %69
  %78 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @IXGBE_HWMON_TYPE_TEMP, align 4
  %81 = call i32 @ixgbe_add_hwmon_attr(%struct.ixgbe_adapter* %78, i32 %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %126

85:                                               ; preds = %77
  %86 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @IXGBE_HWMON_TYPE_MAX, align 4
  %89 = call i32 @ixgbe_add_hwmon_attr(%struct.ixgbe_adapter* %86, i32 %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %126

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %60
  %95 = load i32, i32* %5, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %43

97:                                               ; preds = %43
  %98 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %99 = getelementptr inbounds %struct.hwmon_buff, %struct.hwmon_buff* %98, i32 0, i32 2
  %100 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %101 = getelementptr inbounds %struct.hwmon_buff, %struct.hwmon_buff* %100, i32 0, i32 0
  %102 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %102, i64 0
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %103, align 8
  %104 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %105 = getelementptr inbounds %struct.hwmon_buff, %struct.hwmon_buff* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %108 = getelementptr inbounds %struct.hwmon_buff, %struct.hwmon_buff* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  %110 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %111 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %115 = load %struct.hwmon_buff*, %struct.hwmon_buff** %3, align 8
  %116 = getelementptr inbounds %struct.hwmon_buff, %struct.hwmon_buff* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %116, align 8
  %118 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.hwmon_buff* %114, %struct.TYPE_14__** %117)
  store %struct.device* %118, %struct.device** %4, align 8
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = call i64 @IS_ERR(%struct.device* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %97
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = call i32 @PTR_ERR(%struct.device* %123)
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %122, %97
  br label %126

126:                                              ; preds = %125, %92, %84, %76, %68, %36, %26, %14
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local %struct.hwmon_buff* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ixgbe_add_hwmon_attr(%struct.ixgbe_adapter*, i32, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i8*, %struct.hwmon_buff*, %struct.TYPE_14__**) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
