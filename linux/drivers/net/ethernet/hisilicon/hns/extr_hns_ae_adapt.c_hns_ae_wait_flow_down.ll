; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_wait_flow_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_wait_flow_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32, i32, i32* }
%struct.dsaf_device = type { i32 }
%struct.hns_ppe_cb = type { i32 }
%struct.hnae_vf_cb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_handle*)* @hns_ae_wait_flow_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_ae_wait_flow_down(%struct.hnae_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae_handle*, align 8
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca %struct.hns_ppe_cb*, align 8
  %6 = alloca %struct.hnae_vf_cb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hnae_handle* %0, %struct.hnae_handle** %3, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %12 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %17 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @hns_rcb_wait_tx_ring_clean(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %74

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %34 = call %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle* %33)
  store %struct.hns_ppe_cb* %34, %struct.hns_ppe_cb** %5, align 8
  %35 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %5, align 8
  %36 = call i32 @hns_ppe_wait_tx_fifo_clean(%struct.hns_ppe_cb* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %74

41:                                               ; preds = %32
  %42 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %43 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.dsaf_device* @hns_ae_get_dsaf_dev(i32 %44)
  store %struct.dsaf_device* %45, %struct.dsaf_device** %4, align 8
  %46 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %47 = icmp ne %struct.dsaf_device* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %74

51:                                               ; preds = %41
  %52 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %53 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %54 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @hns_dsaf_wait_pkt_clean(%struct.dsaf_device* %52, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %74

61:                                               ; preds = %51
  %62 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %63 = call %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle* %62)
  store %struct.hnae_vf_cb* %63, %struct.hnae_vf_cb** %6, align 8
  %64 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %6, align 8
  %65 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @hns_mac_wait_fifo_clean(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %74

72:                                               ; preds = %61
  %73 = call i32 @mdelay(i32 10)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %70, %59, %48, %39, %26
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @hns_rcb_wait_tx_ring_clean(i32) #1

declare dso_local %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_ppe_wait_tx_fifo_clean(%struct.hns_ppe_cb*) #1

declare dso_local %struct.dsaf_device* @hns_ae_get_dsaf_dev(i32) #1

declare dso_local i32 @hns_dsaf_wait_pkt_clean(%struct.dsaf_device*, i32) #1

declare dso_local %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_mac_wait_fifo_clean(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
