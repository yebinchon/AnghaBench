; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_vport_vlan_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_vport_vlan_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i32 }
%struct.hclge_vport_vlan_cfg = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_vport*, i32, i32)* @hclge_add_vport_vlan_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_add_vport_vlan_table(%struct.hclge_vport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hclge_vport_vlan_cfg*, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.hclge_vport_vlan_cfg* @kzalloc(i32 12, i32 %8)
  store %struct.hclge_vport_vlan_cfg* %9, %struct.hclge_vport_vlan_cfg** %7, align 8
  %10 = load %struct.hclge_vport_vlan_cfg*, %struct.hclge_vport_vlan_cfg** %7, align 8
  %11 = icmp ne %struct.hclge_vport_vlan_cfg* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %25

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.hclge_vport_vlan_cfg*, %struct.hclge_vport_vlan_cfg** %7, align 8
  %16 = getelementptr inbounds %struct.hclge_vport_vlan_cfg, %struct.hclge_vport_vlan_cfg* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.hclge_vport_vlan_cfg*, %struct.hclge_vport_vlan_cfg** %7, align 8
  %19 = getelementptr inbounds %struct.hclge_vport_vlan_cfg, %struct.hclge_vport_vlan_cfg* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hclge_vport_vlan_cfg*, %struct.hclge_vport_vlan_cfg** %7, align 8
  %21 = getelementptr inbounds %struct.hclge_vport_vlan_cfg, %struct.hclge_vport_vlan_cfg* %20, i32 0, i32 1
  %22 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %23 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %22, i32 0, i32 0
  %24 = call i32 @list_add_tail(i32* %21, i32* %23)
  br label %25

25:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.hclge_vport_vlan_cfg* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
