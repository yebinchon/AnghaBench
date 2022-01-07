; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_run_bkops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_run_bkops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s: Failed to read bkops status: %d\0A\00", align 1
@EXT_CSD_BKOPS_LEVEL_2 = common dso_local global i64 0, align 8
@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@EXT_CSD_BKOPS_START = common dso_local global i32 0, align 4
@MMC_OPS_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: Error %d starting bkops\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_run_bkops(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %4 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %60

10:                                               ; preds = %1
  %11 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %12 = call i32 @mmc_read_bkops_status(%struct.mmc_card* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %17 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mmc_hostname(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  br label %60

22:                                               ; preds = %10
  %23 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %24 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %30 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EXT_CSD_BKOPS_LEVEL_2, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %22
  br label %60

36:                                               ; preds = %28
  %37 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %38 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mmc_retune_hold(i32 %39)
  %41 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %42 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %43 = load i32, i32* @EXT_CSD_BKOPS_START, align 4
  %44 = load i32, i32* @MMC_OPS_TIMEOUT_MS, align 4
  %45 = call i32 @mmc_switch(%struct.mmc_card* %41, i32 %42, i32 %43, i32 1, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %36
  %49 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %50 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @mmc_hostname(i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %36
  %56 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %57 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mmc_retune_release(i32 %58)
  br label %60

60:                                               ; preds = %55, %35, %15, %9
  ret void
}

declare dso_local i32 @mmc_read_bkops_status(%struct.mmc_card*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @mmc_retune_hold(i32) #1

declare dso_local i32 @mmc_switch(%struct.mmc_card*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @mmc_retune_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
