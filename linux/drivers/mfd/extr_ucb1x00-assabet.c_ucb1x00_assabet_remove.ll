; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-assabet.c_ucb1x00_assabet_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-assabet.c_ucb1x00_assabet_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00_dev = type { %struct.TYPE_2__*, %struct.platform_device* }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@dev_attr_batt_temp = common dso_local global i32 0, align 4
@dev_attr_vcharger = common dso_local global i32 0, align 4
@dev_attr_vbatt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucb1x00_dev*)* @ucb1x00_assabet_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucb1x00_assabet_remove(%struct.ucb1x00_dev* %0) #0 {
  %2 = alloca %struct.ucb1x00_dev*, align 8
  %3 = alloca %struct.platform_device*, align 8
  store %struct.ucb1x00_dev* %0, %struct.ucb1x00_dev** %2, align 8
  %4 = load %struct.ucb1x00_dev*, %struct.ucb1x00_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ucb1x00_dev, %struct.ucb1x00_dev* %4, i32 0, i32 1
  %6 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  store %struct.platform_device* %6, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call i32 @IS_ERR(%struct.platform_device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i32 @platform_device_unregister(%struct.platform_device* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.ucb1x00_dev*, %struct.ucb1x00_dev** %2, align 8
  %15 = getelementptr inbounds %struct.ucb1x00_dev, %struct.ucb1x00_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @device_remove_file(i32* %17, i32* @dev_attr_batt_temp)
  %19 = load %struct.ucb1x00_dev*, %struct.ucb1x00_dev** %2, align 8
  %20 = getelementptr inbounds %struct.ucb1x00_dev, %struct.ucb1x00_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @device_remove_file(i32* %22, i32* @dev_attr_vcharger)
  %24 = load %struct.ucb1x00_dev*, %struct.ucb1x00_dev** %2, align 8
  %25 = getelementptr inbounds %struct.ucb1x00_dev, %struct.ucb1x00_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @device_remove_file(i32* %27, i32* @dev_attr_vbatt)
  ret void
}

declare dso_local i32 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
