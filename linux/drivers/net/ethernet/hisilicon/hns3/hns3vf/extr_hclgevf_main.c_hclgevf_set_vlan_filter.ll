; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_vlan_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_vlan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclgevf_dev = type { i32, i32 }

@HCLGEVF_MAX_VLAN_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@HCLGEVF_STATE_RST_HANDLING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HCLGE_MBX_SET_VLAN = common dso_local global i32 0, align 4
@HCLGE_MBX_VLAN_FILTER = common dso_local global i32 0, align 4
@HCLGEVF_VLAN_MBX_MSG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32, i32, i32)* @hclgevf_set_vlan_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_set_vlan_filter(%struct.hnae3_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hclgevf_dev*, align 8
  %11 = alloca [5 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %14 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %13)
  store %struct.hclgevf_dev* %14, %struct.hclgevf_dev** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @HCLGEVF_MAX_VLAN_ID, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %71

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ETH_P_8021Q, align 4
  %24 = call i32 @htons(i32 %23)
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EPROTONOSUPPORT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %71

29:                                               ; preds = %21
  %30 = load i32, i32* @HCLGEVF_STATE_RST_HANDLING, align 4
  %31 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %32 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %31, i32 0, i32 1
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %41 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_bit(i32 %39, i32 %42)
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %71

46:                                               ; preds = %35, %29
  %47 = load i32, i32* %9, align 4
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %47, i32* %48, align 16
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  %50 = call i32 @memcpy(i32* %49, i32* %8, i32 4)
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  %52 = call i32 @memcpy(i32* %51, i32* %7, i32 4)
  %53 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %54 = load i32, i32* @HCLGE_MBX_SET_VLAN, align 4
  %55 = load i32, i32* @HCLGE_MBX_VLAN_FILTER, align 4
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %57 = call i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev* %53, i32 %54, i32 %55, i32* %56, i32 5, i32 0, i32* null, i32 0)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %46
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %10, align 8
  %66 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @set_bit(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %60, %46
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %38, %26, %18
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev*, i32, i32, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
