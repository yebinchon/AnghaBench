; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_issue_secdiscard_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_issue_secdiscard_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { %struct.mmc_blk_data* }
%struct.mmc_blk_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mmc_card* }
%struct.mmc_card = type { i32, i32 }
%struct.request = type { i32 }

@MMC_BLK_SECDISCARD = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_NOTSUPP = common dso_local global i32 0, align 4
@MMC_SECURE_TRIM1_ARG = common dso_local global i32 0, align 4
@MMC_SECURE_ERASE_ARG = common dso_local global i32 0, align 4
@MMC_QUIRK_INAND_CMD38 = common dso_local global i32 0, align 4
@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@INAND_CMD38_ARG_EXT_CSD = common dso_local global i32 0, align 4
@INAND_CMD38_ARG_SECTRIM1 = common dso_local global i32 0, align 4
@INAND_CMD38_ARG_SECERASE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@INAND_CMD38_ARG_SECTRIM2 = common dso_local global i32 0, align 4
@MMC_SECURE_TRIM2_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_queue*, %struct.request*)* @mmc_blk_issue_secdiscard_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_issue_secdiscard_rq(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.mmc_blk_data*, align 8
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %13 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %13, i32 0, i32 0
  %15 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  store %struct.mmc_blk_data* %15, %struct.mmc_blk_data** %5, align 8
  %16 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mmc_card*, %struct.mmc_card** %18, align 8
  store %struct.mmc_card* %19, %struct.mmc_card** %6, align 8
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* @MMC_BLK_SECDISCARD, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %23 = call i32 @mmc_can_secure_erase_trim(%struct.mmc_card* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @BLK_STS_NOTSUPP, align 4
  store i32 %26, i32* %12, align 4
  br label %146

27:                                               ; preds = %2
  %28 = load %struct.request*, %struct.request** %4, align 8
  %29 = call i32 @blk_rq_pos(%struct.request* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.request*, %struct.request** %4, align 8
  %31 = call i32 @blk_rq_sectors(%struct.request* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %33 = call i64 @mmc_can_trim(%struct.mmc_card* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mmc_erase_group_aligned(%struct.mmc_card* %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @MMC_SECURE_TRIM1_ARG, align 4
  store i32 %42, i32* %9, align 4
  br label %45

43:                                               ; preds = %35, %27
  %44 = load i32, i32* @MMC_SECURE_ERASE_ARG, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %137, %45
  %47 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %48 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MMC_QUIRK_INAND_CMD38, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %55 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %56 = load i32, i32* @INAND_CMD38_ARG_EXT_CSD, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @MMC_SECURE_TRIM1_ARG, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @INAND_CMD38_ARG_SECTRIM1, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @INAND_CMD38_ARG_SECERASE, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = call i32 @mmc_switch(%struct.mmc_card* %54, i32 %55, i32 %56, i32 %65, i32 0)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %126

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %46
  %72 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @mmc_erase(%struct.mmc_card* %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %126

82:                                               ; preds = %71
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %86, i32* %12, align 4
  br label %146

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @MMC_SECURE_TRIM1_ARG, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %125

91:                                               ; preds = %87
  %92 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %93 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MMC_QUIRK_INAND_CMD38, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %91
  %99 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %100 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %101 = load i32, i32* @INAND_CMD38_ARG_EXT_CSD, align 4
  %102 = load i32, i32* @INAND_CMD38_ARG_SECTRIM2, align 4
  %103 = call i32 @mmc_switch(%struct.mmc_card* %99, i32 %100, i32 %101, i32 %102, i32 0)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %126

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %91
  %109 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @MMC_SECURE_TRIM2_ARG, align 4
  %113 = call i32 @mmc_erase(%struct.mmc_card* %109, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %126

119:                                              ; preds = %108
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %123, i32* %12, align 4
  br label %146

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %87
  br label %126

126:                                              ; preds = %125, %118, %106, %81, %69
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %131 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %132 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @mmc_blk_reset(%struct.mmc_blk_data* %130, i32 %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %129
  br label %46

138:                                              ; preds = %129, %126
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %5, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @mmc_blk_reset_success(%struct.mmc_blk_data* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %138
  br label %146

146:                                              ; preds = %145, %122, %85, %25
  %147 = load %struct.request*, %struct.request** %4, align 8
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @blk_mq_end_request(%struct.request* %147, i32 %148)
  ret void
}

declare dso_local i32 @mmc_can_secure_erase_trim(%struct.mmc_card*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @mmc_can_trim(%struct.mmc_card*) #1

declare dso_local i32 @mmc_erase_group_aligned(%struct.mmc_card*, i32, i32) #1

declare dso_local i32 @mmc_switch(%struct.mmc_card*, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_erase(%struct.mmc_card*, i32, i32, i32) #1

declare dso_local i32 @mmc_blk_reset(%struct.mmc_blk_data*, i32, i32) #1

declare dso_local i32 @mmc_blk_reset_success(%struct.mmc_blk_data*, i32) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
