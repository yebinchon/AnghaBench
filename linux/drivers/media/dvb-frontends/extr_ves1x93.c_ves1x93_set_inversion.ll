; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1x93.c_ves1x93_set_inversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1x93.c_ves1x93_set_inversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ves1x93_state = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ves1x93_state*, i32)* @ves1x93_set_inversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1x93_set_inversion(%struct.ves1x93_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ves1x93_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ves1x93_state* %0, %struct.ves1x93_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %11 [
    i32 129, label %8
    i32 128, label %9
    i32 130, label %10
  ]

8:                                                ; preds = %2
  store i32 192, i32* %6, align 4
  br label %14

9:                                                ; preds = %2
  store i32 128, i32* %6, align 4
  br label %14

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %10, %9, %8
  %15 = load %struct.ves1x93_state*, %struct.ves1x93_state** %4, align 8
  %16 = load %struct.ves1x93_state*, %struct.ves1x93_state** %4, align 8
  %17 = getelementptr inbounds %struct.ves1x93_state, %struct.ves1x93_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 12
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 63
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @ves1x93_writereg(%struct.ves1x93_state* %15, i32 12, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @ves1x93_writereg(%struct.ves1x93_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
