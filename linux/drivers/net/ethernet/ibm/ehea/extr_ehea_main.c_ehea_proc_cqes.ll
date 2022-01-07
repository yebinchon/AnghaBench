; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_proc_cqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_proc_cqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_cqe = type { i64, i32 }
%struct.ehea_port_res = type { i32, i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.ehea_cq* }
%struct.TYPE_6__ = type { i32, %struct.ehea_port_res*, i32 }
%struct.TYPE_5__ = type { %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.ehea_cq = type { i32 }
%struct.netdev_queue = type { i32 }

@SWQE_RESTART_CHECK = common dso_local global i64 0, align 8
@EHEA_CQE_STAT_ERR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Bad send completion status=0x%04X\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Send CQE\00", align 1
@EHEA_CQE_STAT_RESET_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Resetting port\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CQE\00", align 1
@EHEA_WR_ID_TYPE = common dso_local global i32 0, align 4
@EHEA_SWQE2_TYPE = common dso_local global i32 0, align 4
@EHEA_WR_ID_INDEX = common dso_local global i32 0, align 4
@EHEA_WR_ID_REFILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ehea_cqe* (%struct.ehea_port_res*, i32)* @ehea_proc_cqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ehea_cqe* @ehea_proc_cqes(%struct.ehea_port_res* %0, i32 %1) #0 {
  %3 = alloca %struct.ehea_port_res*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ehea_cq*, align 8
  %7 = alloca %struct.ehea_cqe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.netdev_queue*, align 8
  store %struct.ehea_port_res* %0, %struct.ehea_port_res** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %14 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %13, i32 0, i32 5
  %15 = load %struct.ehea_cq*, %struct.ehea_cq** %14, align 8
  store %struct.ehea_cq* %15, %struct.ehea_cq** %6, align 8
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %18 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %23 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %24 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.ehea_port_res*, %struct.ehea_port_res** %26, align 8
  %28 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %27, i64 0
  %29 = ptrtoint %struct.ehea_port_res* %22 to i64
  %30 = ptrtoint %struct.ehea_port_res* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 48
  %33 = trunc i64 %32 to i32
  %34 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %21, i32 %33)
  store %struct.netdev_queue* %34, %struct.netdev_queue** %12, align 8
  %35 = load %struct.ehea_cq*, %struct.ehea_cq** %6, align 8
  %36 = call %struct.ehea_cqe* @ehea_poll_cq(%struct.ehea_cq* %35)
  store %struct.ehea_cqe* %36, %struct.ehea_cqe** %7, align 8
  br label %37

37:                                               ; preds = %138, %2
  %38 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %39 = icmp ne %struct.ehea_cqe* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i1 [ false, %37 ], [ %42, %40 ]
  br i1 %44, label %45, label %150

45:                                               ; preds = %43
  %46 = load %struct.ehea_cq*, %struct.ehea_cq** %6, align 8
  %47 = call i32 @ehea_inc_cq(%struct.ehea_cq* %46)
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = call i32 (...) @rmb()
  %51 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %52 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SWQE_RESTART_CHECK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %58 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %150

