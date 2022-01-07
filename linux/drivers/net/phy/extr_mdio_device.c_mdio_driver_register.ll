; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_device.c_mdio_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_device.c_mdio_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_driver = type { %struct.mdio_driver_common }
%struct.mdio_driver_common = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"mdio_driver_register: %s\0A\00", align 1
@mdio_bus_type = common dso_local global i32 0, align 4
@mdio_probe = common dso_local global i32 0, align 4
@mdio_remove = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: Error %d in registering driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdio_driver_register(%struct.mdio_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_driver*, align 8
  %4 = alloca %struct.mdio_driver_common*, align 8
  %5 = alloca i32, align 4
  store %struct.mdio_driver* %0, %struct.mdio_driver** %3, align 8
  %6 = load %struct.mdio_driver*, %struct.mdio_driver** %3, align 8
  %7 = getelementptr inbounds %struct.mdio_driver, %struct.mdio_driver* %6, i32 0, i32 0
  store %struct.mdio_driver_common* %7, %struct.mdio_driver_common** %4, align 8
  %8 = load %struct.mdio_driver_common*, %struct.mdio_driver_common** %4, align 8
  %9 = getelementptr inbounds %struct.mdio_driver_common, %struct.mdio_driver_common* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.mdio_driver_common*, %struct.mdio_driver_common** %4, align 8
  %14 = getelementptr inbounds %struct.mdio_driver_common, %struct.mdio_driver_common* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32* @mdio_bus_type, i32** %15, align 8
  %16 = load i32, i32* @mdio_probe, align 4
  %17 = load %struct.mdio_driver_common*, %struct.mdio_driver_common** %4, align 8
  %18 = getelementptr inbounds %struct.mdio_driver_common, %struct.mdio_driver_common* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @mdio_remove, align 4
  %21 = load %struct.mdio_driver_common*, %struct.mdio_driver_common** %4, align 8
  %22 = getelementptr inbounds %struct.mdio_driver_common, %struct.mdio_driver_common* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.mdio_driver_common*, %struct.mdio_driver_common** %4, align 8
  %25 = getelementptr inbounds %struct.mdio_driver_common, %struct.mdio_driver_common* %24, i32 0, i32 0
  %26 = call i32 @driver_register(%struct.TYPE_2__* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.mdio_driver_common*, %struct.mdio_driver_common** %4, align 8
  %31 = getelementptr inbounds %struct.mdio_driver_common, %struct.mdio_driver_common* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
