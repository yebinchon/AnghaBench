; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c_mdiobus_register_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c_mdiobus_register_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { %struct.reset_control*, %struct.TYPE_2__ }
%struct.reset_control = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_device*)* @mdiobus_register_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdiobus_register_reset(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.reset_control*, align 8
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  store %struct.reset_control* null, %struct.reset_control** %4, align 8
  %5 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %6 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %12 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %11, i32 0, i32 1
  %13 = call %struct.reset_control* @devm_reset_control_get_exclusive(%struct.TYPE_2__* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.reset_control* %13, %struct.reset_control** %4, align 8
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.reset_control* %15)
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %22 = call i32 @PTR_ERR(%struct.reset_control* %21)
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14
  store %struct.reset_control* null, %struct.reset_control** %4, align 8
  br label %35

27:                                               ; preds = %20
  %28 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %29 = call i64 @IS_ERR(%struct.reset_control* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %33 = call i32 @PTR_ERR(%struct.reset_control* %32)
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %26
  %36 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  %37 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %38 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %37, i32 0, i32 0
  store %struct.reset_control* %36, %struct.reset_control** %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.reset_control* @devm_reset_control_get_exclusive(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
