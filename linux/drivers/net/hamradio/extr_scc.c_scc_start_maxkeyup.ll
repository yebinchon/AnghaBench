; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_start_maxkeyup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_start_maxkeyup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@TIMER_OFF = common dso_local global i32 0, align 4
@t_maxkeyup = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scc_channel*)* @scc_start_maxkeyup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_start_maxkeyup(%struct.scc_channel* %0) #0 {
  %2 = alloca %struct.scc_channel*, align 8
  %3 = alloca i64, align 8
  store %struct.scc_channel* %0, %struct.scc_channel** %2, align 8
  %4 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %5 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %9 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %8, i32 0, i32 1
  %10 = call i32 @del_timer(%struct.TYPE_5__* %9)
  %11 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %12 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %1
  %17 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %18 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TIMER_OFF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %16
  %24 = load i32, i32* @t_maxkeyup, align 4
  %25 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %26 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* @HZ, align 4
  %30 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %31 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %29, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %28, %35
  %37 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %38 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %41 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %40, i32 0, i32 1
  %42 = call i32 @add_timer(%struct.TYPE_5__* %41)
  br label %43

43:                                               ; preds = %23, %16, %1
  %44 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %45 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %44, i32 0, i32 0
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
