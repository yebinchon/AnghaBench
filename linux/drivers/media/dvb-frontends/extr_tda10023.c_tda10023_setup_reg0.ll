; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10023.c_tda10023_setup_reg0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10023.c_tda10023_setup_reg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda10023_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda10023_state*, i32)* @tda10023_setup_reg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10023_setup_reg0(%struct.tda10023_state* %0, i32 %1) #0 {
  %3 = alloca %struct.tda10023_state*, align 8
  %4 = alloca i32, align 4
  store %struct.tda10023_state* %0, %struct.tda10023_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %6 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 99
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 254
  %14 = call i32 @tda10023_writereg(%struct.tda10023_state* %11, i32 0, i32 %13)
  %15 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, 1
  %18 = call i32 @tda10023_writereg(%struct.tda10023_state* %15, i32 0, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %21 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret i32 0
}

declare dso_local i32 @tda10023_writereg(%struct.tda10023_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
