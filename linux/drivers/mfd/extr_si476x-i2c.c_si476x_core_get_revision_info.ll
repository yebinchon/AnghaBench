; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_get_revision_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_get_revision_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i32 }
%struct.si476x_func_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@SI476X_POWER_UP_FULL = common dso_local global i32 0, align 4
@SI476X_POWER_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_core*)* @si476x_core_get_revision_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_core_get_revision_info(%struct.si476x_core* %0) #0 {
  %2 = alloca %struct.si476x_core*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.si476x_func_info, align 8
  store %struct.si476x_core* %0, %struct.si476x_core** %2, align 8
  %5 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %6 = call i32 @si476x_core_lock(%struct.si476x_core* %5)
  %7 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %8 = load i32, i32* @SI476X_POWER_UP_FULL, align 4
  %9 = call i32 @si476x_core_set_power_state(%struct.si476x_core* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %15 = call i32 @si476x_core_cmd_func_info(%struct.si476x_core* %14, %struct.si476x_func_info* %4)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %39

19:                                               ; preds = %13
  %20 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %21 = getelementptr inbounds %struct.si476x_func_info, %struct.si476x_func_info* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.si476x_func_info, %struct.si476x_func_info* %4, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.si476x_func_info, %struct.si476x_func_info* %4, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.si476x_func_info, %struct.si476x_func_info* %4, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @si476x_core_fwver_to_revision(%struct.si476x_core* %20, i32 %22, i32 %25, i32 %30, i32 %35)
  %37 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %38 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %19, %18
  %40 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %41 = load i32, i32* @SI476X_POWER_DOWN, align 4
  %42 = call i32 @si476x_core_set_power_state(%struct.si476x_core* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %12
  %44 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %45 = call i32 @si476x_core_unlock(%struct.si476x_core* %44)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @si476x_core_lock(%struct.si476x_core*) #1

declare dso_local i32 @si476x_core_set_power_state(%struct.si476x_core*, i32) #1

declare dso_local i32 @si476x_core_cmd_func_info(%struct.si476x_core*, %struct.si476x_func_info*) #1

declare dso_local i32 @si476x_core_fwver_to_revision(%struct.si476x_core*, i32, i32, i32, i32) #1

declare dso_local i32 @si476x_core_unlock(%struct.si476x_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
