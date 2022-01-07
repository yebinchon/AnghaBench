; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c___i2400m_tx_tail_room.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c___i2400m_tx_tail_room.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i64 }

@I2400M_TX_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i2400m*)* @__i2400m_tx_tail_room to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__i2400m_tx_tail_room(%struct.i2400m* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  %6 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %7 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @I2400M_TX_BUF_SIZE, align 8
  store i64 %14, i64* %2, align 8
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %17 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @I2400M_TX_BUF_SIZE, align 8
  %20 = urem i64 %18, %19
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* @I2400M_TX_BUF_SIZE, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 %21, %22
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* @I2400M_TX_BUF_SIZE, align 8
  %25 = load i64, i64* %4, align 8
  %26 = urem i64 %25, %24
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %15, %13
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
