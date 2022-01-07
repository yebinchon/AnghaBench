; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_start_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32 }
%struct.mmc_request = type { i32 }

@ENOMEDIUM = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_start_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  %7 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %8 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 0
  %9 = call i32 @init_completion(i32* %8)
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = call i32 @mmc_retune_hold(%struct.mmc_host* %10)
  %12 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @mmc_card_removed(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEDIUM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %22 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %23 = call i32 @mmc_mrq_pr_debug(%struct.mmc_host* %21, %struct.mmc_request* %22, i32 0)
  %24 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %32 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %33 = call i32 @mmc_mrq_prep(%struct.mmc_host* %31, %struct.mmc_request* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %20
  %39 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @LED_FULL, align 4
  %43 = call i32 @led_trigger_event(i32 %41, i32 %42)
  %44 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %45 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %46 = call i32 @__mmc_start_request(%struct.mmc_host* %44, %struct.mmc_request* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %38, %36, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mmc_retune_hold(%struct.mmc_host*) #1

declare dso_local i64 @mmc_card_removed(i32) #1

declare dso_local i32 @mmc_mrq_pr_debug(%struct.mmc_host*, %struct.mmc_request*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmc_mrq_prep(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @led_trigger_event(i32, i32) #1

declare dso_local i32 @__mmc_start_request(%struct.mmc_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
