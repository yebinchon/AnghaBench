; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_reset_ignore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_reset_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i32, i32, i32 }
%struct.timer_list = type { i32 }

@ignore_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Resetting card detection ignore\0A\00", align 1
@WBSD_FIGNORE_DETECT = common dso_local global i32 0, align 4
@host = common dso_local global %struct.wbsd_host* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @wbsd_reset_ignore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_reset_ignore(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.wbsd_host*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %5 = ptrtoint %struct.wbsd_host* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @ignore_timer, align 4
  %8 = call %struct.wbsd_host* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.wbsd_host* %8, %struct.wbsd_host** %3, align 8
  %9 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %10 = icmp eq %struct.wbsd_host* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %15 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load i32, i32* @WBSD_FIGNORE_DETECT, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %20 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %24 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %23, i32 0, i32 1
  %25 = call i32 @tasklet_schedule(i32* %24)
  %26 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %27 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  ret void
}

declare dso_local %struct.wbsd_host* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
