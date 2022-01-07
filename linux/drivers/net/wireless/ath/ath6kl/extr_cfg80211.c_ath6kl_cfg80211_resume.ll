; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }

@ATH6KL_DBG_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"wow mode resume\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"wow mode resume failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"deep sleep resume\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"deep sleep resume failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"resume restoring power\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to boot hw in resume: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_cfg80211_resume(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %5 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %6 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %44 [
    i32 128, label %8
    i32 129, label %20
    i32 130, label %32
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @ATH6KL_DBG_SUSPEND, align 4
  %10 = call i32 @ath6kl_dbg(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %12 = call i32 @ath6kl_wow_resume(%struct.ath6kl* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %8
  br label %45

20:                                               ; preds = %1
  %21 = load i32, i32* @ATH6KL_DBG_SUSPEND, align 4
  %22 = call i32 @ath6kl_dbg(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %24 = call i32 @ath6kl_cfg80211_deepsleep_resume(%struct.ath6kl* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %46

31:                                               ; preds = %20
  br label %45

32:                                               ; preds = %1
  %33 = load i32, i32* @ATH6KL_DBG_SUSPEND, align 4
  %34 = call i32 @ath6kl_dbg(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %35 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %36 = call i32 @ath6kl_init_hw_start(%struct.ath6kl* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %32
  br label %45

44:                                               ; preds = %1
  br label %45

45:                                               ; preds = %44, %43, %31, %19
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %39, %27, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

declare dso_local i32 @ath6kl_wow_resume(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_warn(i8*, i32) #1

declare dso_local i32 @ath6kl_cfg80211_deepsleep_resume(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_init_hw_start(%struct.ath6kl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
