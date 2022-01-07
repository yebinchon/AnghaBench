; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_power_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_power_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32*, i8* }
%struct.TYPE_4__ = type { i8*, i32* }
%struct.pm860x_chip = type { i32, i32 }
%struct.pm860x_platform_data = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@power_devs = common dso_local global %struct.TYPE_5__* null, align 8
@battery_resources = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to add battery subdev\0A\00", align 1
@charger_resources = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to add charger subdev\0A\00", align 1
@preg_init_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to add preg subdev\0A\00", align 1
@chg_desc_regulator_data = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to add chg-manager subdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm860x_chip*, %struct.pm860x_platform_data*)* @device_power_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_power_init(%struct.pm860x_chip* %0, %struct.pm860x_platform_data* %1) #0 {
  %3 = alloca %struct.pm860x_chip*, align 8
  %4 = alloca %struct.pm860x_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.pm860x_chip* %0, %struct.pm860x_chip** %3, align 8
  store %struct.pm860x_platform_data* %1, %struct.pm860x_platform_data** %4, align 8
  %6 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %7 = icmp eq %struct.pm860x_platform_data* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %152

9:                                                ; preds = %2
  %10 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %11 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = load i32*, i32** @battery_resources, align 8
  %20 = call i8* @ARRAY_SIZE(i32* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i8* %20, i8** %23, align 8
  %24 = load i32*, i32** @battery_resources, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32* %25, i32** %28, align 8
  %29 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %30 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = load i32*, i32** @battery_resources, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %37 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mfd_add_devices(i32 %31, i32 0, %struct.TYPE_5__* %33, i32 1, i32* %35, i32 %38, i32* null)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %9
  %43 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %44 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %9
  %48 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  %57 = load i32*, i32** @charger_resources, align 8
  %58 = call i8* @ARRAY_SIZE(i32* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store i8* %58, i8** %61, align 8
  %62 = load i32*, i32** @charger_resources, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i32* %63, i32** %66, align 8
  %67 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %68 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 1
  %72 = load i32*, i32** @charger_resources, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %75 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mfd_add_devices(i32 %69, i32 0, %struct.TYPE_5__* %71, i32 1, i32* %73, i32 %76, i32* null)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %47
  %81 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %82 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %80, %47
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store %struct.TYPE_4__* @preg_init_data, %struct.TYPE_4__** %88, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 4, i32* %91, align 8
  %92 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %93 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 2
  %97 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %98 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @mfd_add_devices(i32 %94, i32 0, %struct.TYPE_5__* %96, i32 1, i32* null, i32 %99, i32* null)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %85
  %104 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %105 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %103, %85
  %109 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %110 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = icmp ne %struct.TYPE_4__* %111, null
  br i1 %112, label %113, label %152

113:                                              ; preds = %108
  %114 = load i32*, i32** @chg_desc_regulator_data, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %117 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32* %115, i32** %119, align 8
  %120 = load i32*, i32** @chg_desc_regulator_data, align 8
  %121 = call i8* @ARRAY_SIZE(i32* %120)
  %122 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %123 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i8* %121, i8** %125, align 8
  %126 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %127 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 3
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store %struct.TYPE_4__* %128, %struct.TYPE_4__** %131, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 3
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32 16, i32* %134, align 8
  %135 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %136 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** @power_devs, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 3
  %140 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %141 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @mfd_add_devices(i32 %137, i32 0, %struct.TYPE_5__* %139, i32 1, i32* null, i32 %142, i32* null)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %113
  %147 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %148 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dev_err(i32 %149, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %151

151:                                              ; preds = %146, %113
  br label %152

152:                                              ; preds = %8, %151, %108
  ret void
}

declare dso_local i8* @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mfd_add_devices(i32, i32, %struct.TYPE_5__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
