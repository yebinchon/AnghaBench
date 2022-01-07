; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sja1105_dt_port = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Incorrect bindings: absent \22ports\22 node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, %struct.sja1105_dt_port*)* @sja1105_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_parse_dt(%struct.sja1105_private* %0, %struct.sja1105_dt_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sja1105_private*, align 8
  %5 = alloca %struct.sja1105_dt_port*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %4, align 8
  store %struct.sja1105_dt_port* %1, %struct.sja1105_dt_port** %5, align 8
  %10 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %11 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %18, %struct.device_node** %8, align 8
  %19 = load %struct.device_node*, %struct.device_node** %8, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %28 = load %struct.sja1105_dt_port*, %struct.sja1105_dt_port** %5, align 8
  %29 = load %struct.device_node*, %struct.device_node** %8, align 8
  %30 = call i32 @sja1105_parse_ports_node(%struct.sja1105_private* %27, %struct.sja1105_dt_port* %28, %struct.device_node* %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.device_node*, %struct.device_node** %8, align 8
  %32 = call i32 @of_node_put(%struct.device_node* %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %26, %21
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sja1105_parse_ports_node(%struct.sja1105_private*, %struct.sja1105_dt_port*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
