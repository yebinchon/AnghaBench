; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_set_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, %struct.hnae_queue** }
%struct.hnae_queue = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hns_mac_cb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@BD_SIZE_2048_MAX_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_handle*, i32)* @hns_ae_set_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_ae_set_mtu(%struct.hnae_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_mac_cb*, align 8
  %6 = alloca %struct.hnae_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hnae_handle* %0, %struct.hnae_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %11 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %10)
  store %struct.hns_mac_cb* %11, %struct.hns_mac_cb** %5, align 8
  %12 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %13 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @AE_IS_VER1(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @BD_SIZE_2048_MAX_MTU, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 2048, i32* %7, align 4
  br label %25

24:                                               ; preds = %19
  store i32 4096, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %23
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %28 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %26, %25
  %33 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @hns_mac_set_mtu(%struct.hns_mac_cb* %33, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %65, label %39

39:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %43 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load %struct.hnae_handle*, %struct.hnae_handle** %3, align 8
  %48 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %47, i32 0, i32 1
  %49 = load %struct.hnae_queue**, %struct.hnae_queue*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.hnae_queue*, %struct.hnae_queue** %49, i64 %51
  %53 = load %struct.hnae_queue*, %struct.hnae_queue** %52, align 8
  store %struct.hnae_queue* %53, %struct.hnae_queue** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.hnae_queue*, %struct.hnae_queue** %6, align 8
  %56 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.hnae_queue*, %struct.hnae_queue** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @hns_rcb_set_rx_ring_bs(%struct.hnae_queue* %58, i32 %59)
  br label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %40

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64, %32
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local i32 @AE_IS_VER1(i32) #1

declare dso_local i32 @hns_mac_set_mtu(%struct.hns_mac_cb*, i32, i32) #1

declare dso_local i32 @hns_rcb_set_rx_ring_bs(%struct.hnae_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
