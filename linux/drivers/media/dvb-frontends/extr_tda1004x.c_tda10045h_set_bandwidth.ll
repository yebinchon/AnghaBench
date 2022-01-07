; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda1004x.c_tda10045h_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda1004x.c_tda10045h_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1004x_state = type { i32 }

@tda10045h_set_bandwidth.bandwidth_6mhz = internal global [9 x i32] [i32 2, i32 0, i32 61, i32 0, i32 96, i32 30, i32 167, i32 69, i32 79], align 16
@tda10045h_set_bandwidth.bandwidth_7mhz = internal global [9 x i32] [i32 2, i32 0, i32 55, i32 0, i32 74, i32 47, i32 109, i32 118, i32 219], align 16
@tda10045h_set_bandwidth.bandwidth_8mhz = internal global [9 x i32] [i32 2, i32 0, i32 61, i32 0, i32 72, i32 23, i32 137, i32 199, i32 20], align 16
@TDA10045H_CONFPLL_P = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TDA10045H_IOFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda1004x_state*, i32)* @tda10045h_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10045h_set_bandwidth(%struct.tda1004x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tda1004x_state*, align 8
  %5 = alloca i32, align 4
  store %struct.tda1004x_state* %0, %struct.tda1004x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 6000000, label %7
    i32 7000000, label %11
    i32 8000000, label %15
  ]

7:                                                ; preds = %2
  %8 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %9 = load i32, i32* @TDA10045H_CONFPLL_P, align 4
  %10 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %8, i32 %9, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @tda10045h_set_bandwidth.bandwidth_6mhz, i64 0, i64 0), i32 36)
  br label %22

11:                                               ; preds = %2
  %12 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %13 = load i32, i32* @TDA10045H_CONFPLL_P, align 4
  %14 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %12, i32 %13, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @tda10045h_set_bandwidth.bandwidth_7mhz, i64 0, i64 0), i32 36)
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %17 = load i32, i32* @TDA10045H_CONFPLL_P, align 4
  %18 = call i32 @tda1004x_write_buf(%struct.tda1004x_state* %16, i32 %17, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @tda10045h_set_bandwidth.bandwidth_8mhz, i64 0, i64 0), i32 36)
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %15, %11, %7
  %23 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %24 = load i32, i32* @TDA10045H_IOFFSET, align 4
  %25 = call i32 @tda1004x_write_byteI(%struct.tda1004x_state* %23, i32 %24, i32 0)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @tda1004x_write_buf(%struct.tda1004x_state*, i32, i32*, i32) #1

declare dso_local i32 @tda1004x_write_byteI(%struct.tda1004x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
