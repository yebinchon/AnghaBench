; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_flush_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_flush_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32, i32, i32, i32 }

@AR5523_USB_DISCONNECTED = common dso_local global i32 0, align 4
@AR5523_FLUSH_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"flush timeout (tot %d pend %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar5523*)* @ar5523_flush_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5523_flush_tx(%struct.ar5523* %0) #0 {
  %2 = alloca %struct.ar5523*, align 8
  store %struct.ar5523* %0, %struct.ar5523** %2, align 8
  %3 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %4 = call i32 @ar5523_tx_work_locked(%struct.ar5523* %3)
  %5 = load i32, i32* @AR5523_USB_DISCONNECTED, align 4
  %6 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %7 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %6, i32 0, i32 3
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %13 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %16 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @AR5523_FLUSH_TIMEOUT, align 4
  %22 = call i32 @wait_event_timeout(i32 %14, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %11
  %25 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %26 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %27 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %26, i32 0, i32 1
  %28 = call i32 @atomic_read(i32* %27)
  %29 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %30 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %29, i32 0, i32 0
  %31 = call i32 @atomic_read(i32* %30)
  %32 = call i32 @ar5523_err(%struct.ar5523* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %10, %24, %11
  ret void
}

declare dso_local i32 @ar5523_tx_work_locked(%struct.ar5523*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ar5523_err(%struct.ar5523*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
