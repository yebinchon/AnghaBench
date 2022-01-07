; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wow.c_ath10k_wow_op_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wow.c_ath10k_wow_op_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ATH10K_FW_FEATURE_WOWLAN_SUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to resume hif: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to wakeup from wow: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to cleanup nlo: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"encountered unexpected device state %d on resume, cannot recover\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wow_op_resume(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  store %struct.ath10k* %7, %struct.ath10k** %3, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* @ATH10K_FW_FEATURE_WOWLAN_SUPPORT, align 4
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @test_bit(i32 %11, i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %53

25:                                               ; preds = %1
  %26 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %27 = call i32 @ath10k_hif_resume(%struct.ath10k* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @ath10k_warn(%struct.ath10k* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %53

34:                                               ; preds = %25
  %35 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %36 = call i32 @ath10k_wow_wakeup(%struct.ath10k* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ath10k_warn(%struct.ath10k* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = call i32 @ath10k_wow_nlo_cleanup(%struct.ath10k* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ath10k_warn(%struct.ath10k* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %30, %24
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %58 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %71 [
    i32 132, label %60
    i32 133, label %63
    i32 130, label %63
    i32 131, label %63
    i32 129, label %63
    i32 128, label %63
  ]

60:                                               ; preds = %56
  %61 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %62 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %61, i32 0, i32 0
  store i32 130, i32* %62, align 8
  store i32 1, i32* %4, align 4
  br label %71

63:                                               ; preds = %56, %56, %56, %56, %56
  %64 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %65 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %66 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ath10k_warn(%struct.ath10k* %64, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %56, %63, %60
  br label %72

72:                                               ; preds = %71, %53
  %73 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %74 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ath10k_hif_resume(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_wow_wakeup(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wow_nlo_cleanup(%struct.ath10k*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
