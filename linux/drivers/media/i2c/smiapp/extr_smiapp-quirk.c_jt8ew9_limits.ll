; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-quirk.c_jt8ew9_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-quirk.c_jt8ew9_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN = common dso_local global i32 0, align 4
@SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @jt8ew9_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jt8ew9_limits(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca %struct.smiapp_sensor*, align 8
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %2, align 8
  %3 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %4 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %10 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %13 = load i32, i32* @SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MIN, align 4
  %14 = call i32 @smiapp_replace_limit(%struct.smiapp_sensor* %12, i32 %13, i32 59)
  %15 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %16 = load i32, i32* @SMIAPP_LIMIT_ANALOGUE_GAIN_CODE_MAX, align 4
  %17 = call i32 @smiapp_replace_limit(%struct.smiapp_sensor* %15, i32 %16, i32 6000)
  ret i32 0
}

declare dso_local i32 @smiapp_replace_limit(%struct.smiapp_sensor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
