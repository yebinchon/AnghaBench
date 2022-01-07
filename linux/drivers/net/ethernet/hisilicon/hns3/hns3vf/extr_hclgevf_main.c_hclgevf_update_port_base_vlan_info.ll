; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_update_port_base_vlan_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_update_port_base_vlan_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.hnae3_handle }
%struct.hnae3_handle = type { i64 }

@HNAE3_DOWN_CLIENT = common dso_local global i32 0, align 4
@HCLGE_MBX_SET_VLAN = common dso_local global i32 0, align 4
@HCLGE_MBX_PORT_BASE_VLAN_CFG = common dso_local global i32 0, align 4
@HNAE3_PORT_BASE_VLAN_DISABLE = common dso_local global i64 0, align 8
@HNAE3_PORT_BASE_VLAN_ENABLE = common dso_local global i64 0, align 8
@HNAE3_UP_CLIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclgevf_update_port_base_vlan_info(%struct.hclgevf_dev* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.hclgevf_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hnae3_handle*, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %11 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %10, i32 0, i32 0
  store %struct.hnae3_handle* %11, %struct.hnae3_handle** %9, align 8
  %12 = call i32 (...) @rtnl_lock()
  %13 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %14 = load i32, i32* @HNAE3_DOWN_CLIENT, align 4
  %15 = call i32 @hclgevf_notify_client(%struct.hclgevf_dev* %13, i32 %14)
  %16 = call i32 (...) @rtnl_unlock()
  %17 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %18 = load i32, i32* @HCLGE_MBX_SET_VLAN, align 4
  %19 = load i32, i32* @HCLGE_MBX_PORT_BASE_VLAN_CFG, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev* %17, i32 %18, i32 %19, i32* %20, i32 %21, i32 0, i32* null, i32 0)
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @HNAE3_PORT_BASE_VLAN_DISABLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i64, i64* @HNAE3_PORT_BASE_VLAN_DISABLE, align 8
  %28 = load %struct.hnae3_handle*, %struct.hnae3_handle** %9, align 8
  %29 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %34

30:                                               ; preds = %4
  %31 = load i64, i64* @HNAE3_PORT_BASE_VLAN_ENABLE, align 8
  %32 = load %struct.hnae3_handle*, %struct.hnae3_handle** %9, align 8
  %33 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = call i32 (...) @rtnl_lock()
  %36 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %37 = load i32, i32* @HNAE3_UP_CLIENT, align 4
  %38 = call i32 @hclgevf_notify_client(%struct.hclgevf_dev* %36, i32 %37)
  %39 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @hclgevf_notify_client(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev*, i32, i32, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
