; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_coalesce_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_coalesce_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i64, i32 }
%struct.dsaf_device = type { i32, i32 }

@HNS_RCB_TX_FRAMES_LOW = common dso_local global i32 0, align 4
@HNS_RCB_RX_FRAMES_LOW = common dso_local global i32 0, align 4
@HNAE_PORT_DEBUG = common dso_local global i64 0, align 8
@HNS_RCB_TX_FRAMES_HIGH = common dso_local global i32 0, align 4
@HNS_RCB_RX_FRAMES_HIGH = common dso_local global i32 0, align 4
@HNS_RCB_TX_USECS_LOW = common dso_local global i32 0, align 4
@HNS_RCB_RX_USECS_LOW = common dso_local global i32 0, align 4
@HNS_RCB_TX_USECS_HIGH = common dso_local global i32 0, align 4
@HNS_RCB_RX_USECS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_handle*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @hns_ae_get_coalesce_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_get_coalesce_range(%struct.hnae_handle* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.hnae_handle*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.dsaf_device*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %21 = call i32 @assert(%struct.hnae_handle* %20)
  %22 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %23 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.dsaf_device* @hns_ae_get_dsaf_dev(i32 %24)
  store %struct.dsaf_device* %25, %struct.dsaf_device** %19, align 8
  %26 = load i32, i32* @HNS_RCB_TX_FRAMES_LOW, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @HNS_RCB_RX_FRAMES_LOW, align 4
  %29 = load i32*, i32** %12, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.dsaf_device*, %struct.dsaf_device** %19, align 8
  %31 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @AE_IS_VER1(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %9
  %36 = load %struct.hnae_handle*, %struct.hnae_handle** %10, align 8
  %37 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HNAE_PORT_DEBUG, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %35, %9
  %42 = load %struct.dsaf_device*, %struct.dsaf_device** %19, align 8
  %43 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @HNS_RCB_TX_FRAMES_HIGH, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @HNS_RCB_TX_FRAMES_HIGH, align 4
  br label %55

50:                                               ; preds = %41
  %51 = load %struct.dsaf_device*, %struct.dsaf_device** %19, align 8
  %52 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i32 [ %49, %48 ], [ %54, %50 ]
  %57 = load i32*, i32** %13, align 8
  store i32 %56, i32* %57, align 4
  br label %60

58:                                               ; preds = %35
  %59 = load i32*, i32** %13, align 8
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = load %struct.dsaf_device*, %struct.dsaf_device** %19, align 8
  %62 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* @HNS_RCB_RX_FRAMES_HIGH, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @HNS_RCB_RX_FRAMES_HIGH, align 4
  br label %74

69:                                               ; preds = %60
  %70 = load %struct.dsaf_device*, %struct.dsaf_device** %19, align 8
  %71 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  br label %74

74:                                               ; preds = %69, %67
  %75 = phi i32 [ %68, %67 ], [ %73, %69 ]
  %76 = load i32*, i32** %14, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @HNS_RCB_TX_USECS_LOW, align 4
  %78 = load i32*, i32** %15, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @HNS_RCB_RX_USECS_LOW, align 4
  %80 = load i32*, i32** %16, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @HNS_RCB_TX_USECS_HIGH, align 4
  %82 = load i32*, i32** %17, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @HNS_RCB_RX_USECS_HIGH, align 4
  %84 = load i32*, i32** %18, align 8
  store i32 %83, i32* %84, align 4
  ret void
}

declare dso_local i32 @assert(%struct.hnae_handle*) #1

declare dso_local %struct.dsaf_device* @hns_ae_get_dsaf_dev(i32) #1

declare dso_local i64 @AE_IS_VER1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
