; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_next_wmi_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_next_wmi_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.wil6210_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.wil6210_priv*)* @next_wmi_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @next_wmi_ev(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  store %struct.list_head* null, %struct.list_head** %4, align 8
  %5 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %6 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @spin_lock_irqsave(i32* %6, i32 %7)
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %10 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %9, i32 0, i32 1
  %11 = call i32 @list_empty(%struct.TYPE_2__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %15 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8
  store %struct.list_head* %17, %struct.list_head** %4, align 8
  %18 = load %struct.list_head*, %struct.list_head** %4, align 8
  %19 = call i32 @list_del(%struct.list_head* %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %22 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i32 %23)
  %25 = load %struct.list_head*, %struct.list_head** %4, align 8
  ret %struct.list_head* %25
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local i32 @list_del(%struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
