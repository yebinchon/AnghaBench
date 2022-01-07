; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32* }
%struct.hns_mac_cb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RCB_INT_FLAG_TX = common dso_local global i32 0, align 4
@RCB_INT_FLAG_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_handle*)* @hns_ae_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_ae_start(%struct.hnae_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_mac_cb*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %3, align 8
  %7 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %8 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %7)
  store %struct.hns_mac_cb* %8, %struct.hns_mac_cb** %6, align 8
  %9 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %10 = call i32 @hns_mac_vm_config_bc_en(%struct.hns_mac_cb* %9, i32 0, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %55, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %19 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %16
  %23 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %24 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @AE_IS_VER1(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %32 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RCB_INT_FLAG_TX, align 4
  %39 = load i32, i32* @RCB_INT_FLAG_RX, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @hns_rcb_int_clr_hw(i32 %37, i32 %40)
  br label %54

42:                                               ; preds = %22
  %43 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %44 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RCB_INT_FLAG_TX, align 4
  %51 = load i32, i32* @RCB_INT_FLAG_RX, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @hns_rcbv2_int_clr_hw(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %42, %30
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %16

58:                                               ; preds = %16
  %59 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %60 = call i32 @hns_ae_ring_enable_all(%struct.hnae_handle* %59, i32 1)
  %61 = call i32 @msleep(i32 100)
  %62 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %63 = call i32 @hns_mac_start(%struct.hns_mac_cb* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %58, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_mac_vm_config_bc_en(%struct.hns_mac_cb*, i32, i32) #1

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @hns_rcb_int_clr_hw(i32, i32) #1

declare dso_local i32 @hns_rcbv2_int_clr_hw(i32, i32) #1

declare dso_local i32 @hns_ae_ring_enable_all(%struct.hnae_handle*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hns_mac_start(%struct.hns_mac_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
