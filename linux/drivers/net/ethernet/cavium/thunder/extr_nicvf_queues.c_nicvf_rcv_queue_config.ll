; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_rcv_queue_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_rcv_queue_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.queue_set = type { i32, i32, %struct.rcv_queue* }
%struct.rcv_queue = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.nic_mbx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.rq_cfg = type { i32, i64 }

@NIC_QSET_RQ_0_7_CFG = common dso_local global i32 0, align 4
@NIC_MBOX_MSG_RQ_CFG = common dso_local global i32 0, align 4
@NIC_MBOX_MSG_RQ_BP_CFG = common dso_local global i32 0, align 4
@RQ_PASS_RBDR_LVL = common dso_local global i32 0, align 4
@RQ_PASS_CQ_LVL = common dso_local global i32 0, align 4
@NIC_MBOX_MSG_RQ_DROP_CFG = common dso_local global i32 0, align 4
@RQ_DROP_RBDR_LVL = common dso_local global i32 0, align 4
@RQ_DROP_CQ_LVL = common dso_local global i32 0, align 4
@NIC_QSET_RQ_GEN_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.queue_set*, i32, i32)* @nicvf_rcv_queue_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_rcv_queue_config(%struct.nicvf* %0, %struct.queue_set* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.queue_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.nic_mbx, align 4
  %10 = alloca %struct.rcv_queue*, align 8
  %11 = alloca %struct.rq_cfg, align 8
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store %struct.queue_set* %1, %struct.queue_set** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = bitcast %union.nic_mbx* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %14 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %13, i32 0, i32 2
  %15 = load %struct.rcv_queue*, %struct.rcv_queue** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %15, i64 %17
  store %struct.rcv_queue* %18, %struct.rcv_queue** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %21 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %23 = load i32, i32* @NIC_QSET_RQ_0_7_CFG, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %22, i32 %23, i32 %24, i32 0)
  %26 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %27 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %4
  %31 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %32 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @nicvf_reclaim_rcv_queue(%struct.nicvf* %31, %struct.queue_set* %32, i32 %33)
  %35 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %36 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %35, i32 0, i32 8
  %37 = call i32 @xdp_rxq_info_unreg(i32* %36)
  br label %207

38:                                               ; preds = %4
  %39 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %40 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %43 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %46 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %48 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %51 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %53 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %57 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %59 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %62 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %64 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %68 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %70 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %69, i32 0, i32 7
  store i32 1, i32* %70, align 4
  %71 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %72 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %71, i32 0, i32 8
  %73 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %74 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @xdp_rxq_info_reg(i32* %72, %struct.TYPE_4__* %75, i32 %76)
  %78 = icmp slt i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @WARN_ON(i32 %79)
  %81 = load i32, i32* @NIC_MBOX_MSG_RQ_CFG, align 4
  %82 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %85 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %7, align 4
  %90 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %93 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 26
  %96 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %97 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 19
  %100 = or i32 %95, %99
  %101 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %102 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 16
  %105 = or i32 %100, %104
  %106 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %107 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 9
  %110 = or i32 %105, %109
  %111 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %112 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 8
  %115 = or i32 %110, %114
  %116 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %117 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 1
  %120 = or i32 %115, %119
  %121 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %122 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %120, %123
  %125 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %128 = call i32 @nicvf_send_msg_to_pf(%struct.nicvf* %127, %union.nic_mbx* %9)
  %129 = load i32, i32* @NIC_MBOX_MSG_RQ_BP_CFG, align 4
  %130 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = call i32 @BIT_ULL(i32 63)
  %133 = call i32 @BIT_ULL(i32 62)
  %134 = or i32 %132, %133
  %135 = load i32, i32* @RQ_PASS_RBDR_LVL, align 4
  %136 = shl i32 %135, 16
  %137 = or i32 %134, %136
  %138 = load i32, i32* @RQ_PASS_CQ_LVL, align 4
  %139 = shl i32 %138, 8
  %140 = or i32 %137, %139
  %141 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %142 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = shl i32 %143, 0
  %145 = or i32 %140, %144
  %146 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  %148 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %149 = call i32 @nicvf_send_msg_to_pf(%struct.nicvf* %148, %union.nic_mbx* %9)
  %150 = load i32, i32* @NIC_MBOX_MSG_RQ_DROP_CFG, align 4
  %151 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = call i32 @BIT_ULL(i32 63)
  %154 = call i32 @BIT_ULL(i32 62)
  %155 = or i32 %153, %154
  %156 = load i32, i32* @RQ_PASS_RBDR_LVL, align 4
  %157 = shl i32 %156, 40
  %158 = or i32 %155, %157
  %159 = load i32, i32* @RQ_DROP_RBDR_LVL, align 4
  %160 = shl i32 %159, 32
  %161 = or i32 %158, %160
  %162 = load i32, i32* @RQ_PASS_CQ_LVL, align 4
  %163 = shl i32 %162, 16
  %164 = or i32 %161, %163
  %165 = load i32, i32* @RQ_DROP_CQ_LVL, align 4
  %166 = shl i32 %165, 8
  %167 = or i32 %164, %166
  %168 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %171 = call i32 @nicvf_send_msg_to_pf(%struct.nicvf* %170, %union.nic_mbx* %9)
  %172 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %173 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %197, label %176

176:                                              ; preds = %38
  %177 = load i32, i32* %7, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %197

179:                                              ; preds = %176
  %180 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %181 = load i32, i32* @NIC_QSET_RQ_GEN_CFG, align 4
  %182 = call i32 @BIT(i32 24)
  %183 = call i32 @BIT(i32 23)
  %184 = or i32 %182, %183
  %185 = call i32 @BIT(i32 21)
  %186 = or i32 %184, %185
  %187 = call i32 @BIT(i32 20)
  %188 = or i32 %186, %187
  %189 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %180, i32 %181, i32 0, i32 %188)
  %190 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %191 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %192 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @nicvf_config_vlan_stripping(%struct.nicvf* %190, i32 %195)
  br label %197

197:                                              ; preds = %179, %176, %38
  %198 = call i32 @memset(%struct.rq_cfg* %11, i32 0, i32 16)
  %199 = getelementptr inbounds %struct.rq_cfg, %struct.rq_cfg* %11, i32 0, i32 0
  store i32 1, i32* %199, align 8
  %200 = getelementptr inbounds %struct.rq_cfg, %struct.rq_cfg* %11, i32 0, i32 1
  store i64 0, i64* %200, align 8
  %201 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %202 = load i32, i32* @NIC_QSET_RQ_0_7_CFG, align 4
  %203 = load i32, i32* %7, align 4
  %204 = bitcast %struct.rq_cfg* %11 to i32*
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %201, i32 %202, i32 %203, i32 %205)
  br label %207

207:                                              ; preds = %197, %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nicvf_queue_reg_write(%struct.nicvf*, i32, i32, i32) #2

declare dso_local i32 @nicvf_reclaim_rcv_queue(%struct.nicvf*, %struct.queue_set*, i32) #2

declare dso_local i32 @xdp_rxq_info_unreg(i32*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i64 @xdp_rxq_info_reg(i32*, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @nicvf_send_msg_to_pf(%struct.nicvf*, %union.nic_mbx*) #2

declare dso_local i32 @BIT_ULL(i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @nicvf_config_vlan_stripping(%struct.nicvf*, i32) #2

declare dso_local i32 @memset(%struct.rq_cfg*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
