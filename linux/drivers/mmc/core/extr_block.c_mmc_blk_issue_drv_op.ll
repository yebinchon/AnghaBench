; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_issue_drv_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_issue_drv_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { %struct.mmc_blk_data*, %struct.mmc_card* }
%struct.mmc_blk_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mmc_card = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.request = type { i32 }
%struct.mmc_queue_req = type { i32, i32, i32, %struct.mmc_blk_ioc_data** }
%struct.mmc_blk_ioc_data = type { i32 }

@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@EXT_CSD_BOOT_WP = common dso_local global i32 0, align 4
@EXT_CSD_BOOT_WP_B_PWR_WP_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%s: Locking boot partition ro until next power on failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: unknown driver specific operation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_queue*, %struct.request*)* @mmc_blk_issue_drv_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_issue_drv_op(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.mmc_queue_req*, align 8
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca %struct.mmc_blk_data*, align 8
  %8 = alloca %struct.mmc_blk_ioc_data**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mmc_blk_ioc_data**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %14 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %14, i32 0, i32 1
  %16 = load %struct.mmc_card*, %struct.mmc_card** %15, align 8
  store %struct.mmc_card* %16, %struct.mmc_card** %6, align 8
  %17 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %17, i32 0, i32 0
  %19 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %18, align 8
  store %struct.mmc_blk_data* %19, %struct.mmc_blk_data** %7, align 8
  %20 = load %struct.request*, %struct.request** %4, align 8
  %21 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %20)
  store %struct.mmc_queue_req* %21, %struct.mmc_queue_req** %5, align 8
  %22 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %23 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 128
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %28 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %111 [
    i32 129, label %30
    i32 128, label %30
    i32 132, label %63
    i32 131, label %96
    i32 130, label %104
  ]

30:                                               ; preds = %2, %2
  %31 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %32 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %31, i32 0, i32 3
  %33 = load %struct.mmc_blk_ioc_data**, %struct.mmc_blk_ioc_data*** %32, align 8
  store %struct.mmc_blk_ioc_data** %33, %struct.mmc_blk_ioc_data*** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %53, %30
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %37 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %42 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %7, align 8
  %43 = load %struct.mmc_blk_ioc_data**, %struct.mmc_blk_ioc_data*** %8, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mmc_blk_ioc_data*, %struct.mmc_blk_ioc_data** %43, i64 %45
  %47 = load %struct.mmc_blk_ioc_data*, %struct.mmc_blk_ioc_data** %46, align 8
  %48 = call i32 @__mmc_blk_ioctl_cmd(%struct.mmc_card* %41, %struct.mmc_blk_data* %42, %struct.mmc_blk_ioc_data* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %56

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %34

56:                                               ; preds = %51, %34
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %61 = call i32 @mmc_blk_part_switch(%struct.mmc_card* %60, i32 0)
  br label %62

62:                                               ; preds = %59, %56
  br label %120

63:                                               ; preds = %2
  %64 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %65 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %66 = load i32, i32* @EXT_CSD_BOOT_WP, align 4
  %67 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %68 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EXT_CSD_BOOT_WP_B_PWR_WP_EN, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %74 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mmc_switch(%struct.mmc_card* %64, i32 %65, i32 %66, i32 %72, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %63
  %81 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %7, align 8
  %82 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86)
  br label %95

88:                                               ; preds = %63
  %89 = load i32, i32* @EXT_CSD_BOOT_WP_B_PWR_WP_EN, align 4
  %90 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %91 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %88, %80
  br label %120

96:                                               ; preds = %2
  %97 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %98 = call i32 @mmc_send_status(%struct.mmc_card* %97, i32* %11)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %101, %96
  br label %120

104:                                              ; preds = %2
  %105 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %106 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %105, i32 0, i32 3
  %107 = load %struct.mmc_blk_ioc_data**, %struct.mmc_blk_ioc_data*** %106, align 8
  store %struct.mmc_blk_ioc_data** %107, %struct.mmc_blk_ioc_data*** %10, align 8
  %108 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %109 = load %struct.mmc_blk_ioc_data**, %struct.mmc_blk_ioc_data*** %10, align 8
  %110 = call i32 @mmc_get_ext_csd(%struct.mmc_card* %108, %struct.mmc_blk_ioc_data** %109)
  store i32 %110, i32* %12, align 4
  br label %120

111:                                              ; preds = %2
  %112 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %7, align 8
  %113 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %111, %104, %103, %95, %62
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %123 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.request*, %struct.request** %4, align 8
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @BLK_STS_IOERR, align 4
  br label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @BLK_STS_OK, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = call i32 @blk_mq_end_request(%struct.request* %124, i32 %132)
  ret void
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i32 @__mmc_blk_ioctl_cmd(%struct.mmc_card*, %struct.mmc_blk_data*, %struct.mmc_blk_ioc_data*) #1

declare dso_local i32 @mmc_blk_part_switch(%struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_switch(%struct.mmc_card*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @mmc_send_status(%struct.mmc_card*, i32*) #1

declare dso_local i32 @mmc_get_ext_csd(%struct.mmc_card*, %struct.mmc_blk_ioc_data**) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
