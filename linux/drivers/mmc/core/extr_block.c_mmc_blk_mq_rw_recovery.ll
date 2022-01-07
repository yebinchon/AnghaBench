; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_rw_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_rw_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { %struct.mmc_card*, %struct.mmc_blk_data* }
%struct.mmc_card = type { i32 }
%struct.mmc_blk_data = type { i32 }
%struct.request = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mmc_queue_req = type { i64, %struct.mmc_blk_request }
%struct.mmc_blk_request = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@READ = common dso_local global i64 0, align 8
@MMC_BLK_READ = common dso_local global i32 0, align 4
@MMC_BLK_WRITE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"%s: recovery failed!\0A\00", align 1
@MMC_NO_RETRIES = common dso_local global i64 0, align 8
@MMC_MAX_RETRIES = common dso_local global i64 0, align 8
@MMC_DATA_RETRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_queue*, %struct.request*)* @mmc_blk_mq_rw_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_mq_rw_recovery(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_queue_req*, align 8
  %7 = alloca %struct.mmc_blk_request*, align 8
  %8 = alloca %struct.mmc_blk_data*, align 8
  %9 = alloca %struct.mmc_card*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = call i64 @rq_data_dir(%struct.request* %13)
  %15 = load i64, i64* @READ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @MMC_BLK_READ, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @MMC_BLK_WRITE, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %5, align 4
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %23)
  store %struct.mmc_queue_req* %24, %struct.mmc_queue_req** %6, align 8
  %25 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %6, align 8
  %26 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %25, i32 0, i32 1
  store %struct.mmc_blk_request* %26, %struct.mmc_blk_request** %7, align 8
  %27 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %27, i32 0, i32 1
  %29 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %28, align 8
  store %struct.mmc_blk_data* %29, %struct.mmc_blk_data** %8, align 8
  %30 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %30, i32 0, i32 0
  %32 = load %struct.mmc_card*, %struct.mmc_card** %31, align 8
  store %struct.mmc_card* %32, %struct.mmc_card** %9, align 8
  %33 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %34 = call i32 @__mmc_send_status(%struct.mmc_card* %33, i32* %10, i32 0)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %21
  %38 = load %struct.request*, %struct.request** %4, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @mmc_blk_status_error(%struct.request* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37, %21
  %43 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %7, align 8
  %44 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %48 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mmc_retune_release(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %55 = call i32 @__mmc_send_status(%struct.mmc_card* %54, i32* %10, i32 0)
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %61 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @mmc_detect_card_removed(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %214

66:                                               ; preds = %59, %56
  %67 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %68 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %67, i32 0, i32 0
  %69 = load %struct.mmc_card*, %struct.mmc_card** %68, align 8
  %70 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mmc_host_is_spi(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @mmc_blk_in_tran_state(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %77, %74
  %82 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %83 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %82, i32 0, i32 0
  %84 = load %struct.mmc_card*, %struct.mmc_card** %83, align 8
  %85 = load %struct.request*, %struct.request** %4, align 8
  %86 = call i32 @mmc_blk_fix_state(%struct.mmc_card* %84, %struct.request* %85)
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %81, %77, %66
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %118, label %90

90:                                               ; preds = %87
  %91 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %7, align 8
  %92 = call i64 @mmc_blk_cmd_started(%struct.mmc_blk_request* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %90
  %95 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %96 = call i64 @mmc_card_sd(%struct.mmc_card* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %94
  %99 = load %struct.request*, %struct.request** %4, align 8
  %100 = call i64 @rq_data_dir(%struct.request* %99)
  %101 = load i64, i64* @WRITE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %98
  %104 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %105 = call i64 @mmc_sd_num_wr_blocks(%struct.mmc_card* %104, i32* %11)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %7, align 8
  %109 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  br label %117

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  %113 = shl i32 %112, 9
  %114 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %7, align 8
  %115 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  br label %117

117:                                              ; preds = %111, %107
  br label %118

118:                                              ; preds = %117, %98, %94, %90, %87
  %119 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %120 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %119, i32 0, i32 0
  %121 = load %struct.mmc_card*, %struct.mmc_card** %120, align 8
  %122 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @mmc_host_is_spi(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %147, label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %126
  %130 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %8, align 8
  %131 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %132 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i64 @mmc_blk_reset(%struct.mmc_blk_data* %130, i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %129
  %138 = load %struct.request*, %struct.request** %4, align 8
  %139 = getelementptr inbounds %struct.request, %struct.request* %138, i32 0, i32 0
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = load i64, i64* @MMC_NO_RETRIES, align 8
  %145 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %6, align 8
  %146 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %214

147:                                              ; preds = %129, %126, %118
  %148 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %7, align 8
  %149 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %214

154:                                              ; preds = %147
  %155 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %6, align 8
  %156 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, 1
  %159 = load i64, i64* @MMC_MAX_RETRIES, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %8, align 8
  %163 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %164 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %5, align 4
  %167 = call i64 @mmc_blk_reset(%struct.mmc_blk_data* %162, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %161, %154
  %169 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %7, align 8
  %170 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %7, align 8
  %176 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174, %168
  br label %214

181:                                              ; preds = %174
  %182 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %6, align 8
  %183 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @MMC_MAX_RETRIES, align 8
  %186 = load i64, i64* @MMC_DATA_RETRIES, align 8
  %187 = sub nsw i64 %185, %186
  %188 = icmp slt i64 %184, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %181
  %190 = load i64, i64* @MMC_MAX_RETRIES, align 8
  %191 = load i64, i64* @MMC_DATA_RETRIES, align 8
  %192 = sub nsw i64 %190, %191
  %193 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %6, align 8
  %194 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  br label %214

195:                                              ; preds = %181
  %196 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %197 = call i32 @mmc_large_sector(%struct.mmc_card* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %214, label %199

199:                                              ; preds = %195
  %200 = load %struct.request*, %struct.request** %4, align 8
  %201 = call i64 @rq_data_dir(%struct.request* %200)
  %202 = load i64, i64* @READ, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %199
  %205 = load %struct.mmc_blk_request*, %struct.mmc_blk_request** %7, align 8
  %206 = getelementptr inbounds %struct.mmc_blk_request, %struct.mmc_blk_request* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp sgt i32 %208, 1
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %212 = load %struct.request*, %struct.request** %4, align 8
  %213 = call i32 @mmc_blk_read_single(%struct.mmc_queue* %211, %struct.request* %212)
  br label %214

214:                                              ; preds = %65, %137, %153, %180, %189, %210, %204, %199, %195
  ret void
}

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i32 @__mmc_send_status(%struct.mmc_card*, i32*, i32) #1

declare dso_local i64 @mmc_blk_status_error(%struct.request*, i32) #1

declare dso_local i32 @mmc_retune_release(i32) #1

declare dso_local i64 @mmc_detect_card_removed(i32) #1

declare dso_local i32 @mmc_host_is_spi(i32) #1

declare dso_local i32 @mmc_blk_in_tran_state(i32) #1

declare dso_local i32 @mmc_blk_fix_state(%struct.mmc_card*, %struct.request*) #1

declare dso_local i64 @mmc_blk_cmd_started(%struct.mmc_blk_request*) #1

declare dso_local i64 @mmc_card_sd(%struct.mmc_card*) #1

declare dso_local i64 @mmc_sd_num_wr_blocks(%struct.mmc_card*, i32*) #1

declare dso_local i64 @mmc_blk_reset(%struct.mmc_blk_data*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_large_sector(%struct.mmc_card*) #1

declare dso_local i32 @mmc_blk_read_single(%struct.mmc_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
