; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_axp20x.c_axp20x_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_axp20x.c_axp20x_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp20x_dev = type { i64, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@AXP806_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"x-powers,master-mode\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"x-powers,self-working-mode\00", align 1
@AXP806_REG_ADDR_EXT = common dso_local global i32 0, align 4
@AXP806_REG_ADDR_EXT_ADDR_MASTER_MODE = common dso_local global i32 0, align 4
@AXP806_REG_ADDR_EXT_ADDR_SLAVE_MODE = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to add irq chip: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to add MFD devices: %d\0A\00", align 1
@pm_power_off = common dso_local global i64 0, align 8
@axp20x_pm_power_off = common dso_local global %struct.axp20x_dev* null, align 8
@axp20x_power_off = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"AXP20X driver loaded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @axp20x_device_probe(%struct.axp20x_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axp20x_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.axp20x_dev* %0, %struct.axp20x_dev** %3, align 8
  %5 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %6 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AXP806_ID, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %12 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @of_property_read_bool(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %20 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @of_property_read_bool(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18, %10
  %27 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %28 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AXP806_REG_ADDR_EXT, align 4
  %31 = load i32, i32* @AXP806_REG_ADDR_EXT_ADDR_MASTER_MODE, align 4
  %32 = call i32 @regmap_write(i32 %29, i32 %30, i32 %31)
  br label %40

33:                                               ; preds = %18
  %34 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %35 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AXP806_REG_ADDR_EXT, align 4
  %38 = load i32, i32* @AXP806_REG_ADDR_EXT_ADDR_SLAVE_MODE, align 4
  %39 = call i32 @regmap_write(i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %26
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %43 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %46 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IRQF_ONESHOT, align 4
  %49 = load i32, i32* @IRQF_SHARED, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %52 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %50, %53
  %55 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %56 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %59 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %58, i32 0, i32 3
  %60 = call i32 @regmap_add_irq_chip(i32 %44, i32 %47, i32 %54, i32 -1, i32 %57, i32* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %41
  %64 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %65 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @dev_err(%struct.TYPE_4__* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %108

70:                                               ; preds = %41
  %71 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %72 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %75 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %78 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mfd_add_devices(%struct.TYPE_4__* %73, i32 -1, i32 %76, i32 %79, i32* null, i32 0, i32* null)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %70
  %84 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %85 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @dev_err(%struct.TYPE_4__* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %90 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %93 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @regmap_del_irq_chip(i32 %91, i32 %94)
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %108

97:                                               ; preds = %70
  %98 = load i64, i64* @pm_power_off, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  store %struct.axp20x_dev* %101, %struct.axp20x_dev** @axp20x_pm_power_off, align 8
  %102 = load i64, i64* @axp20x_power_off, align 8
  store i64 %102, i64* @pm_power_off, align 8
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.axp20x_dev*, %struct.axp20x_dev** %3, align 8
  %105 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = call i32 @dev_info(%struct.TYPE_4__* %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %103, %83, %63
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @mfd_add_devices(%struct.TYPE_4__*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
