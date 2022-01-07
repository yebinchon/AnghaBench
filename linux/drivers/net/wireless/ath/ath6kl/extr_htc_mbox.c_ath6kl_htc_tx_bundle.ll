; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_tx_bundle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_tx_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_endpoint = type { i64, i64, %struct.htc_target* }
%struct.htc_target = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.list_head = type { i32 }
%struct.hif_scatter_req = type { i64, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.htc_packet* }
%struct.htc_packet = type { i32, i32, i32, i32 }

@WMM_NUM_AC = common dso_local global i32 0, align 4
@HTC_CTRL_RSVD_SVC = common dso_local global i64 0, align 8
@WMI_CONTROL_SVC = common dso_local global i64 0, align 8
@HTC_MIN_HTC_MSGS_TO_BUNDLE = common dso_local global i32 0, align 4
@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"htc tx no more scatter resources\0A\00", align 1
@WMM_AC_BK = common dso_local global i32 0, align 4
@WMM_AC_BE = common dso_local global i32 0, align 4
@ATH6KL_SCATTER_REQS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"htc tx pkts to scatter: %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@htc_async_tx_scat_complete = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"htc tx scatter bytes %d entries %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"htc tx bundle sent %d pkts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_endpoint*, %struct.list_head*, i32*, i32*)* @ath6kl_htc_tx_bundle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_htc_tx_bundle(%struct.htc_endpoint* %0, %struct.list_head* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.htc_endpoint*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.htc_target*, align 8
  %10 = alloca %struct.hif_scatter_req*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.htc_packet*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.htc_endpoint* %0, %struct.htc_endpoint** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %20 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %19, i32 0, i32 2
  %21 = load %struct.htc_target*, %struct.htc_target** %20, align 8
  store %struct.htc_target* %21, %struct.htc_target** %9, align 8
  store %struct.hif_scatter_req* null, %struct.hif_scatter_req** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* @WMM_NUM_AC, align 4
  store i32 %22, i32* %18, align 4
  %23 = load i64, i64* @HTC_CTRL_RSVD_SVC, align 8
  %24 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %25 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %4
  %29 = load i64, i64* @WMI_CONTROL_SVC, align 8
  %30 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %31 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %36 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %43 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %18, align 4
  br label %47

47:                                               ; preds = %34, %28, %4
  br label %48

48:                                               ; preds = %47, %196
  store i32 0, i32* %16, align 4
  %49 = load %struct.list_head*, %struct.list_head** %6, align 8
  %50 = call i32 @get_queue_depth(%struct.list_head* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %53 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @min(i32 %51, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @HTC_MIN_HTC_MSGS_TO_BUNDLE, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %197

60:                                               ; preds = %48
  %61 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %62 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call %struct.hif_scatter_req* @hif_scatter_req_get(%struct.TYPE_6__* %65)
  store %struct.hif_scatter_req* %66, %struct.hif_scatter_req** %10, align 8
  %67 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %68 = icmp ne %struct.hif_scatter_req* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %71 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %197

72:                                               ; preds = %60
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* @WMM_NUM_AC, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %72
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* @WMM_AC_BK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %111

80:                                               ; preds = %76
  %81 = load i32, i32* @WMM_AC_BE, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @WMM_AC_BK, align 4
  %86 = shl i32 1, %85
  store i32 %86, i32* %17, align 4
  br label %91

87:                                               ; preds = %80
  %88 = load i32, i32* %18, align 4
  %89 = shl i32 1, %88
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %87, %84
  %92 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %93 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ATH6KL_SCATTER_REQS, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load i32, i32* %17, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %101 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %110

104:                                              ; preds = %91
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %107 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %97
  br label %111

111:                                              ; preds = %110, %76, %72
  %112 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %116 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %115, i32 0, i32 3
  store i32 0, i32* %116, align 8
  %117 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %118 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %117, i32 0, i32 1
  store i32 0, i32* %118, align 8
  %119 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %120 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %121 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.list_head*, %struct.list_head** %6, align 8
  %124 = call i32 @ath6kl_htc_tx_setup_scat_list(%struct.htc_target* %119, %struct.htc_endpoint* %120, %struct.hif_scatter_req* %121, i32 %122, %struct.list_head* %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* @EAGAIN, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %111
  %130 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %131 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %130, i32 0, i32 1
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %136 = call i32 @hif_scatter_req_add(%struct.TYPE_6__* %134, %struct.hif_scatter_req* %135)
  br label %197

137:                                              ; preds = %111
  %138 = load i32, i32* @htc_async_tx_scat_complete, align 4
  %139 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %140 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  %143 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %144 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %149 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %150 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %153 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %148, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %154)
  store i32 0, i32* %14, align 4
  br label %156

156:                                              ; preds = %184, %137
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %159 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %187

162:                                              ; preds = %156
  %163 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %164 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %163, i32 0, i32 2
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load %struct.htc_packet*, %struct.htc_packet** %169, align 8
  store %struct.htc_packet* %170, %struct.htc_packet** %15, align 8
  %171 = load %struct.htc_packet*, %struct.htc_packet** %15, align 8
  %172 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.htc_packet*, %struct.htc_packet** %15, align 8
  %175 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.htc_packet*, %struct.htc_packet** %15, align 8
  %178 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.htc_packet*, %struct.htc_packet** %15, align 8
  %181 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @trace_ath6kl_htc_tx(i32 %173, i32 %176, i32 %179, i32 %182)
  br label %184

184:                                              ; preds = %162
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %14, align 4
  br label %156

187:                                              ; preds = %156
  %188 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %189 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %188, i32 0, i32 1
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %10, align 8
  %192 = call i32 @ath6kl_hif_submit_scat_req(%struct.TYPE_7__* %190, %struct.hif_scatter_req* %191, i32 0)
  %193 = load i32, i32* %16, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %197

196:                                              ; preds = %187
  br label %48

197:                                              ; preds = %195, %129, %69, %59
  %198 = load i32, i32* %12, align 4
  %199 = load i32*, i32** %7, align 8
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* %13, align 4
  %201 = load i32*, i32** %8, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %203 = load i32, i32* %12, align 4
  %204 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %203)
  ret void
}

declare dso_local i32 @get_queue_depth(%struct.list_head*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.hif_scatter_req* @hif_scatter_req_get(%struct.TYPE_6__*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local i32 @ath6kl_htc_tx_setup_scat_list(%struct.htc_target*, %struct.htc_endpoint*, %struct.hif_scatter_req*, i32, %struct.list_head*) #1

declare dso_local i32 @hif_scatter_req_add(%struct.TYPE_6__*, %struct.hif_scatter_req*) #1

declare dso_local i32 @trace_ath6kl_htc_tx(i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_hif_submit_scat_req(%struct.TYPE_7__*, %struct.hif_scatter_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
