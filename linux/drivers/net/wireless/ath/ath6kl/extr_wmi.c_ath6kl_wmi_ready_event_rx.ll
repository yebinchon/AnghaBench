; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_ready_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_ready_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.wmi_ready_event_2 = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32)* @ath6kl_wmi_ready_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_ready_event_rx(%struct.wmi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_ready_event_2*, align 8
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = bitcast i32* %9 to %struct.wmi_ready_event_2*
  store %struct.wmi_ready_event_2* %10, %struct.wmi_ready_event_2** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 16
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  %18 = load %struct.wmi*, %struct.wmi** %5, align 8
  %19 = getelementptr inbounds %struct.wmi, %struct.wmi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wmi_ready_event_2*, %struct.wmi_ready_event_2** %8, align 8
  %22 = getelementptr inbounds %struct.wmi_ready_event_2, %struct.wmi_ready_event_2* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wmi_ready_event_2*, %struct.wmi_ready_event_2** %8, align 8
  %25 = getelementptr inbounds %struct.wmi_ready_event_2, %struct.wmi_ready_event_2* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = load %struct.wmi_ready_event_2*, %struct.wmi_ready_event_2** %8, align 8
  %29 = getelementptr inbounds %struct.wmi_ready_event_2, %struct.wmi_ready_event_2* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load %struct.wmi_ready_event_2*, %struct.wmi_ready_event_2** %8, align 8
  %33 = getelementptr inbounds %struct.wmi_ready_event_2, %struct.wmi_ready_event_2* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ath6kl_ready_event(i32 %20, i32 %23, i32 %27, i32 %31, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %17, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @ath6kl_ready_event(i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
