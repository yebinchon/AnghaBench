; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_phy_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_phy_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis190_private = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@tp = common dso_local global %struct.sis190_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sis190_phy_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis190_phy_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sis190_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %6 = ptrtoint %struct.sis190_private* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.sis190_private* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.sis190_private* %9, %struct.sis190_private** %3, align 8
  %10 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %11 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_running(%struct.net_device* %13)
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.sis190_private*, %struct.sis190_private** %3, align 8
  %19 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %18, i32 0, i32 0
  %20 = call i32 @schedule_work(i32* %19)
  br label %21

21:                                               ; preds = %17, %1
  ret void
}

declare dso_local %struct.sis190_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
