; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_is_dynamic_bufmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_is_dynamic_bufmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, i32, %struct.venus_core* }
%struct.venus_core = type { i32 }
%struct.venus_caps = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*)* @is_dynamic_bufmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dynamic_bufmode(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.venus_caps*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %6 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %7 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %6, i32 0, i32 2
  %8 = load %struct.venus_core*, %struct.venus_core** %7, align 8
  store %struct.venus_core* %8, %struct.venus_core** %4, align 8
  %9 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %10 = call i64 @IS_V4(%struct.venus_core* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %15 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %16 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %19 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.venus_caps* @venus_caps_by_codec(%struct.venus_core* %14, i32 %17, i32 %20)
  store %struct.venus_caps* %21, %struct.venus_caps** %5, align 8
  %22 = load %struct.venus_caps*, %struct.venus_caps** %5, align 8
  %23 = icmp ne %struct.venus_caps* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %29

25:                                               ; preds = %13
  %26 = load %struct.venus_caps*, %struct.venus_caps** %5, align 8
  %27 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %24, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @IS_V4(%struct.venus_core*) #1

declare dso_local %struct.venus_caps* @venus_caps_by_codec(%struct.venus_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
