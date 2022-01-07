; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_fw_fatal_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_fw_fatal_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32 }
%struct.bnxt = type { i32 }
%struct.bnxt_fw_reporter_ctx = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BNXT_FW_RESET_NOTIFY_SP_EVENT = common dso_local global i64 0, align 8
@BNXT_FW_EXCEPTION_SP_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_health_reporter*, i8*)* @bnxt_fw_fatal_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_fw_fatal_recover(%struct.devlink_health_reporter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink_health_reporter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_fw_reporter_ctx*, align 8
  %8 = alloca i64, align 8
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %10 = call %struct.bnxt* @devlink_health_reporter_priv(%struct.devlink_health_reporter* %9)
  store %struct.bnxt* %10, %struct.bnxt** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.bnxt_fw_reporter_ctx*
  store %struct.bnxt_fw_reporter_ctx* %12, %struct.bnxt_fw_reporter_ctx** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.bnxt_fw_reporter_ctx*, %struct.bnxt_fw_reporter_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.bnxt_fw_reporter_ctx, %struct.bnxt_fw_reporter_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @BNXT_FW_RESET_NOTIFY_SP_EVENT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %27 = call i32 @bnxt_fw_reset(%struct.bnxt* %26)
  br label %36

28:                                               ; preds = %18
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @BNXT_FW_EXCEPTION_SP_EVENT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %34 = call i32 @bnxt_fw_exception(%struct.bnxt* %33)
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %25
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.bnxt* @devlink_health_reporter_priv(%struct.devlink_health_reporter*) #1

declare dso_local i32 @bnxt_fw_reset(%struct.bnxt*) #1

declare dso_local i32 @bnxt_fw_exception(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
