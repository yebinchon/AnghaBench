; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_cqe_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_cqe_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { i32, %struct.mmc_card* }
%struct.mmc_card = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s: CQE recovery start\0A\00", align 1
@MMC_BLK_CQE_RECOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: CQE recovery done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_blk_cqe_recovery(%struct.mmc_queue* %0) #0 {
  %2 = alloca %struct.mmc_queue*, align 8
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %2, align 8
  %6 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %7 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %6, i32 0, i32 1
  %8 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  store %struct.mmc_card* %8, %struct.mmc_card** %3, align 8
  %9 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 0
  %11 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  store %struct.mmc_host* %11, %struct.mmc_host** %4, align 8
  %12 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %13 = call i32 @mmc_hostname(%struct.mmc_host* %12)
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %16 = call i32 @mmc_cqe_recovery(%struct.mmc_host* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %21 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %24 = load i32, i32* @MMC_BLK_CQE_RECOVERY, align 4
  %25 = call i32 @mmc_blk_reset(i32 %22, %struct.mmc_host* %23, i32 %24)
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %28 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MMC_BLK_CQE_RECOVERY, align 4
  %31 = call i32 @mmc_blk_reset_success(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %34 = call i32 @mmc_hostname(%struct.mmc_host* %33)
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @mmc_cqe_recovery(%struct.mmc_host*) #1

declare dso_local i32 @mmc_blk_reset(i32, %struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_blk_reset_success(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
