; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_notify_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_notify_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32 }
%struct.timer_list = type { i32 }

@notify_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ENIC_NOTIFY_TIMER_PERIOD = common dso_local global i64 0, align 8
@enic = common dso_local global %struct.enic* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @enic_notify_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_notify_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.enic*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.enic*, %struct.enic** %3, align 8
  %5 = ptrtoint %struct.enic* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @notify_timer, align 4
  %8 = call %struct.enic* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.enic* %8, %struct.enic** %3, align 8
  %9 = load %struct.enic*, %struct.enic** %3, align 8
  %10 = call i32 @enic_notify_check(%struct.enic* %9)
  %11 = load %struct.enic*, %struct.enic** %3, align 8
  %12 = getelementptr inbounds %struct.enic, %struct.enic* %11, i32 0, i32 0
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @ENIC_NOTIFY_TIMER_PERIOD, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @round_jiffies(i64 %15)
  %17 = call i32 @mod_timer(i32* %12, i32 %16)
  ret void
}

declare dso_local %struct.enic* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @enic_notify_check(%struct.enic*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
