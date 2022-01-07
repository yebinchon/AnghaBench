; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_start_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_start_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32, i32, i32, %struct.osd_window_state* }
%struct.osd_window_state = type { i64, %struct.osd_layer_config }
%struct.osd_layer_config = type { i32 }

@WIN_VID0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32, i64, i64)* @osd_start_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osd_start_layer(%struct.osd_state* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.osd_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.osd_state*, align 8
  %10 = alloca %struct.osd_window_state*, align 8
  %11 = alloca %struct.osd_layer_config*, align 8
  %12 = alloca i64, align 8
  store %struct.osd_state* %0, %struct.osd_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  store %struct.osd_state* %13, %struct.osd_state** %9, align 8
  %14 = load %struct.osd_state*, %struct.osd_state** %9, align 8
  %15 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %14, i32 0, i32 3
  %16 = load %struct.osd_window_state*, %struct.osd_window_state** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %16, i64 %18
  store %struct.osd_window_state* %19, %struct.osd_window_state** %10, align 8
  %20 = load %struct.osd_window_state*, %struct.osd_window_state** %10, align 8
  %21 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %20, i32 0, i32 1
  store %struct.osd_layer_config* %21, %struct.osd_layer_config** %11, align 8
  %22 = load %struct.osd_state*, %struct.osd_state** %9, align 8
  %23 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %22, i32 0, i32 0
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i64, i64* %7, align 8
  %27 = and i64 %26, -32
  %28 = load %struct.osd_window_state*, %struct.osd_window_state** %10, align 8
  %29 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @_osd_start_layer(%struct.osd_state* %30, i32 %31, i64 %32, i64 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @WIN_VID0, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %4
  %39 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %40 = load %struct.osd_state*, %struct.osd_state** %9, align 8
  %41 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.osd_window_state*, %struct.osd_window_state** %10, align 8
  %44 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.osd_layer_config*, %struct.osd_layer_config** %11, align 8
  %47 = call i32 @_osd_dm6446_vid0_pingpong(%struct.osd_state* %39, i32 %42, i64 %45, %struct.osd_layer_config* %46)
  %48 = load %struct.osd_state*, %struct.osd_state** %9, align 8
  %49 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %38, %4
  %51 = load %struct.osd_state*, %struct.osd_state** %9, align 8
  %52 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %51, i32 0, i32 0
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_osd_start_layer(%struct.osd_state*, i32, i64, i64) #1

declare dso_local i32 @_osd_dm6446_vid0_pingpong(%struct.osd_state*, i32, i64, %struct.osd_layer_config*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
