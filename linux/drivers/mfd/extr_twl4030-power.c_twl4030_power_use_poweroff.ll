; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_power_use_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_power_use_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_power_data = type { i64 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ti,system-power-controller\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ti,use_poweroff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_power_data*, %struct.device_node*)* @twl4030_power_use_poweroff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_power_use_poweroff(%struct.twl4030_power_data* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twl4030_power_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.twl4030_power_data* %0, %struct.twl4030_power_data** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %6 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %4, align 8
  %7 = icmp ne %struct.twl4030_power_data* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %4, align 8
  %10 = getelementptr inbounds %struct.twl4030_power_data, %struct.twl4030_power_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %25

14:                                               ; preds = %8, %2
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call i64 @of_property_read_bool(%struct.device_node* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %25

19:                                               ; preds = %14
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i64 @of_property_read_bool(%struct.device_node* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %23, %18, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
