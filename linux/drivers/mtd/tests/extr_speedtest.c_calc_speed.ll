; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_speedtest.c_calc_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_speedtest.c_calc_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@finish = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@goodebcnt = common dso_local global i64 0, align 8
@mtd = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @calc_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_speed() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @finish, align 4
  %5 = load i32, i32* @start, align 4
  %6 = call i64 @ktime_ms_delta(i32 %4, i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %24

10:                                               ; preds = %0
  %11 = load i64, i64* @goodebcnt, align 8
  %12 = trunc i64 %11 to i32
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtd, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 1024
  %17 = mul nsw i32 %12, %16
  %18 = mul nsw i32 %17, 1000
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @do_div(i32 %19, i64 %20)
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %1, align 8
  br label %24

24:                                               ; preds = %10, %9
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

declare dso_local i64 @ktime_ms_delta(i32, i32) #1

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
