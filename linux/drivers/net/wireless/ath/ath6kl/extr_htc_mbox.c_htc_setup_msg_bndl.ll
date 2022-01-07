; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_setup_msg_bndl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_setup_msg_bndl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HTC_HOST_MAX_MSG_PER_BUNDLE = common dso_local global i32 0, align 4
@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"htc bundling allowed msg_per_bndl_max %d\0A\00", align 1
@HIF_MBOX0_EXT_WIDTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"htc max_rx_bndl_sz %d max_tx_bndl_sz %d\0A\00", align 1
@WMM_NUM_AC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"credit size: %d is not block aligned! Disabling send bundling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*)* @htc_setup_msg_bndl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_setup_msg_bndl(%struct.htc_target* %0) #0 {
  %2 = alloca %struct.htc_target*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %2, align 8
  %3 = load i32, i32* @HTC_HOST_MAX_MSG_PER_BUNDLE, align 4
  %4 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %5 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %4, i32 0, i32 7
  %6 = load i8*, i8** %5, align 8
  %7 = call i8* @min(i32 %3, i8* %6)
  %8 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %9 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %8, i32 0, i32 7
  store i8* %7, i8** %9, align 8
  %10 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %11 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %10, i32 0, i32 9
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ath6kl_hif_enable_scatter(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %19 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %18, i32 0, i32 7
  store i8* null, i8** %19, align 8
  br label %89

20:                                               ; preds = %1
  %21 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %22 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %25 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %24, i32 0, i32 7
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @min(i32 %23, i8* %26)
  %28 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %29 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %31 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %32 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %31, i32 0, i32 7
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, i8*, ...) @ath6kl_dbg(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %36 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %35, i32 0, i32 6
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %39 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @HIF_MBOX0_EXT_WIDTH, align 4
  %41 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %42 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %41, i32 0, i32 6
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @min(i32 %40, i8* %43)
  %45 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %46 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %48 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %49 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %52 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %51, i32 0, i32 5
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32, i8*, i8*, ...) @ath6kl_dbg(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %53)
  %55 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %56 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %55, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %20
  %60 = load i32, i32* @WMM_NUM_AC, align 4
  %61 = shl i32 1, %60
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %64 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %59, %20
  %66 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %67 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %72 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %75 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %78 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = srem i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %84 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %88 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %17, %82, %73
  ret void
}

declare dso_local i8* @min(i32, i8*) #1

declare dso_local i64 @ath6kl_hif_enable_scatter(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i8*, ...) #1

declare dso_local i32 @ath6kl_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
