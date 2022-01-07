; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_put_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_put_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32* }
%struct.hnae_vf_cb = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_handle*)* @hns_ae_put_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_put_handle(%struct.hnae_handle* %0) #0 {
  %2 = alloca %struct.hnae_handle*, align 8
  %3 = alloca %struct.hnae_vf_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.hnae_handle* %0, %struct.hnae_handle** %2, align 8
  %5 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %6 = call %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle* %5)
  store %struct.hnae_vf_cb* %6, %struct.hnae_vf_cb** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %10 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %15 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_2__* @hns_ae_get_ring_pair(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %3, align 8
  %28 = call i32 @kfree(%struct.hnae_vf_cb* %27)
  ret void
}

declare dso_local %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle*) #1

declare dso_local %struct.TYPE_2__* @hns_ae_get_ring_pair(i32) #1

declare dso_local i32 @kfree(%struct.hnae_vf_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
