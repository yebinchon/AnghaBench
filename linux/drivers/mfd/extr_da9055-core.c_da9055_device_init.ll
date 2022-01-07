; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9055-core.c_da9055_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9055-core.c_da9055_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9055 = type { i32, i32, i32, i32, i32 }
%struct.da9055_pdata = type { i32, i32 (%struct.da9055.0*)* }
%struct.da9055.0 = type opaque

@__const.da9055_device_init.clear_events = private unnamed_addr constant [3 x i32] [i32 255, i32 255, i32 255], align 4
@DA9055_REG_EVENT_A = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@da9055_regmap_irq_chip = common dso_local global i32 0, align 4
@da9055_devs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @da9055_device_init(%struct.da9055* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9055*, align 8
  %4 = alloca %struct.da9055_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  store %struct.da9055* %0, %struct.da9055** %3, align 8
  %7 = load %struct.da9055*, %struct.da9055** %3, align 8
  %8 = getelementptr inbounds %struct.da9055, %struct.da9055* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.da9055_pdata* @dev_get_platdata(i32 %9)
  store %struct.da9055_pdata* %10, %struct.da9055_pdata** %4, align 8
  %11 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([3 x i32]* @__const.da9055_device_init.clear_events to i8*), i64 12, i1 false)
  %12 = load %struct.da9055_pdata*, %struct.da9055_pdata** %4, align 8
  %13 = icmp ne %struct.da9055_pdata* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.da9055_pdata*, %struct.da9055_pdata** %4, align 8
  %16 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %15, i32 0, i32 1
  %17 = load i32 (%struct.da9055.0*)*, i32 (%struct.da9055.0*)** %16, align 8
  %18 = icmp ne i32 (%struct.da9055.0*)* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.da9055_pdata*, %struct.da9055_pdata** %4, align 8
  %21 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %20, i32 0, i32 1
  %22 = load i32 (%struct.da9055.0*)*, i32 (%struct.da9055.0*)** %21, align 8
  %23 = load %struct.da9055*, %struct.da9055** %3, align 8
  %24 = bitcast %struct.da9055* %23 to %struct.da9055.0*
  %25 = call i32 %22(%struct.da9055.0* %24)
  br label %26

26:                                               ; preds = %19, %14, %1
  %27 = load %struct.da9055_pdata*, %struct.da9055_pdata** %4, align 8
  %28 = icmp ne %struct.da9055_pdata* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.da9055_pdata*, %struct.da9055_pdata** %4, align 8
  %31 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.da9055*, %struct.da9055** %3, align 8
  %36 = getelementptr inbounds %struct.da9055, %struct.da9055* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 4
  br label %43

37:                                               ; preds = %29
  %38 = load %struct.da9055_pdata*, %struct.da9055_pdata** %4, align 8
  %39 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.da9055*, %struct.da9055** %3, align 8
  %42 = getelementptr inbounds %struct.da9055, %struct.da9055* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %34
  %44 = load %struct.da9055*, %struct.da9055** %3, align 8
  %45 = load i32, i32* @DA9055_REG_EVENT_A, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %47 = call i32 @da9055_group_write(%struct.da9055* %44, i32 %45, i32 3, i32* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %99

52:                                               ; preds = %43
  %53 = load %struct.da9055*, %struct.da9055** %3, align 8
  %54 = getelementptr inbounds %struct.da9055, %struct.da9055* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.da9055*, %struct.da9055** %3, align 8
  %57 = getelementptr inbounds %struct.da9055, %struct.da9055* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %60 = load i32, i32* @IRQF_ONESHOT, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.da9055*, %struct.da9055** %3, align 8
  %63 = getelementptr inbounds %struct.da9055, %struct.da9055* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.da9055*, %struct.da9055** %3, align 8
  %66 = getelementptr inbounds %struct.da9055, %struct.da9055* %65, i32 0, i32 2
  %67 = call i32 @regmap_add_irq_chip(i32 %55, i32 %58, i32 %61, i32 %64, i32* @da9055_regmap_irq_chip, i32* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %52
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %99

72:                                               ; preds = %52
  %73 = load %struct.da9055*, %struct.da9055** %3, align 8
  %74 = getelementptr inbounds %struct.da9055, %struct.da9055* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @regmap_irq_chip_get_base(i32 %75)
  %77 = load %struct.da9055*, %struct.da9055** %3, align 8
  %78 = getelementptr inbounds %struct.da9055, %struct.da9055* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.da9055*, %struct.da9055** %3, align 8
  %80 = getelementptr inbounds %struct.da9055, %struct.da9055* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @da9055_devs, align 4
  %83 = load i32, i32* @da9055_devs, align 4
  %84 = call i32 @ARRAY_SIZE(i32 %83)
  %85 = load %struct.da9055*, %struct.da9055** %3, align 8
  %86 = getelementptr inbounds %struct.da9055, %struct.da9055* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mfd_add_devices(i32 %81, i32 -1, i32 %82, i32 %84, i32* null, i32 %87, i32* null)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %72
  br label %93

92:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %99

93:                                               ; preds = %91
  %94 = load %struct.da9055*, %struct.da9055** %3, align 8
  %95 = getelementptr inbounds %struct.da9055, %struct.da9055* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @mfd_remove_devices(i32 %96)
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %92, %70, %50
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.da9055_pdata* @dev_get_platdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @da9055_group_write(%struct.da9055*, i32, i32, i32*) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @regmap_irq_chip_get_base(i32) #1

declare dso_local i32 @mfd_add_devices(i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
