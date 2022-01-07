; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_mbus_type_to_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_fwnode_mbus_type_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fwnode_bus_conv = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @v4l2_fwnode_mbus_type_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @v4l2_fwnode_mbus_type_to_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_fwnode_bus_conv*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.v4l2_fwnode_bus_conv* @get_v4l2_fwnode_bus_conv_by_mbus(i32 %4)
  store %struct.v4l2_fwnode_bus_conv* %5, %struct.v4l2_fwnode_bus_conv** %3, align 8
  %6 = load %struct.v4l2_fwnode_bus_conv*, %struct.v4l2_fwnode_bus_conv** %3, align 8
  %7 = icmp ne %struct.v4l2_fwnode_bus_conv* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.v4l2_fwnode_bus_conv*, %struct.v4l2_fwnode_bus_conv** %3, align 8
  %10 = getelementptr inbounds %struct.v4l2_fwnode_bus_conv, %struct.v4l2_fwnode_bus_conv* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i8* [ %11, %8 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %12 ]
  ret i8* %14
}

declare dso_local %struct.v4l2_fwnode_bus_conv* @get_v4l2_fwnode_bus_conv_by_mbus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
