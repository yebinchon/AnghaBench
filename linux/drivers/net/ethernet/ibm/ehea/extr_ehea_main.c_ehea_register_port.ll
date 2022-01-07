; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_register_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_register_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32*, i32*, i32 }
%struct.ehea_port = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.device }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.device_node = type { i32 }

@ibmebus_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"port%d\00", align 1
@port_name_cnt = common dso_local global i32 0, align 4
@logical_port_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to register device. ret=%d\0A\00", align 1
@dev_attr_log_port_id = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to register attributes, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.ehea_port*, %struct.device_node*)* @ehea_register_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @ehea_register_port(%struct.ehea_port* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ehea_port*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.ehea_port* %0, %struct.ehea_port** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %7 = load %struct.device_node*, %struct.device_node** %5, align 8
  %8 = call i32 @of_node_get(%struct.device_node* %7)
  %9 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %10 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 3
  store i32 %8, i32* %12, align 8
  %13 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %14 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %20 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 2
  store i32* %18, i32** %22, align 8
  %23 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %24 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 1
  store i32* @ibmebus_bus_type, i32** %26, align 8
  %27 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %28 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* @port_name_cnt, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @port_name_cnt, align 4
  %32 = call i32 @dev_set_name(%struct.device* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %30)
  %33 = load i32, i32* @logical_port_release, align 4
  %34 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %35 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %39 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %38, i32 0, i32 0
  %40 = call i32 @of_device_register(%struct.TYPE_7__* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %64

46:                                               ; preds = %2
  %47 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %48 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i32 @device_create_file(%struct.device* %49, i32* @dev_attr_log_port_id)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %60

56:                                               ; preds = %46
  %57 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %58 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store %struct.device* %59, %struct.device** %3, align 8
  br label %65

60:                                               ; preds = %53
  %61 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %62 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %61, i32 0, i32 0
  %63 = call i32 @of_device_unregister(%struct.TYPE_7__* %62)
  br label %64

64:                                               ; preds = %60, %43
  store %struct.device* null, %struct.device** %3, align 8
  br label %65

65:                                               ; preds = %64, %56
  %66 = load %struct.device*, %struct.device** %3, align 8
  ret %struct.device* %66
}

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @of_device_unregister(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
