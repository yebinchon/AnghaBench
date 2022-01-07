; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_update_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_update_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp_state = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msp_update_volume(%struct.msp_state* %0) #0 {
  %2 = alloca %struct.msp_state*, align 8
  store %struct.msp_state* %0, %struct.msp_state** %2, align 8
  %3 = load %struct.msp_state*, %struct.msp_state** %2, align 8
  %4 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %3, i32 0, i32 0
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %6 = call i32 @v4l2_ctrl_lock(%struct.TYPE_10__* %5)
  %7 = load %struct.msp_state*, %struct.msp_state** %2, align 8
  %8 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.msp_state*, %struct.msp_state** %2, align 8
  %14 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  store i32 %12, i32* %16, align 4
  %17 = load %struct.msp_state*, %struct.msp_state** %2, align 8
  %18 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.msp_state*, %struct.msp_state** %2, align 8
  %24 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.msp_state*, %struct.msp_state** %2, align 8
  %28 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = call i32 @msp_s_ctrl(%struct.TYPE_10__* %29)
  %31 = load %struct.msp_state*, %struct.msp_state** %2, align 8
  %32 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = call i32 @v4l2_ctrl_unlock(%struct.TYPE_10__* %33)
  ret void
}

declare dso_local i32 @v4l2_ctrl_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @msp_s_ctrl(%struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_ctrl_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
