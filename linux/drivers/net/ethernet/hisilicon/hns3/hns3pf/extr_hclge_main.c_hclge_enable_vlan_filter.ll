; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_enable_vlan_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_enable_vlan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HCLGE_FILTER_TYPE_VF = common dso_local global i32 0, align 4
@HCLGE_FILTER_FE_EGRESS = common dso_local global i32 0, align 4
@HCLGE_FILTER_TYPE_PORT = common dso_local global i32 0, align 4
@HCLGE_FILTER_FE_INGRESS = common dso_local global i32 0, align 4
@HCLGE_FILTER_FE_EGRESS_V1_B = common dso_local global i32 0, align 4
@HNAE3_VLAN_FLTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i32)* @hclge_enable_vlan_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_enable_vlan_filter(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca %struct.hclge_dev*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %8 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %7)
  store %struct.hclge_vport* %8, %struct.hclge_vport** %5, align 8
  %9 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %10 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %9, i32 0, i32 0
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  store %struct.hclge_dev* %11, %struct.hclge_dev** %6, align 8
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 33
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %20 = load i32, i32* @HCLGE_FILTER_TYPE_VF, align 4
  %21 = load i32, i32* @HCLGE_FILTER_FE_EGRESS, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @hclge_set_vlan_filter_ctrl(%struct.hclge_dev* %19, i32 %20, i32 %21, i32 %22, i32 0)
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %25 = load i32, i32* @HCLGE_FILTER_TYPE_PORT, align 4
  %26 = load i32, i32* @HCLGE_FILTER_FE_INGRESS, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @hclge_set_vlan_filter_ctrl(%struct.hclge_dev* %24, i32 %25, i32 %26, i32 %27, i32 0)
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %31 = load i32, i32* @HCLGE_FILTER_TYPE_VF, align 4
  %32 = load i32, i32* @HCLGE_FILTER_FE_EGRESS_V1_B, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @hclge_set_vlan_filter_ctrl(%struct.hclge_dev* %30, i32 %31, i32 %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %29, %18
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* @HNAE3_VLAN_FLTR, align 4
  %40 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %41 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %51

44:                                               ; preds = %35
  %45 = load i32, i32* @HNAE3_VLAN_FLTR, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %48 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %44, %38
  ret void
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_set_vlan_filter_ctrl(%struct.hclge_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
