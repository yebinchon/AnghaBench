; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_recovery.c_ath6kl_recovery_hb_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_recovery.c_ath6kl_recovery_hb_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ath6kl = type { i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i64 }
%struct.timer_list = type { i32 }

@fw_recovery = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@RECOVERY_CLEANUP = common dso_local global i32 0, align 4
@ATH6KL_STATE_RECOVERY = common dso_local global i64 0, align 8
@ATH6KL_HB_RESP_MISS_THRES = common dso_local global i64 0, align 8
@ATH6KL_FW_HB_RESP_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to send hb challenge request, err:%d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@ar = common dso_local global %struct.ath6kl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ath6kl_recovery_hb_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_recovery_hb_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %6 = ptrtoint %struct.ath6kl* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw_recovery, i32 0, i32 0), align 4
  %9 = call %struct.ath6kl* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.ath6kl* %9, %struct.ath6kl** %3, align 8
  %10 = load i32, i32* @RECOVERY_CLEANUP, align 4
  %11 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %12 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %11, i32 0, i32 3
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %17 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ATH6KL_STATE_RECOVERY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  br label %92

22:                                               ; preds = %15
  %23 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %24 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %30 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  br label %38

34:                                               ; preds = %22
  %35 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %36 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %40 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ATH6KL_HB_RESP_MISS_THRES, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %47 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %50 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %53 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %56 = load i32, i32* @ATH6KL_FW_HB_RESP_FAILURE, align 4
  %57 = call i32 @ath6kl_recovery_err_notify(%struct.ath6kl* %55, i32 %56)
  br label %92

58:                                               ; preds = %38
  %59 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %60 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %65 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %68 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %71 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ath6kl_wmi_get_challenge_resp_cmd(i32 %69, i64 %73, i32 0)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %58
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %58
  %81 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %82 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i64, i64* @jiffies, align 8
  %85 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %86 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @msecs_to_jiffies(i32 %88)
  %90 = add nsw i64 %84, %89
  %91 = call i32 @mod_timer(i32* %83, i64 %90)
  br label %92

92:                                               ; preds = %80, %45, %21
  ret void
}

declare dso_local %struct.ath6kl* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_recovery_err_notify(%struct.ath6kl*, i32) #1

declare dso_local i32 @ath6kl_wmi_get_challenge_resp_cmd(i32, i64, i32) #1

declare dso_local i32 @ath6kl_warn(i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
