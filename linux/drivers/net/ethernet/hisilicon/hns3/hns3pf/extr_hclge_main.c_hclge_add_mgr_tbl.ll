; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_mgr_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_mgr_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mac_mgr_tbl_entry_cmd = type { i32 }
%struct.hclge_desc = type { i32, i32* }

@HCLGE_OPC_MAC_ETHTYPE_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"add mac ethertype failed for cmd_send, ret =%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_mac_mgr_tbl_entry_cmd*)* @hclge_add_mgr_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_add_mgr_tbl(%struct.hclge_dev* %0, %struct.hclge_mac_mgr_tbl_entry_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca %struct.hclge_mac_mgr_tbl_entry_cmd*, align 8
  %6 = alloca %struct.hclge_desc, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store %struct.hclge_mac_mgr_tbl_entry_cmd* %1, %struct.hclge_mac_mgr_tbl_entry_cmd** %5, align 8
  %10 = load i32, i32* @HCLGE_OPC_MAC_ETHTYPE_ADD, align 4
  %11 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %10, i32 0)
  %12 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.hclge_mac_mgr_tbl_entry_cmd*, %struct.hclge_mac_mgr_tbl_entry_cmd** %5, align 8
  %15 = call i32 @memcpy(i32* %13, %struct.hclge_mac_mgr_tbl_entry_cmd* %14, i32 4)
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 1
  %18 = call i32 @hclge_cmd_send(i32* %17, %struct.hclge_desc* %6, i32 1)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %44

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  store i32 %36, i32* %7, align 4
  %37 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @le16_to_cpu(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @hclge_get_mac_ethertype_cmd_status(%struct.hclge_dev* %40, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %29, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.hclge_mac_mgr_tbl_entry_cmd*, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hclge_get_mac_ethertype_cmd_status(%struct.hclge_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
