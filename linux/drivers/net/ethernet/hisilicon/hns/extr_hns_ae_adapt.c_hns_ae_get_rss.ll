; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32 }
%struct.hns_ppe_cb = type { i32, i32 }

@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@HNS_PPEV2_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@HNS_PPEV2_RSS_IND_TBL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_handle*, i32*, i32*, i32*)* @hns_ae_get_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_ae_get_rss(%struct.hnae_handle* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.hnae_handle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hns_ppe_cb*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %11 = call %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle* %10)
  store %struct.hns_ppe_cb* %11, %struct.hns_ppe_cb** %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %16 = load i32*, i32** %8, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %9, align 8
  %23 = getelementptr inbounds %struct.hns_ppe_cb, %struct.hns_ppe_cb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HNS_PPEV2_RSS_KEY_SIZE, align 4
  %26 = call i32 @memcpy(i32* %21, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %9, align 8
  %33 = getelementptr inbounds %struct.hns_ppe_cb, %struct.hns_ppe_cb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HNS_PPEV2_RSS_IND_TBL_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memcpy(i32* %31, i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %30, %27
  ret i32 0
}

declare dso_local %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
