; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_power_configure_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_power_configure_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_power_data = type { %struct.twl4030_resconfig*, %struct.twl4030_resconfig* }
%struct.twl4030_resconfig = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_power_data*)* @twl4030_power_configure_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_power_configure_resources(%struct.twl4030_power_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twl4030_power_data*, align 8
  %4 = alloca %struct.twl4030_resconfig*, align 8
  %5 = alloca %struct.twl4030_resconfig*, align 8
  %6 = alloca i32, align 4
  store %struct.twl4030_power_data* %0, %struct.twl4030_power_data** %3, align 8
  %7 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %3, align 8
  %8 = getelementptr inbounds %struct.twl4030_power_data, %struct.twl4030_power_data* %7, i32 0, i32 1
  %9 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %8, align 8
  store %struct.twl4030_resconfig* %9, %struct.twl4030_resconfig** %4, align 8
  %10 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %3, align 8
  %11 = getelementptr inbounds %struct.twl4030_power_data, %struct.twl4030_power_data* %10, i32 0, i32 0
  %12 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %11, align 8
  store %struct.twl4030_resconfig* %12, %struct.twl4030_resconfig** %5, align 8
  %13 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %4, align 8
  %14 = icmp ne %struct.twl4030_resconfig* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  %16 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %5, align 8
  %17 = icmp ne %struct.twl4030_resconfig* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %4, align 8
  %20 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %5, align 8
  %21 = call i32 @twl4030_patch_rconfig(%struct.twl4030_resconfig* %19, %struct.twl4030_resconfig* %20)
  br label %22

22:                                               ; preds = %18, %15
  br label %23

23:                                               ; preds = %35, %22
  %24 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %4, align 8
  %25 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %4, align 8
  %30 = call i32 @twl4030_configure_resource(%struct.twl4030_resconfig* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %40

35:                                               ; preds = %28
  %36 = load %struct.twl4030_resconfig*, %struct.twl4030_resconfig** %4, align 8
  %37 = getelementptr inbounds %struct.twl4030_resconfig, %struct.twl4030_resconfig* %36, i32 1
  store %struct.twl4030_resconfig* %37, %struct.twl4030_resconfig** %4, align 8
  br label %23

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %1
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @twl4030_patch_rconfig(%struct.twl4030_resconfig*, %struct.twl4030_resconfig*) #1

declare dso_local i32 @twl4030_configure_resource(%struct.twl4030_resconfig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
