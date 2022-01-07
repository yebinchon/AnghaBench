; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_init_wmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_init_wmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ath9k_wmi_event_tasklet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wmi* @ath9k_init_wmi(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.wmi*, align 8
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.wmi*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.wmi* @kzalloc(i32 48, i32 %5)
  store %struct.wmi* %6, %struct.wmi** %4, align 8
  %7 = load %struct.wmi*, %struct.wmi** %4, align 8
  %8 = icmp ne %struct.wmi* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.wmi* null, %struct.wmi** %2, align 8
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %12 = load %struct.wmi*, %struct.wmi** %4, align 8
  %13 = getelementptr inbounds %struct.wmi, %struct.wmi* %12, i32 0, i32 10
  store %struct.ath9k_htc_priv* %11, %struct.ath9k_htc_priv** %13, align 8
  %14 = load %struct.wmi*, %struct.wmi** %4, align 8
  %15 = getelementptr inbounds %struct.wmi, %struct.wmi* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.wmi*, %struct.wmi** %4, align 8
  %17 = getelementptr inbounds %struct.wmi, %struct.wmi* %16, i32 0, i32 9
  %18 = call i32 @skb_queue_head_init(i32* %17)
  %19 = load %struct.wmi*, %struct.wmi** %4, align 8
  %20 = getelementptr inbounds %struct.wmi, %struct.wmi* %19, i32 0, i32 8
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.wmi*, %struct.wmi** %4, align 8
  %23 = getelementptr inbounds %struct.wmi, %struct.wmi* %22, i32 0, i32 7
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.wmi*, %struct.wmi** %4, align 8
  %26 = getelementptr inbounds %struct.wmi, %struct.wmi* %25, i32 0, i32 6
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.wmi*, %struct.wmi** %4, align 8
  %29 = getelementptr inbounds %struct.wmi, %struct.wmi* %28, i32 0, i32 5
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.wmi*, %struct.wmi** %4, align 8
  %32 = getelementptr inbounds %struct.wmi, %struct.wmi* %31, i32 0, i32 4
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.wmi*, %struct.wmi** %4, align 8
  %35 = getelementptr inbounds %struct.wmi, %struct.wmi* %34, i32 0, i32 3
  %36 = call i32 @init_completion(i32* %35)
  %37 = load %struct.wmi*, %struct.wmi** %4, align 8
  %38 = getelementptr inbounds %struct.wmi, %struct.wmi* %37, i32 0, i32 2
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.wmi*, %struct.wmi** %4, align 8
  %41 = getelementptr inbounds %struct.wmi, %struct.wmi* %40, i32 0, i32 1
  %42 = load i32, i32* @ath9k_wmi_event_tasklet, align 4
  %43 = load %struct.wmi*, %struct.wmi** %4, align 8
  %44 = ptrtoint %struct.wmi* %43 to i64
  %45 = call i32 @tasklet_init(i32* %41, i32 %42, i64 %44)
  %46 = load %struct.wmi*, %struct.wmi** %4, align 8
  store %struct.wmi* %46, %struct.wmi** %2, align 8
  br label %47

47:                                               ; preds = %10, %9
  %48 = load %struct.wmi*, %struct.wmi** %2, align 8
  ret %struct.wmi* %48
}

declare dso_local %struct.wmi* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
