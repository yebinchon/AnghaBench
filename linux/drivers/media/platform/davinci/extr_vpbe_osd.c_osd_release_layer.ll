; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_release_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_release_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32, %struct.osd_window_state* }
%struct.osd_window_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32)* @osd_release_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osd_release_layer(%struct.osd_state* %0, i32 %1) #0 {
  %3 = alloca %struct.osd_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.osd_state*, align 8
  %6 = alloca %struct.osd_window_state*, align 8
  %7 = alloca i64, align 8
  store %struct.osd_state* %0, %struct.osd_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  store %struct.osd_state* %8, %struct.osd_state** %5, align 8
  %9 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %10 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %9, i32 0, i32 1
  %11 = load %struct.osd_window_state*, %struct.osd_window_state** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %11, i64 %13
  store %struct.osd_window_state* %14, %struct.osd_window_state** %6, align 8
  %15 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %16 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.osd_window_state*, %struct.osd_window_state** %6, align 8
  %20 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %25 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %46

28:                                               ; preds = %2
  %29 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %30 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @osd_init_layer(%struct.osd_state* %33, i32 %34)
  %36 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %37 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %36, i32 0, i32 0
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.osd_window_state*, %struct.osd_window_state** %6, align 8
  %41 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %43 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %42, i32 0, i32 0
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @osd_init_layer(%struct.osd_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
