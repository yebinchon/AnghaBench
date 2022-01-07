; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_sync_vlan_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_sync_vlan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, %struct.hnae3_handle }
%struct.hnae3_handle = type { i32 }

@VLAN_N_VID = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@HCLGEVF_MAX_SYNC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclgevf_dev*)* @hclgevf_sync_vlan_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_sync_vlan_filter(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca %struct.hclgevf_dev*, align 8
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %2, align 8
  %7 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %8 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %7, i32 0, i32 1
  store %struct.hnae3_handle* %8, %struct.hnae3_handle** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* @VLAN_N_VID, align 8
  %13 = call i64 @find_first_bit(i32 %11, i64 %12)
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %38, %1
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @VLAN_N_VID, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %20 = load i32, i32* @ETH_P_8021Q, align 4
  %21 = call i32 @htons(i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @hclgevf_set_vlan_filter(%struct.hnae3_handle* %19, i32 %21, i64 %22, i32 1)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %44

27:                                               ; preds = %18
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clear_bit(i64 %28, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %35, 60
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %44

38:                                               ; preds = %27
  %39 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %40 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @VLAN_N_VID, align 8
  %43 = call i64 @find_first_bit(i32 %41, i64 %42)
  store i64 %43, i64* %6, align 8
  br label %14

44:                                               ; preds = %26, %37, %14
  ret void
}

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @hclgevf_set_vlan_filter(%struct.hnae3_handle*, i32, i64, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
