; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_sd = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%s : card failed to respond for a long period of time (%x, %x)\0A\00", align 1
@host = common dso_local global %struct.tifm_sd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tifm_sd_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_sd_abort(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tifm_sd*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %5 = ptrtoint %struct.tifm_sd* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.tifm_sd* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.tifm_sd* %8, %struct.tifm_sd** %3, align 8
  %9 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %10 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i32 @dev_name(i32* %12)
  %14 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %15 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %22 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %20, i32 %23)
  %25 = load %struct.tifm_sd*, %struct.tifm_sd** %3, align 8
  %26 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i32 @tifm_eject(%struct.TYPE_6__* %27)
  ret void
}

declare dso_local %struct.tifm_sd* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @tifm_eject(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
