; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-cmd.c_si476x_cmd_tune_seek_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-cmd.c_si476x_cmd_tune_seek_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i32, i32 }

@SI476X_TIMEOUT_TUNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_core*, i32, i32*, i64, i32*, i64)* @si476x_cmd_tune_seek_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_cmd_tune_seek_freq(%struct.si476x_core* %0, i32 %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.si476x_core*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.si476x_core* %0, %struct.si476x_core** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %15 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %14, i32 0, i32 0
  %16 = call i32 @atomic_set(i32* %15, i32 0)
  %17 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i32, i32* @SI476X_TIMEOUT_TUNE, align 4
  %24 = call i32 @si476x_core_send_command(%struct.si476x_core* %17, i32 %18, i32* %19, i64 %20, i32* %21, i64 %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %6
  %28 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %29 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %32 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %31, i32 0, i32 0
  %33 = call i32 @atomic_read(i32* %32)
  %34 = call i32 @wait_event_killable(i32 %30, i32 %33)
  %35 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %36 = call i32 @si476x_cmd_clear_stc(%struct.si476x_core* %35)
  br label %37

37:                                               ; preds = %27, %6
  %38 = load i32, i32* %13, align 4
  ret i32 %38
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @si476x_core_send_command(%struct.si476x_core*, i32, i32*, i64, i32*, i64, i32) #1

declare dso_local i32 @wait_event_killable(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @si476x_cmd_clear_stc(%struct.si476x_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
