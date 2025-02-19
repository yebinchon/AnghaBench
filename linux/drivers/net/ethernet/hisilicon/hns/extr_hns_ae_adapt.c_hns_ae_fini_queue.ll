; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_fini_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_fini_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_queue = type { i32 }
%struct.hnae_vf_cb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HNAE_PORT_SERVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_queue*)* @hns_ae_fini_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_fini_queue(%struct.hnae_queue* %0) #0 {
  %2 = alloca %struct.hnae_queue*, align 8
  %3 = alloca %struct.hnae_vf_cb*, align 8
  store %struct.hnae_queue* %0, %struct.hnae_queue** %2, align 8
  %4 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %5 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.hnae_vf_cb* @hns_ae_get_vf_cb(i32 %6)
  store %struct.hnae_vf_cb* %7, %struct.hnae_vf_cb** %3, align 8
  %8 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %3, align 8
  %9 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HNAE_PORT_SERVICE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.hnae_queue*, %struct.hnae_queue** %2, align 8
  %17 = call i32 @hns_rcb_reset_ring_hw(%struct.hnae_queue* %16)
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

declare dso_local %struct.hnae_vf_cb* @hns_ae_get_vf_cb(i32) #1

declare dso_local i32 @hns_rcb_reset_ring_hw(%struct.hnae_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