61:                                               ; preds = %45
  %62 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %63 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @EHEA_CQE_STAT_ERR_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %61
  %69 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %70 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %74 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = call i64 @netif_msg_tx_err(%struct.TYPE_6__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %80 = call i32 @ehea_dump(%struct.ehea_cqe* %79, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %68
  %82 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %83 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @EHEA_CQE_STAT_RESET_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %91 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = call i32 @ehea_schedule_port_reset(%struct.TYPE_6__* %92)
  br label %150

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %61
  %96 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %97 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = call i64 @netif_msg_tx_done(%struct.TYPE_6__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %103 = call i32 @ehea_dump(%struct.ehea_cqe* %102, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %95
  %105 = load i32, i32* @EHEA_WR_ID_TYPE, align 4
  %106 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %107 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @EHEA_BMASK_GET(i32 %105, i64 %108)
  %110 = load i32, i32* @EHEA_SWQE2_TYPE, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i64 @likely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %104
  %116 = load i32, i32* @EHEA_WR_ID_INDEX, align 4
  %117 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %118 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @EHEA_BMASK_GET(i32 %116, i64 %119)
  store i32 %120, i32* %11, align 4
  %121 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %122 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load %struct.sk_buff**, %struct.sk_buff*** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %124, i64 %126
  %128 = load %struct.sk_buff*, %struct.sk_buff** %127, align 8
  store %struct.sk_buff* %128, %struct.sk_buff** %5, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call i32 @dev_consume_skb_any(%struct.sk_buff* %129)
  %131 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %132 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load %struct.sk_buff**, %struct.sk_buff*** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %134, i64 %136
  store %struct.sk_buff* null, %struct.sk_buff** %137, align 8
  br label %138

138:                                              ; preds = %115, %104
  %139 = load i32, i32* @EHEA_WR_ID_REFILL, align 4
  %140 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %141 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @EHEA_BMASK_GET(i32 %139, i64 %142)
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %8, align 4
  %148 = load %struct.ehea_cq*, %struct.ehea_cq** %6, align 8
  %149 = call %struct.ehea_cqe* @ehea_poll_cq(%struct.ehea_cq* %148)
  store %struct.ehea_cqe* %149, %struct.ehea_cqe** %7, align 8
  br label %37

150:                                              ; preds = %88, %56, %43
  %151 = load %struct.ehea_cq*, %struct.ehea_cq** %6, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @ehea_update_feca(%struct.ehea_cq* %151, i32 %152)
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %156 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %155, i32 0, i32 3
  %157 = call i32 @atomic_add(i32 %154, i32* %156)
  %158 = load %struct.netdev_queue*, %struct.netdev_queue** %12, align 8
  %159 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %150
  %162 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %163 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %162, i32 0, i32 3
  %164 = call i64 @atomic_read(i32* %163)
  %165 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %166 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp sge i64 %164, %167
  br label %169

169:                                              ; preds = %161, %150
  %170 = phi i1 [ false, %150 ], [ %168, %161 ]
  %171 = zext i1 %170 to i32
  %172 = call i64 @unlikely(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %169
  %175 = load %struct.netdev_queue*, %struct.netdev_queue** %12, align 8
  %176 = call i32 (...) @smp_processor_id()
  %177 = call i32 @__netif_tx_lock(%struct.netdev_queue* %175, i32 %176)
  %178 = load %struct.netdev_queue*, %struct.netdev_queue** %12, align 8
  %179 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %174
  %182 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %183 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %182, i32 0, i32 3
  %184 = call i64 @atomic_read(i32* %183)
  %185 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %186 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp sge i64 %184, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %181
  %190 = load %struct.netdev_queue*, %struct.netdev_queue** %12, align 8
  %191 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %190)
  br label %192

192:                                              ; preds = %189, %181, %174
  %193 = load %struct.netdev_queue*, %struct.netdev_queue** %12, align 8
  %194 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %193)
  br label %195

195:                                              ; preds = %192, %169
  %196 = load %struct.ehea_port_res*, %struct.ehea_port_res** %3, align 8
  %197 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %196, i32 0, i32 2
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = call i32 @wake_up(i32* %199)
  %201 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  ret %struct.ehea_cqe* %201
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local %struct.ehea_cqe* @ehea_poll_cq(%struct.ehea_cq*) #1

declare dso_local i32 @ehea_inc_cq(%struct.ehea_cq*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @netif_msg_tx_err(%struct.TYPE_6__*) #1

declare dso_local i32 @ehea_dump(%struct.ehea_cqe*, i32, i8*) #1

declare dso_local i32 @ehea_schedule_port_reset(%struct.TYPE_6__*) #1

declare dso_local i64 @netif_msg_tx_done(%struct.TYPE_6__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @EHEA_BMASK_GET(i32, i64) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ehea_update_feca(%struct.ehea_cq*, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
