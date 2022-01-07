; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.h_vxge_os_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.h_vxge_os_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*, void (%struct.timer_list*)*, i64)* @vxge_os_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_os_timer(%struct.timer_list* %0, void (%struct.timer_list*)* %1, i64 %2) #0 {
  %4 = alloca %struct.timer_list*, align 8
  %5 = alloca void (%struct.timer_list*)*, align 8
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %4, align 8
  store void (%struct.timer_list*)* %1, void (%struct.timer_list*)** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.timer_list*, %struct.timer_list** %4, align 8
  %8 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %5, align 8
  %9 = call i32 @timer_setup(%struct.timer_list* %7, void (%struct.timer_list*)* %8, i32 0)
  %10 = load %struct.timer_list*, %struct.timer_list** %4, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %11, %12
  %14 = call i32 @mod_timer(%struct.timer_list* %10, i64 %13)
  ret void
}

declare dso_local i32 @timer_setup(%struct.timer_list*, void (%struct.timer_list*)*, i32) #1

declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
