; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_en_hw_strip_rxvtag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_en_hw_strip_rxvtag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@HNAE3_PORT_BASE_VLAN_DISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_en_hw_strip_rxvtag(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_vport*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %7 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %6)
  store %struct.hclge_vport* %7, %struct.hclge_vport** %5, align 8
  %8 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %9 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HNAE3_PORT_BASE_VLAN_DISABLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %16 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %20 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %25 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %28 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %22, %14
  %31 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %32 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %35 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %39 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 8
  %41 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %42 = call i32 @hclge_set_vlan_rx_offload_cfg(%struct.hclge_vport* %41)
  ret i32 %42
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_set_vlan_rx_offload_cfg(%struct.hclge_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
