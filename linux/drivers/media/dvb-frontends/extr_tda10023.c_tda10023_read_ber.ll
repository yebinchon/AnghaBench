; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10023.c_tda10023_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10023.c_tda10023_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10023_state* }
%struct.tda10023_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @tda10023_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10023_read_ber(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tda10023_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.tda10023_state*, %struct.tda10023_state** %10, align 8
  store %struct.tda10023_state* %11, %struct.tda10023_state** %5, align 8
  %12 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %13 = call i32 @tda10023_readreg(%struct.tda10023_state* %12, i32 20)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %15 = call i32 @tda10023_readreg(%struct.tda10023_state* %14, i32 21)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %17 = call i32 @tda10023_readreg(%struct.tda10023_state* %16, i32 22)
  %18 = and i32 %17, 15
  store i32 %18, i32* %8, align 4
  %19 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %20 = call i32 @tda10023_writebit(%struct.tda10023_state* %19, i32 16, i32 192, i32 0)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 8
  %24 = or i32 %21, %23
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 %24, %26
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  ret i32 0
}

declare dso_local i32 @tda10023_readreg(%struct.tda10023_state*, i32) #1

declare dso_local i32 @tda10023_writebit(%struct.tda10023_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
