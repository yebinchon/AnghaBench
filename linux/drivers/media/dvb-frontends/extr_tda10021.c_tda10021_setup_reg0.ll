; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10021.c_tda10021_setup_reg0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10021.c_tda10021_setup_reg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda10021_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@INVERSION_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda10021_state*, i32, i32)* @tda10021_setup_reg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10021_setup_reg0(%struct.tda10021_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tda10021_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tda10021_state* %0, %struct.tda10021_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tda10021_state*, %struct.tda10021_state** %4, align 8
  %8 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 99
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @INVERSION_ON, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load %struct.tda10021_state*, %struct.tda10021_state** %4, align 8
  %18 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = xor i32 %16, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, -33
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 32
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.tda10021_state*, %struct.tda10021_state** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 254
  %36 = call i32 @_tda10021_writereg(%struct.tda10021_state* %33, i32 0, i32 %35)
  %37 = load %struct.tda10021_state*, %struct.tda10021_state** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, 1
  %40 = call i32 @_tda10021_writereg(%struct.tda10021_state* %37, i32 0, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.tda10021_state*, %struct.tda10021_state** %4, align 8
  %43 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  ret i32 0
}

declare dso_local i32 @_tda10021_writereg(%struct.tda10021_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
