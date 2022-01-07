; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nicvf = type { i32, i32, i32, %struct.nicvf*, i32*, %struct.nicvf_cq_poll**, %struct.queue_set*, i32, i64, i32, i32, i32, %struct.TYPE_4__**, i32, i32, i64, i32 }
%struct.nicvf_cq_poll = type { i32 }
%struct.queue_set = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.net_device* }
%union.nic_mbx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NIC_MBOX_MSG_SHUTDOWN = common dso_local global i32 0, align 4
@NICVF_INTR_RBDR = common dso_local global i32 0, align 4
@NICVF_INTR_QS_ERR = common dso_local global i32 0, align 4
@NICVF_INTR_CQ = common dso_local global i32 0, align 4
@NICVF_INTR_MBOX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.queue_set*, align 8
  %7 = alloca %struct.nicvf_cq_poll*, align 8
  %8 = alloca %union.nic_mbx, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.nicvf* @netdev_priv(%struct.net_device* %9)
  store %struct.nicvf* %10, %struct.nicvf** %5, align 8
  %11 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %12 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %11, i32 0, i32 6
  %13 = load %struct.queue_set*, %struct.queue_set** %12, align 8
  store %struct.queue_set* %13, %struct.queue_set** %6, align 8
  store %struct.nicvf_cq_poll* null, %struct.nicvf_cq_poll** %7, align 8
  %14 = bitcast %union.nic_mbx* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %16 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %15, i32 0, i32 15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %21 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %20, i32 0, i32 16
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %24 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %23, i32 0, i32 15
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @drain_workqueue(i64 %25)
  br label %27

27:                                               ; preds = %19, %1
  %28 = load i32, i32* @NIC_MBOX_MSG_SHUTDOWN, align 4
  %29 = bitcast %union.nic_mbx* %8 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %32 = call i32 @nicvf_send_msg_to_pf(%struct.nicvf* %31, %union.nic_mbx* %8)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @netif_carrier_off(%struct.net_device* %33)
  %35 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %36 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %35, i32 0, i32 14
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netif_tx_stop_all_queues(i32 %37)
  %39 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %40 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %42 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %41, i32 0, i32 13
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %83, label %45

45:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %79, %45
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %49 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %46
  %53 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %54 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %53, i32 0, i32 12
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %79

62:                                               ; preds = %52
  %63 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %64 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %63, i32 0, i32 12
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.net_device*, %struct.net_device** %70, align 8
  %72 = call i32 @nicvf_stop(%struct.net_device* %71)
  %73 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %74 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %73, i32 0, i32 12
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 %77
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %78, align 8
  br label %79

79:                                               ; preds = %62, %61
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %46

82:                                               ; preds = %46
  br label %83

