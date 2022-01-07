; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_qm1d1c0042.c_qm1d1c0042_set_srch_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_qm1d1c0042.c_qm1d1c0042_set_srch_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm1d1c0042_state = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm1d1c0042_state*, i32)* @qm1d1c0042_set_srch_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm1d1c0042_set_srch_mode(%struct.qm1d1c0042_state* %0, i32 %1) #0 {
  %3 = alloca %struct.qm1d1c0042_state*, align 8
  %4 = alloca i32, align 4
  store %struct.qm1d1c0042_state* %0, %struct.qm1d1c0042_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %3, align 8
  %9 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, 1
  store i32 %13, i32* %11, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %3, align 8
  %16 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 254
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %14, %7
  %22 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %3, align 8
  %23 = load %struct.qm1d1c0042_state*, %struct.qm1d1c0042_state** %3, align 8
  %24 = getelementptr inbounds %struct.qm1d1c0042_state, %struct.qm1d1c0042_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @reg_write(%struct.qm1d1c0042_state* %22, i32 3, i32 %27)
  ret i32 %28
}

declare dso_local i32 @reg_write(%struct.qm1d1c0042_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
