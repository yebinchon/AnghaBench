; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_activity_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_activity_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, i32, %struct.htc_endpoint* }
%struct.htc_endpoint = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@HTC_EP_ACTIVE = common dso_local global i32 0, align 4
@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"htc tx activity ctxt 0x%p dist 0x%p\0A\00", align 1
@HTC_CREDIT_DIST_ACTIVITY_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, i32, i32)* @ath6kl_htc_mbox_activity_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_htc_mbox_activity_changed(%struct.htc_target* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.htc_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.htc_endpoint*, align 8
  %8 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %10 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %9, i32 0, i32 3
  %11 = load %struct.htc_endpoint*, %struct.htc_endpoint** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %11, i64 %13
  store %struct.htc_endpoint* %14, %struct.htc_endpoint** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %16 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @WARN_ON(i32 1)
  br label %96

21:                                               ; preds = %3
  %22 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %23 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %29 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HTC_EP_ACTIVE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @HTC_EP_ACTIVE, align 4
  %37 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %38 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 4
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %35, %27
  br label %60

43:                                               ; preds = %21
  %44 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %45 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @HTC_EP_ACTIVE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load i32, i32* @HTC_EP_ACTIVE, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %55 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %53
  store i32 %58, i32* %56, align 4
  store i32 1, i32* %8, align 4
  br label %59

59:                                               ; preds = %51, %43
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %65 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %64, i32 0, i32 1
  %66 = call i32 @get_queue_depth(i32* %65)
  %67 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %68 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %71 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %72 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %75 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %74, i32 0, i32 1
  %76 = call i32 @ath6kl_dbg(i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %73, i32* %75)
  %77 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %78 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %81 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %80, i32 0, i32 1
  %82 = load i32, i32* @HTC_CREDIT_DIST_ACTIVITY_CHANGE, align 4
  %83 = call i32 @ath6kl_credit_distribute(i32 %79, i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %63, %60
  %85 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %86 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock_bh(i32* %86)
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %95 = call i32 @htc_chk_ep_txq(%struct.htc_target* %94)
  br label %96

96:                                               ; preds = %19, %93, %90, %84
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @get_queue_depth(i32*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32*) #1

declare dso_local i32 @ath6kl_credit_distribute(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @htc_chk_ep_txq(%struct.htc_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
