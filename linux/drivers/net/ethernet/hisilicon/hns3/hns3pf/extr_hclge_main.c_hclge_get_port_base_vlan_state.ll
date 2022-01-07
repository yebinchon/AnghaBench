; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_port_base_vlan_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_port_base_vlan_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HNAE3_PORT_BASE_VLAN_DISABLE = common dso_local global i32 0, align 4
@HNAE3_PORT_BASE_VLAN_NOCHANGE = common dso_local global i32 0, align 4
@HNAE3_PORT_BASE_VLAN_ENABLE = common dso_local global i32 0, align 4
@HNAE3_PORT_BASE_VLAN_MODIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, i32, i32)* @hclge_get_port_base_vlan_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_port_base_vlan_state(%struct.hclge_vport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @HNAE3_PORT_BASE_VLAN_DISABLE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @HNAE3_PORT_BASE_VLAN_NOCHANGE, align 4
  store i32 %15, i32* %4, align 4
  br label %35

16:                                               ; preds = %11
  %17 = load i32, i32* @HNAE3_PORT_BASE_VLAN_ENABLE, align 4
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @HNAE3_PORT_BASE_VLAN_DISABLE, align 4
  store i32 %22, i32* %4, align 4
  br label %35

23:                                               ; preds = %18
  %24 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %25 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @HNAE3_PORT_BASE_VLAN_NOCHANGE, align 4
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @HNAE3_PORT_BASE_VLAN_MODIFY, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %31, %21, %16, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
