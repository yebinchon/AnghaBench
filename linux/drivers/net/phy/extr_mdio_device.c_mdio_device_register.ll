; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_device.c_mdio_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_device.c_mdio_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"mdio_device_register\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"MDIO %d failed to add\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdio_device_register(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca i32, align 4
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %5 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %6 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %5, i32 0, i32 1
  %7 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %9 = call i32 @mdiobus_register_device(%struct.mdio_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %16 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %15, i32 0, i32 1
  %17 = call i32 @device_add(i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %22 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %26

25:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %30

26:                                               ; preds = %20
  %27 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %28 = call i32 @mdiobus_unregister_device(%struct.mdio_device* %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %25, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mdiobus_register_device(%struct.mdio_device*) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mdiobus_unregister_device(%struct.mdio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
