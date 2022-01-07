; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_refill_rq_def.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_refill_rq_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port_res = type { %struct.ehea_qp*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.ehea_qp = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ehea_q_skb_arr = type { i32, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.ehea_rwqe = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@__EHEA_STOP_XFER = common dso_local global i32 0, align 4
@ehea_driver_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rq%i ran dry - no mem for skb\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EHEA_WR_ID_TYPE = common dso_local global i32 0, align 4
@EHEA_WR_ID_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_port_res*, %struct.ehea_q_skb_arr*, i32, i32, i32, i32)* @ehea_refill_rq_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_refill_rq_def(%struct.ehea_port_res* %0, %struct.ehea_q_skb_arr* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ehea_port_res*, align 8
  %9 = alloca %struct.ehea_q_skb_arr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.ehea_qp*, align 8
  %16 = alloca %struct.sk_buff**, align 8
  %17 = alloca %struct.ehea_rwqe*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.sk_buff*, align 8
  store %struct.ehea_port_res* %0, %struct.ehea_port_res** %8, align 8
  store %struct.ehea_q_skb_arr* %1, %struct.ehea_q_skb_arr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %26 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %27 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %14, align 8
  %31 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %32 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %31, i32 0, i32 0
  %33 = load %struct.ehea_qp*, %struct.ehea_qp** %32, align 8
  store %struct.ehea_qp* %33, %struct.ehea_qp** %15, align 8
  %34 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %35 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %34, i32 0, i32 3
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %35, align 8
  store %struct.sk_buff** %36, %struct.sk_buff*** %16, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %37 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %38 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %21, align 4
  %42 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %43 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* @__EHEA_STOP_XFER, align 4
  %45 = call i32 @test_bit(i32 %44, i32* @ehea_driver_flags)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %6
  %49 = load i32, i32* %21, align 4
  %50 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %51 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %23, align 4
  store i32 %52, i32* %7, align 4
  br label %188

53:                                               ; preds = %6
  %54 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %55 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %19, align 4
  %57 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %58 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %159, %53
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %21, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %162

65:                                               ; preds = %61
  %66 = load %struct.net_device*, %struct.net_device** %14, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %25, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %96, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %18, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %76 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %78 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %81 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 2
  %84 = icmp eq i32 %79, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %71
  %86 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %87 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.net_device*, %struct.net_device** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @netdev_info(%struct.net_device* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %23, align 4
  br label %95

95:                                               ; preds = %85, %71
  br label %162

96:                                               ; preds = %65
  %97 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %98 = load %struct.sk_buff**, %struct.sk_buff*** %16, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %98, i64 %100
  store %struct.sk_buff* %97, %struct.sk_buff** %101, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ehea_map_vaddr(i32 %104)
  store i32 %105, i32* %24, align 4
  %106 = load i32, i32* %24, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %116

108:                                              ; preds = %96
  %109 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %110 = call i32 @dev_consume_skb_any(%struct.sk_buff* %109)
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %18, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %115 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  store i32 0, i32* %23, align 4
  br label %162

116:                                              ; preds = %96
  %117 = load %struct.ehea_qp*, %struct.ehea_qp** %15, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call %struct.ehea_rwqe* @ehea_get_next_rwqe(%struct.ehea_qp* %117, i32 %118)
  store %struct.ehea_rwqe* %119, %struct.ehea_rwqe** %17, align 8
  %120 = load i32, i32* @EHEA_WR_ID_TYPE, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @EHEA_BMASK_SET(i32 %120, i32 %121)
  %123 = load i32, i32* @EHEA_WR_ID_INDEX, align 4
  %124 = load i32, i32* %19, align 4
  %125 = call i32 @EHEA_BMASK_SET(i32 %123, i32 %124)
  %126 = or i32 %122, %125
  %127 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %17, align 8
  %128 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %130 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %17, align 8
  %134 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %133, i32 0, i32 2
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  store i32 %132, i32* %137, align 4
  %138 = load i32, i32* %24, align 4
  %139 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %17, align 8
  %140 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %139, i32 0, i32 2
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 %138, i32* %143, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %17, align 8
  %146 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %145, i32 0, i32 2
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  store i32 %144, i32* %149, align 4
  %150 = load %struct.ehea_rwqe*, %struct.ehea_rwqe** %17, align 8
  %151 = getelementptr inbounds %struct.ehea_rwqe, %struct.ehea_rwqe* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %19, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %19, align 4
  %157 = load i32, i32* %22, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %22, align 4
  br label %159

159:                                              ; preds = %116
  %160 = load i32, i32* %18, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %18, align 4
  br label %61

162:                                              ; preds = %108, %95, %61
  %163 = load i32, i32* %19, align 4
  %164 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %9, align 8
  %165 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %22, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %186

169:                                              ; preds = %162
  %170 = call i32 (...) @iosync()
  %171 = load i32, i32* %10, align 4
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %175 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %174, i32 0, i32 0
  %176 = load %struct.ehea_qp*, %struct.ehea_qp** %175, align 8
  %177 = load i32, i32* %22, align 4
  %178 = call i32 @ehea_update_rq2a(%struct.ehea_qp* %176, i32 %177)
  br label %185

179:                                              ; preds = %169
  %180 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %181 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %180, i32 0, i32 0
  %182 = load %struct.ehea_qp*, %struct.ehea_qp** %181, align 8
  %183 = load i32, i32* %22, align 4
  %184 = call i32 @ehea_update_rq3a(%struct.ehea_qp* %182, i32 %183)
  br label %185

185:                                              ; preds = %179, %173
  br label %186

186:                                              ; preds = %185, %168
  %187 = load i32, i32* %23, align 4
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %186, %48
  %189 = load i32, i32* %7, align 4
  ret i32 %189
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ehea_map_vaddr(i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.ehea_rwqe* @ehea_get_next_rwqe(%struct.ehea_qp*, i32) #1

declare dso_local i32 @EHEA_BMASK_SET(i32, i32) #1

declare dso_local i32 @iosync(...) #1

declare dso_local i32 @ehea_update_rq2a(%struct.ehea_qp*, i32) #1

declare dso_local i32 @ehea_update_rq3a(%struct.ehea_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
