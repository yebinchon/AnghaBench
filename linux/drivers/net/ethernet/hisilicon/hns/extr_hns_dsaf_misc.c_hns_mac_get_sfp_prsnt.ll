; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_mac_get_sfp_prsnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_mac_get_sfp_prsnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@MAC_SFP_PORT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_mac_cb*, i32*)* @hns_mac_get_sfp_prsnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mac_get_sfp_prsnt(%struct.hns_mac_cb* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_mac_cb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %9 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %17 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %20 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAC_SFP_PORT_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @dsaf_read_syscon(i32 %18, i64 %23, i64* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %15
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %27, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @dsaf_read_syscon(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
