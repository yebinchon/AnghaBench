; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1x93.c_ves1x93_clr_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1x93.c_ves1x93_clr_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ves1x93_state = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ves1x93_state*)* @ves1x93_clr_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1x93_clr_bit(%struct.ves1x93_state* %0) #0 {
  %2 = alloca %struct.ves1x93_state*, align 8
  store %struct.ves1x93_state* %0, %struct.ves1x93_state** %2, align 8
  %3 = call i32 @msleep(i32 10)
  %4 = load %struct.ves1x93_state*, %struct.ves1x93_state** %2, align 8
  %5 = load %struct.ves1x93_state*, %struct.ves1x93_state** %2, align 8
  %6 = getelementptr inbounds %struct.ves1x93_state, %struct.ves1x93_state* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 254
  %11 = call i32 @ves1x93_writereg(%struct.ves1x93_state* %4, i32 0, i32 %10)
  %12 = load %struct.ves1x93_state*, %struct.ves1x93_state** %2, align 8
  %13 = load %struct.ves1x93_state*, %struct.ves1x93_state** %2, align 8
  %14 = getelementptr inbounds %struct.ves1x93_state, %struct.ves1x93_state* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ves1x93_writereg(%struct.ves1x93_state* %12, i32 0, i32 %17)
  %19 = call i32 @msleep(i32 50)
  ret i32 0
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ves1x93_writereg(%struct.ves1x93_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
