; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_regs_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_get_regs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32 }
%struct.hnae_vf_cb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HNAE_PORT_SERVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_handle*)* @hns_ae_get_regs_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_ae_get_regs_len(%struct.hnae_handle* %0) #0 {
  %2 = alloca %struct.hnae_handle*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae_vf_cb*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %2, align 8
  %5 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %6 = call %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle* %5)
  store %struct.hnae_vf_cb* %6, %struct.hnae_vf_cb** %4, align 8
  %7 = call i32 (...) @hns_ppe_get_regs_count()
  store i32 %7, i32* %3, align 4
  %8 = call i64 (...) @hns_rcb_get_common_regs_count()
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = call i32 (...) @hns_rcb_get_ring_regs_count()
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %15 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %4, align 8
  %21 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i64 @hns_mac_get_regs_count(%struct.TYPE_2__* %22)
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  %28 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %4, align 8
  %29 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HNAE_PORT_SERVICE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = call i64 (...) @hns_dsaf_get_regs_count()
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %1
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_ppe_get_regs_count(...) #1

declare dso_local i64 @hns_rcb_get_common_regs_count(...) #1

declare dso_local i32 @hns_rcb_get_ring_regs_count(...) #1

declare dso_local i64 @hns_mac_get_regs_count(%struct.TYPE_2__*) #1

declare dso_local i64 @hns_dsaf_get_regs_count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
