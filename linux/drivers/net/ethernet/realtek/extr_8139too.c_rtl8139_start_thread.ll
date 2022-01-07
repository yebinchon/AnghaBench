; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139too.c_rtl8139_start_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139too.c_rtl8139_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8139_private = type { i32, i64, i32, i32, i32, i64 }

@CH_8139_K = common dso_local global i64 0, align 8
@HAS_LNK_CHNG = common dso_local global i32 0, align 4
@next_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8139_private*)* @rtl8139_start_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8139_start_thread(%struct.rtl8139_private* %0) #0 {
  %2 = alloca %struct.rtl8139_private*, align 8
  store %struct.rtl8139_private* %0, %struct.rtl8139_private** %2, align 8
  %3 = load %struct.rtl8139_private*, %struct.rtl8139_private** %2, align 8
  %4 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.rtl8139_private*, %struct.rtl8139_private** %2, align 8
  %6 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CH_8139_K, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.rtl8139_private*, %struct.rtl8139_private** %2, align 8
  %12 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.rtl8139_private*, %struct.rtl8139_private** %2, align 8
  %15 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HAS_LNK_CHNG, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %31

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %10
  %23 = load %struct.rtl8139_private*, %struct.rtl8139_private** %2, align 8
  %24 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %23, i32 0, i32 3
  store i32 1, i32* %24, align 4
  %25 = load %struct.rtl8139_private*, %struct.rtl8139_private** %2, align 8
  %26 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.rtl8139_private*, %struct.rtl8139_private** %2, align 8
  %28 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %27, i32 0, i32 4
  %29 = load i32, i32* @next_tick, align 4
  %30 = call i32 @schedule_delayed_work(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %20
  ret void
}

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
