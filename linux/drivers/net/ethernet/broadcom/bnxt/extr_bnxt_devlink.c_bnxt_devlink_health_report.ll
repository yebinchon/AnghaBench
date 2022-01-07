; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_devlink_health_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_devlink_health_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_fw_health* }
%struct.bnxt_fw_health = type { i32, i32 }
%struct.bnxt_fw_reporter_ctx = type { i64 }

@BNXT_STATE_FW_FATAL_COND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"FW fatal async event received\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"FW non-fatal reset event received\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"FW fatal error reported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_devlink_health_report(%struct.bnxt* %0, i64 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bnxt_fw_health*, align 8
  %6 = alloca %struct.bnxt_fw_reporter_ctx, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 1
  %9 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %8, align 8
  store %struct.bnxt_fw_health* %9, %struct.bnxt_fw_health** %5, align 8
  %10 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %11 = icmp ne %struct.bnxt_fw_health* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %56

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.bnxt_fw_reporter_ctx, %struct.bnxt_fw_reporter_ctx* %6, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i64, i64* %4, align 8
  switch i64 %16, label %56 [
    i64 128, label %17
    i64 129, label %45
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* @BNXT_STATE_FW_FATAL_COND, align 4
  %19 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 0
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %25 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %56

29:                                               ; preds = %23
  %30 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %31 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @devlink_health_report(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.bnxt_fw_reporter_ctx* %6)
  br label %56

34:                                               ; preds = %17
  %35 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %36 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %56

40:                                               ; preds = %34
  %41 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %42 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @devlink_health_report(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.bnxt_fw_reporter_ctx* %6)
  br label %56

45:                                               ; preds = %13
  %46 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %47 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %56

51:                                               ; preds = %45
  %52 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %53 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @devlink_health_report(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.bnxt_fw_reporter_ctx* %6)
  br label %56

56:                                               ; preds = %12, %28, %29, %39, %40, %50, %51, %13
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @devlink_health_report(i32, i8*, %struct.bnxt_fw_reporter_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
