; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_driver_event_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_driver_event_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { i32, i32, i32, i32 }
%struct.ath10k_qmi_driver_event = type { i32, i32, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_qmi*, i32, i8*)* @ath10k_qmi_driver_event_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_driver_event_post(%struct.ath10k_qmi* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_qmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ath10k_qmi_driver_event*, align 8
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.ath10k_qmi_driver_event* @kzalloc(i32 16, i32 %9)
  store %struct.ath10k_qmi_driver_event* %10, %struct.ath10k_qmi_driver_event** %8, align 8
  %11 = load %struct.ath10k_qmi_driver_event*, %struct.ath10k_qmi_driver_event** %8, align 8
  %12 = icmp ne %struct.ath10k_qmi_driver_event* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ath10k_qmi_driver_event*, %struct.ath10k_qmi_driver_event** %8, align 8
  %19 = getelementptr inbounds %struct.ath10k_qmi_driver_event, %struct.ath10k_qmi_driver_event* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.ath10k_qmi_driver_event*, %struct.ath10k_qmi_driver_event** %8, align 8
  %22 = getelementptr inbounds %struct.ath10k_qmi_driver_event, %struct.ath10k_qmi_driver_event* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %5, align 8
  %24 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %23, i32 0, i32 2
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.ath10k_qmi_driver_event*, %struct.ath10k_qmi_driver_event** %8, align 8
  %27 = getelementptr inbounds %struct.ath10k_qmi_driver_event, %struct.ath10k_qmi_driver_event* %26, i32 0, i32 1
  %28 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %5, align 8
  %29 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %28, i32 0, i32 3
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %5, align 8
  %32 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %31, i32 0, i32 2
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %5, align 8
  %35 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %5, align 8
  %38 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %37, i32 0, i32 0
  %39 = call i32 @queue_work(i32 %36, i32* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %16, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.ath10k_qmi_driver_event* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
