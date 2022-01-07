; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_prepare_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_prepare_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_mac_vlan_tbl_entry_cmd = type { i32, i32, i32, i32, i32 }

@HCLGE_MAC_VLAN_BIT0_EN_B = common dso_local global i32 0, align 4
@HCLGE_MAC_VLAN_BIT1_EN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_mac_vlan_tbl_entry_cmd*, i8*, i32)* @hclge_prepare_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_prepare_mac_addr(%struct.hclge_mac_vlan_tbl_entry_cmd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hclge_mac_vlan_tbl_entry_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hclge_mac_vlan_tbl_entry_cmd* %0, %struct.hclge_mac_vlan_tbl_entry_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 2
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 %14, 16
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 3
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 24
  %21 = or i32 %15, %20
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %21, %25
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 8
  %32 = or i32 %26, %31
  store i32 %32, i32* %8, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 4
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 5
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 8
  %42 = or i32 %36, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_mac_vlan_tbl_entry_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.hclge_mac_vlan_tbl_entry_cmd, %struct.hclge_mac_vlan_tbl_entry_cmd* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HCLGE_MAC_VLAN_BIT0_EN_B, align 4
  %47 = call i32 @hnae3_set_bit(i32 %45, i32 %46, i32 1)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %3
  %51 = load %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_mac_vlan_tbl_entry_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.hclge_mac_vlan_tbl_entry_cmd, %struct.hclge_mac_vlan_tbl_entry_cmd* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HCLGE_MAC_VLAN_BIT1_EN_B, align 4
  %55 = call i32 @hnae3_set_bit(i32 %53, i32 %54, i32 1)
  %56 = load %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_mac_vlan_tbl_entry_cmd** %4, align 8
  %57 = getelementptr inbounds %struct.hclge_mac_vlan_tbl_entry_cmd, %struct.hclge_mac_vlan_tbl_entry_cmd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @HCLGE_MAC_VLAN_BIT0_EN_B, align 4
  %60 = call i32 @hnae3_set_bit(i32 %58, i32 %59, i32 1)
  br label %61

61:                                               ; preds = %50, %3
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = load %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_mac_vlan_tbl_entry_cmd** %4, align 8
  %65 = getelementptr inbounds %struct.hclge_mac_vlan_tbl_entry_cmd, %struct.hclge_mac_vlan_tbl_entry_cmd* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 65535
  %68 = call i32 @cpu_to_le16(i32 %67)
  %69 = load %struct.hclge_mac_vlan_tbl_entry_cmd*, %struct.hclge_mac_vlan_tbl_entry_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.hclge_mac_vlan_tbl_entry_cmd, %struct.hclge_mac_vlan_tbl_entry_cmd* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  ret void
}

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
