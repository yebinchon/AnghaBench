; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclgevf_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@HCLGE_MBX_MAC_VLAN_UC_ADD = common dso_local global i32 0, align 4
@HCLGE_MBX_MAC_VLAN_UC_MODIFY = common dso_local global i32 0, align 4
@HCLGE_MBX_SET_UNICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i8*, i32)* @hclgevf_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_set_mac_addr(%struct.hnae3_handle* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hclgevf_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %15 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %14)
  store %struct.hclgevf_dev* %15, %struct.hclgevf_dev** %7, align 8
  %16 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %17 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %9, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = mul nsw i32 %23, 2
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @ether_addr_copy(i32* %27, i32* %28)
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @ether_addr_copy(i32* %32, i32* %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @HCLGE_MBX_MAC_VLAN_UC_ADD, align 4
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @HCLGE_MBX_MAC_VLAN_UC_MODIFY, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %12, align 4
  %43 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %44 = load i32, i32* @HCLGE_MBX_SET_UNICAST, align 4
  %45 = load i32, i32* %12, align 4
  %46 = mul nuw i64 4, %25
  %47 = trunc i64 %46 to i32
  %48 = call i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev* %43, i32 %44, i32 %45, i32* %27, i32 %47, i32 1, i32* null, i32 0)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %41
  %52 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %53 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @ether_addr_copy(i32* %56, i32* %57)
  br label %59

59:                                               ; preds = %51, %41
  %60 = load i32, i32* %13, align 4
  %61 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %61)
  ret i32 %60
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev*, i32, i32, i32*, i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
