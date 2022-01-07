; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_flush_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_flush_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@EXT_CSD_FLUSH_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: cache flush error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_flush_cache(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %5 = call i64 @mmc_card_mmc(%struct.mmc_card* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %15 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %13
  %21 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %22 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %23 = load i32, i32* @EXT_CSD_FLUSH_CACHE, align 4
  %24 = call i32 @mmc_switch(%struct.mmc_card* %21, i32 %22, i32 %23, i32 1, i32 0)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %29 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @mmc_hostname(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %20
  br label %35

35:                                               ; preds = %34, %13, %7, %1
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @mmc_card_mmc(%struct.mmc_card*) #1

declare dso_local i32 @mmc_switch(%struct.mmc_card*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
