; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_issue_discard_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_issue_discard_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { %struct.mmc_blk_data* }
%struct.mmc_blk_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mmc_card* }
%struct.mmc_card = type { i32, i64, i32 }
%struct.request = type { i32 }

@MMC_BLK_DISCARD = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_NOTSUPP = common dso_local global i32 0, align 4
@MMC_QUIRK_INAND_CMD38 = common dso_local global i32 0, align 4
@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@INAND_CMD38_ARG_EXT_CSD = common dso_local global i32 0, align 4
@MMC_TRIM_ARG = common dso_local global i64 0, align 8
@INAND_CMD38_ARG_TRIM = common dso_local global i32 0, align 4
@INAND_CMD38_ARG_ERASE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_queue*, %struct.request*)* @mmc_blk_issue_discard_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_issue_discard_rq(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.mmc_blk_data*, align 8
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %12 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %12, i32 0, i32 0
  %14 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %13, align 8
  store %struct.mmc_blk_data* %14, %struct.mmc_blk_data** %5, align 8
  %15 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mmc_card*, %struct.mmc_card** %17, align 8
  store %struct.mmc_card* %18, %struct.mmc_card** %6, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* @MMC_BLK_DISCARD, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %22 = call i32 @mmc_can_erase(%struct.mmc_card* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @BLK_STS_NOTSUPP, align 4
  store i32 %25, i32* %11, align 4
  br label %92

26:                                               ; preds = %2
  %27 = load %struct.request*, %struct.request** %4, align 8
  %28 = call i32 @blk_rq_pos(%struct.request* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.request*, %struct.request** %4, align 8
  %30 = call i32 @blk_rq_sectors(%struct.request* %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %80, %26
  store i32 0, i32* %9, align 4
  %32 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %33 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MMC_QUIRK_INAND_CMD38, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %40 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %41 = load i32, i32* @INAND_CMD38_ARG_EXT_CSD, align 4
  %42 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %43 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MMC_TRIM_ARG, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @INAND_CMD38_ARG_TRIM, align 4
  br label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @INAND_CMD38_ARG_ERASE, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = call i32 @mmc_switch(%struct.mmc_card* %39, i32 %40, i32 %41, i32 %52, i32 0)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %51, %31
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %62 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @mmc_erase(%struct.mmc_card* %58, i32 %59, i32 %60, i64 %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %57, %54
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %73 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %74 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @mmc_blk_reset(%struct.mmc_blk_data* %72, i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %71, %66
  %81 = phi i1 [ false, %66 ], [ %79, %71 ]
  br i1 %81, label %31, label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %86, i32* %11, align 4
  br label %91

87:                                               ; preds = %82
  %88 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @mmc_blk_reset_success(%struct.mmc_blk_data* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %85
  br label %92

92:                                               ; preds = %91, %24
  %93 = load %struct.request*, %struct.request** %4, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @blk_mq_end_request(%struct.request* %93, i32 %94)
  ret void
}

declare dso_local i32 @mmc_can_erase(%struct.mmc_card*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @mmc_switch(%struct.mmc_card*, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_erase(%struct.mmc_card*, i32, i32, i64) #1

declare dso_local i32 @mmc_blk_reset(%struct.mmc_blk_data*, i32, i32) #1

declare dso_local i32 @mmc_blk_reset_success(%struct.mmc_blk_data*, i32) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
