; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }

@ATH6KL_DBG_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sdio resume configuring sdio\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_sdio_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_resume(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %3 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %4 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %17 [
    i32 133, label %6
    i32 135, label %6
    i32 132, label %11
    i32 134, label %12
    i32 128, label %13
    i32 129, label %14
    i32 130, label %15
    i32 131, label %16
  ]

6:                                                ; preds = %1, %1
  %7 = load i32, i32* @ATH6KL_DBG_SUSPEND, align 4
  %8 = call i32 @ath6kl_dbg(i32 %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %10 = call i32 @ath6kl_sdio_config(%struct.ath6kl* %9)
  br label %17

11:                                               ; preds = %1
  br label %17

12:                                               ; preds = %1
  br label %17

13:                                               ; preds = %1
  br label %17

14:                                               ; preds = %1
  br label %17

15:                                               ; preds = %1
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %1, %16, %15, %14, %13, %12, %11, %6
  %18 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %19 = call i32 @ath6kl_cfg80211_resume(%struct.ath6kl* %18)
  ret i32 0
}

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

declare dso_local i32 @ath6kl_sdio_config(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_cfg80211_resume(%struct.ath6kl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
