; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda8083.c_tda8083_wait_diseqc_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda8083.c_tda8083_wait_diseqc_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda8083_state = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda8083_state*, i32)* @tda8083_wait_diseqc_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda8083_wait_diseqc_fifo(%struct.tda8083_state* %0, i32 %1) #0 {
  %3 = alloca %struct.tda8083_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.tda8083_state* %0, %struct.tda8083_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %5, align 8
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* %5, align 8
  %10 = sub i64 %8, %9
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  %15 = load %struct.tda8083_state*, %struct.tda8083_state** %3, align 8
  %16 = call i32 @tda8083_readreg(%struct.tda8083_state* %15, i32 2)
  %17 = and i32 %16, 128
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %7
  %21 = phi i1 [ false, %7 ], [ %19, %14 ]
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = call i32 @msleep(i32 50)
  br label %7

24:                                               ; preds = %20
  ret void
}

declare dso_local i32 @tda8083_readreg(%struct.tda8083_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
