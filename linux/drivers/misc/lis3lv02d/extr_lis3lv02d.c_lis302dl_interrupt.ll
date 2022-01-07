; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis302dl_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis302dl_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i32, i32, i32, i32, i32 }

@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lis302dl_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis302dl_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lis3lv02d*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.lis3lv02d*
  store %struct.lis3lv02d* %8, %struct.lis3lv02d** %6, align 8
  %9 = load %struct.lis3lv02d*, %struct.lis3lv02d** %6, align 8
  %10 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %9, i32 0, i32 4
  %11 = call i32 @test_bit(i32 0, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.lis3lv02d*, %struct.lis3lv02d** %6, align 8
  %16 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %15, i32 0, i32 3
  %17 = call i32 @atomic_inc(i32* %16)
  %18 = load %struct.lis3lv02d*, %struct.lis3lv02d** %6, align 8
  %19 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %18, i32 0, i32 2
  %20 = call i32 @wake_up_interruptible(i32* %19)
  %21 = load %struct.lis3lv02d*, %struct.lis3lv02d** %6, align 8
  %22 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %21, i32 0, i32 1
  %23 = load i32, i32* @SIGIO, align 4
  %24 = load i32, i32* @POLL_IN, align 4
  %25 = call i32 @kill_fasync(i32* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %14, %13
  %27 = load %struct.lis3lv02d*, %struct.lis3lv02d** %6, align 8
  %28 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %27, i32 0, i32 0
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
