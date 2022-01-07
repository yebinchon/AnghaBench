; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_need_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_need_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_driver = type { %struct.hns_mac_cb* }
%struct.hns_mac_cb = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @hns_gmac_need_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_gmac_need_adjust_link(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mac_driver*, align 8
  %8 = alloca %struct.hns_mac_cb*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mac_driver*
  store %struct.mac_driver* %10, %struct.mac_driver** %7, align 8
  %11 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %12 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %11, i32 0, i32 0
  %13 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %12, align 8
  store %struct.hns_mac_cb* %13, %struct.hns_mac_cb** %8, align 8
  %14 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %15 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %21 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ true, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
