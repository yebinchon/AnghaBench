; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_ppe.c_hns_ppe_set_rss_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_ppe.c_hns_ppe_set_rss_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_ppe_cb = type { i32 }

@HNS_PPEV2_RSS_KEY_NUM = common dso_local global i32 0, align 4
@PPEV2_RSS_KEY_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_ppe_set_rss_key(%struct.hns_ppe_cb* %0, i32* %1) #0 {
  %3 = alloca %struct.hns_ppe_cb*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.hns_ppe_cb* %0, %struct.hns_ppe_cb** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @HNS_PPEV2_RSS_KEY_NUM, align 4
  %7 = zext i32 %6 to i64
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @HNS_PPEV2_RSS_KEY_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %3, align 8
  %14 = load i64, i64* @PPEV2_RSS_KEY_REG, align 8
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dsaf_write_dev(%struct.hns_ppe_cb* %13, i64 %18, i32 %23)
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %8

28:                                               ; preds = %8
  ret void
}

declare dso_local i32 @dsaf_write_dev(%struct.hns_ppe_cb*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
