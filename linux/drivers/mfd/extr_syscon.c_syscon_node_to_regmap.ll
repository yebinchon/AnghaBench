; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_syscon.c_syscon_node_to_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_syscon.c_syscon_node_to_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %0) #0 {
  %2 = alloca %struct.regmap*, align 8
  %3 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %4 = load %struct.device_node*, %struct.device_node** %3, align 8
  %5 = call i32 @of_device_is_compatible(%struct.device_node* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.regmap* @ERR_PTR(i32 %9)
  store %struct.regmap* %10, %struct.regmap** %2, align 8
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = call %struct.regmap* @device_node_get_regmap(%struct.device_node* %12, i32 1)
  store %struct.regmap* %13, %struct.regmap** %2, align 8
  br label %14

14:                                               ; preds = %11, %7
  %15 = load %struct.regmap*, %struct.regmap** %2, align 8
  ret %struct.regmap* %15
}

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local %struct.regmap* @ERR_PTR(i32) #1

declare dso_local %struct.regmap* @device_node_get_regmap(%struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
