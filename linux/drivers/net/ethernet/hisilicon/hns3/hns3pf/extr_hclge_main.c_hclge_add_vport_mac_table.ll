; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_vport_mac_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_vport_mac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.list_head, %struct.list_head, i32 }
%struct.list_head = type { i32 }
%struct.hclge_vport_mac_addr_cfg = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@HCLGE_MAC_ADDR_UC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclge_add_vport_mac_table(%struct.hclge_vport* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hclge_vport_mac_addr_cfg*, align 8
  %8 = alloca %struct.list_head*, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %10 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %44

14:                                               ; preds = %3
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.hclge_vport_mac_addr_cfg* @kzalloc(i32 12, i32 %15)
  store %struct.hclge_vport_mac_addr_cfg* %16, %struct.hclge_vport_mac_addr_cfg** %7, align 8
  %17 = load %struct.hclge_vport_mac_addr_cfg*, %struct.hclge_vport_mac_addr_cfg** %7, align 8
  %18 = icmp ne %struct.hclge_vport_mac_addr_cfg* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %44

20:                                               ; preds = %14
  %21 = load %struct.hclge_vport_mac_addr_cfg*, %struct.hclge_vport_mac_addr_cfg** %7, align 8
  %22 = getelementptr inbounds %struct.hclge_vport_mac_addr_cfg, %struct.hclge_vport_mac_addr_cfg* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.hclge_vport_mac_addr_cfg*, %struct.hclge_vport_mac_addr_cfg** %7, align 8
  %24 = getelementptr inbounds %struct.hclge_vport_mac_addr_cfg, %struct.hclge_vport_mac_addr_cfg* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @memcpy(i32 %25, i32* %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @HCLGE_MAC_ADDR_UC, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %34 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %33, i32 0, i32 1
  br label %38

35:                                               ; preds = %20
  %36 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %37 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %36, i32 0, i32 0
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi %struct.list_head* [ %34, %32 ], [ %37, %35 ]
  store %struct.list_head* %39, %struct.list_head** %8, align 8
  %40 = load %struct.hclge_vport_mac_addr_cfg*, %struct.hclge_vport_mac_addr_cfg** %7, align 8
  %41 = getelementptr inbounds %struct.hclge_vport_mac_addr_cfg, %struct.hclge_vport_mac_addr_cfg* %40, i32 0, i32 1
  %42 = load %struct.list_head*, %struct.list_head** %8, align 8
  %43 = call i32 @list_add_tail(i32* %41, %struct.list_head* %42)
  br label %44

44:                                               ; preds = %38, %19, %13
  ret void
}

declare dso_local %struct.hclge_vport_mac_addr_cfg* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
