; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_get_all_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_get_all_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i64* }

@SMIAPP_LIMIT_LAST = common dso_local global i32 0, align 4
@SMIAPP_LIMIT_SCALER_N_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @smiapp_get_all_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_get_all_limits(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smiapp_sensor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SMIAPP_LIMIT_LAST, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %12 = call i32 @smiapp_get_limits(%struct.smiapp_sensor* %11, i32* %4, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %34

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %4, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %23 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @SMIAPP_LIMIT_SCALER_N_MIN, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %31 = load i64, i64* @SMIAPP_LIMIT_SCALER_N_MIN, align 8
  %32 = call i32 @smiapp_replace_limit(%struct.smiapp_sensor* %30, i64 %31, i32 16)
  br label %33

33:                                               ; preds = %29, %21
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @smiapp_get_limits(%struct.smiapp_sensor*, i32*, i32) #1

declare dso_local i32 @smiapp_replace_limit(%struct.smiapp_sensor*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