83:                                               ; preds = %82, %27
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %87 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %92 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @nicvf_disable_intr(%struct.nicvf* %91, i32 %92, i32 %93)
  %95 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %96 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @nicvf_clear_intr(%struct.nicvf* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %84

102:                                              ; preds = %84
  %103 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %104 = load i32, i32* @NICVF_INTR_QS_ERR, align 4
  %105 = call i32 @nicvf_disable_intr(%struct.nicvf* %103, i32 %104, i32 0)
  %106 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %107 = load i32, i32* @NICVF_INTR_QS_ERR, align 4
  %108 = call i32 @nicvf_clear_intr(%struct.nicvf* %106, i32 %107, i32 0)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %122, %102
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %112 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %117 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %116, i32 0, i32 11
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @pci_irq_vector(i32 %118, i32 %119)
  %121 = call i32 @synchronize_irq(i32 %120)
  br label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %109

125:                                              ; preds = %109
  %126 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %127 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %126, i32 0, i32 10
  %128 = call i32 @tasklet_kill(i32* %127)
  %129 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %130 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %129, i32 0, i32 9
  %131 = call i32 @tasklet_kill(i32* %130)
  %132 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %133 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %132, i32 0, i32 8
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %125
  %137 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %138 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %137, i32 0, i32 7
  %139 = call i32 @cancel_delayed_work_sync(i32* %138)
  br label %140

140:                                              ; preds = %136, %125
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %178, %140
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %144 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %143, i32 0, i32 6
  %145 = load %struct.queue_set*, %struct.queue_set** %144, align 8
  %146 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %142, %147
  br i1 %148, label %149, label %181

149:                                              ; preds = %141
  %150 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %151 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %150, i32 0, i32 5
  %152 = load %struct.nicvf_cq_poll**, %struct.nicvf_cq_poll*** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.nicvf_cq_poll*, %struct.nicvf_cq_poll** %152, i64 %154
  %156 = load %struct.nicvf_cq_poll*, %struct.nicvf_cq_poll** %155, align 8
  store %struct.nicvf_cq_poll* %156, %struct.nicvf_cq_poll** %7, align 8
  %157 = load %struct.nicvf_cq_poll*, %struct.nicvf_cq_poll** %7, align 8
  %158 = icmp ne %struct.nicvf_cq_poll* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %149
  br label %178

160:                                              ; preds = %149
  %161 = load %struct.nicvf_cq_poll*, %struct.nicvf_cq_poll** %7, align 8
  %162 = getelementptr inbounds %struct.nicvf_cq_poll, %struct.nicvf_cq_poll* %161, i32 0, i32 0
  %163 = call i32 @napi_synchronize(i32* %162)
  %164 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %165 = load i32, i32* @NICVF_INTR_CQ, align 4
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @nicvf_disable_intr(%struct.nicvf* %164, i32 %165, i32 %166)
  %168 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %169 = load i32, i32* @NICVF_INTR_CQ, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i32 @nicvf_clear_intr(%struct.nicvf* %168, i32 %169, i32 %170)
  %172 = load %struct.nicvf_cq_poll*, %struct.nicvf_cq_poll** %7, align 8
  %173 = getelementptr inbounds %struct.nicvf_cq_poll, %struct.nicvf_cq_poll* %172, i32 0, i32 0
  %174 = call i32 @napi_disable(i32* %173)
  %175 = load %struct.nicvf_cq_poll*, %struct.nicvf_cq_poll** %7, align 8
  %176 = getelementptr inbounds %struct.nicvf_cq_poll, %struct.nicvf_cq_poll* %175, i32 0, i32 0
  %177 = call i32 @netif_napi_del(i32* %176)
  br label %178

178:                                              ; preds = %160, %159
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  br label %141

181:                                              ; preds = %141
  %182 = load %struct.net_device*, %struct.net_device** %2, align 8
  %183 = call i32 @netif_tx_disable(%struct.net_device* %182)
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %195, %181
  %185 = load i32, i32* %4, align 4
  %186 = load %struct.net_device*, %struct.net_device** %2, align 8
  %187 = getelementptr inbounds %struct.net_device, %struct.net_device* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %184
  %191 = load %struct.net_device*, %struct.net_device** %2, align 8
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @netdev_get_tx_queue(%struct.net_device* %191, i32 %192)
  %194 = call i32 @netdev_tx_reset_queue(i32 %193)
  br label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %4, align 4
  br label %184

198:                                              ; preds = %184
  %199 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %200 = call i32 @nicvf_config_data_transfer(%struct.nicvf* %199, i32 0)
  %201 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %202 = call i32 @nicvf_qset_config(%struct.nicvf* %201, i32 0)
  %203 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %204 = load i32, i32* @NICVF_INTR_MBOX, align 4
  %205 = call i32 @nicvf_disable_intr(%struct.nicvf* %203, i32 %204, i32 0)
  %206 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %207 = call i32 @nicvf_unregister_interrupts(%struct.nicvf* %206)
  %208 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %209 = call i32 @nicvf_free_cq_poll(%struct.nicvf* %208)
  %210 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %211 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %221

214:                                              ; preds = %198
  %215 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %216 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @dev_kfree_skb_any(i32* %217)
  %219 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %220 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %219, i32 0, i32 4
  store i32* null, i32** %220, align 8
  br label %221

221:                                              ; preds = %214, %198
  %222 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %223 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %224 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %223, i32 0, i32 3
  store %struct.nicvf* %222, %struct.nicvf** %224, align 8
  ret i32 0
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @drain_workqueue(i64) #1

declare dso_local i32 @nicvf_send_msg_to_pf(%struct.nicvf*, %union.nic_mbx*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(i32) #1

declare dso_local i32 @nicvf_disable_intr(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @nicvf_clear_intr(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @nicvf_config_data_transfer(%struct.nicvf*, i32) #1

declare dso_local i32 @nicvf_qset_config(%struct.nicvf*, i32) #1

declare dso_local i32 @nicvf_unregister_interrupts(%struct.nicvf*) #1

declare dso_local i32 @nicvf_free_cq_poll(%struct.nicvf*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
