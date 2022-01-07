; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vtc.c_xvtc_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vtc.c_xvtc_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvtc_device = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"xlnx,detector\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"xlnx,generator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xvtc_device*)* @xvtc_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvtc_parse_of(%struct.xvtc_device* %0) #0 {
  %2 = alloca %struct.xvtc_device*, align 8
  %3 = alloca %struct.device_node*, align 8
  store %struct.xvtc_device* %0, %struct.xvtc_device** %2, align 8
  %4 = load %struct.xvtc_device*, %struct.xvtc_device** %2, align 8
  %5 = getelementptr inbounds %struct.xvtc_device, %struct.xvtc_device* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %3, align 8
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = call i8* @of_property_read_bool(%struct.device_node* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.xvtc_device*, %struct.xvtc_device** %2, align 8
  %13 = getelementptr inbounds %struct.xvtc_device, %struct.xvtc_device* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load %struct.device_node*, %struct.device_node** %3, align 8
  %15 = call i8* @of_property_read_bool(%struct.device_node* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.xvtc_device*, %struct.xvtc_device** %2, align 8
  %17 = getelementptr inbounds %struct.xvtc_device, %struct.xvtc_device* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  ret i32 0
}

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
