; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_devlink.c_ionic_devlink_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_devlink.c_ionic_devlink_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.devlink = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"devlink_register failed: %d\0A\00", align 1
@DEVLINK_PORT_FLAVOUR_PHYSICAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"devlink_port_register failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_devlink_register(%struct.ionic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ionic*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  store %struct.ionic* %0, %struct.ionic** %3, align 8
  %6 = load %struct.ionic*, %struct.ionic** %3, align 8
  %7 = call %struct.devlink* @priv_to_devlink(%struct.ionic* %6)
  store %struct.devlink* %7, %struct.devlink** %4, align 8
  %8 = load %struct.devlink*, %struct.devlink** %4, align 8
  %9 = load %struct.ionic*, %struct.ionic** %3, align 8
  %10 = getelementptr inbounds %struct.ionic, %struct.ionic* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @devlink_register(%struct.devlink* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.ionic*, %struct.ionic** %3, align 8
  %17 = getelementptr inbounds %struct.ionic, %struct.ionic* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_warn(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %1
  %23 = load %struct.ionic*, %struct.ionic** %3, align 8
  %24 = getelementptr inbounds %struct.ionic, %struct.ionic* %23, i32 0, i32 1
  %25 = load i32, i32* @DEVLINK_PORT_FLAVOUR_PHYSICAL, align 4
  %26 = call i32 @devlink_port_attrs_set(i32* %24, i32 %25, i32 0, i32 0, i32 0, i32* null, i32 0)
  %27 = load %struct.devlink*, %struct.devlink** %4, align 8
  %28 = load %struct.ionic*, %struct.ionic** %3, align 8
  %29 = getelementptr inbounds %struct.ionic, %struct.ionic* %28, i32 0, i32 1
  %30 = call i32 @devlink_port_register(%struct.devlink* %27, i32* %29, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.ionic*, %struct.ionic** %3, align 8
  %35 = getelementptr inbounds %struct.ionic, %struct.ionic* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %48

39:                                               ; preds = %22
  %40 = load %struct.ionic*, %struct.ionic** %3, align 8
  %41 = getelementptr inbounds %struct.ionic, %struct.ionic* %40, i32 0, i32 1
  %42 = load %struct.ionic*, %struct.ionic** %3, align 8
  %43 = getelementptr inbounds %struct.ionic, %struct.ionic* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @devlink_port_type_eth_set(i32* %41, i32 %46)
  br label %48

48:                                               ; preds = %39, %33
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.ionic*) #1

declare dso_local i32 @devlink_register(%struct.devlink*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @devlink_port_attrs_set(i32*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @devlink_port_register(%struct.devlink*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @devlink_port_type_eth_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
