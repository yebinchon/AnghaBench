; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hwmon.c_hl_hwmon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_hwmon.c_hl_hwmon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.device*, i32, %struct.TYPE_6__*, i32, %struct.asic_fixed_properties, %struct.TYPE_4__* }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.asic_fixed_properties = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }

@hl_hwmon_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to register hwmon device: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: add sensors information\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"no available sensors\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_hwmon_init(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.asic_fixed_properties*, align 8
  %6 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %7 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 6
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 6
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %18 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %17, i32 0, i32 1
  %19 = load %struct.device*, %struct.device** %18, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi %struct.device* [ %15, %11 ], [ %19, %16 ]
  store %struct.device* %21, %struct.device** %4, align 8
  %22 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %23 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %22, i32 0, i32 5
  store %struct.asic_fixed_properties* %23, %struct.asic_fixed_properties** %5, align 8
  %24 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %30 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %20
  store i32 0, i32* %2, align 4
  br label %91

34:                                               ; preds = %28
  %35 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %36 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %85

41:                                               ; preds = %34
  %42 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %43 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32* @hl_hwmon_ops, i32** %45, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %48 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %52 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %53 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %52, i32 0, i32 3
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i32 @hwmon_device_register_with_info(%struct.device* %46, i32 %50, %struct.hl_device* %51, %struct.TYPE_6__* %54, i32* null)
  %56 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %57 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %59 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %41
  %64 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %65 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %69 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %68, i32 0, i32 1
  %70 = load %struct.device*, %struct.device** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %91

74:                                               ; preds = %41
  %75 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %76 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %75, i32 0, i32 1
  %77 = load %struct.device*, %struct.device** %76, align 8
  %78 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %79 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_name(i32 %80)
  %82 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %84 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %90

85:                                               ; preds = %34
  %86 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %87 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %86, i32 0, i32 1
  %88 = load %struct.device*, %struct.device** %87, align 8
  %89 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %74
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %63, %33
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @hwmon_device_register_with_info(%struct.device*, i32, %struct.hl_device*, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
