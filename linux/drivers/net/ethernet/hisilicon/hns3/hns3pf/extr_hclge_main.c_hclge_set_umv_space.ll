; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_umv_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_umv_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_umv_spc_alc_cmd = type { i32, i32 }
%struct.hclge_desc = type { i32* }

@HCLGE_OPC_MAC_VLAN_ALLOCATE = common dso_local global i32 0, align 4
@HCLGE_UMV_SPC_ALC_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s umv space failed for cmd_send, ret =%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"allocate\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32*, i32)* @hclge_set_umv_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_umv_space(%struct.hclge_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hclge_umv_spc_alc_cmd*, align 8
  %11 = alloca %struct.hclge_desc, align 8
  %12 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %11, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to %struct.hclge_umv_spc_alc_cmd*
  store %struct.hclge_umv_spc_alc_cmd* %15, %struct.hclge_umv_spc_alc_cmd** %10, align 8
  %16 = load i32, i32* @HCLGE_OPC_MAC_VLAN_ALLOCATE, align 4
  %17 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %11, i32 %16, i32 0)
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.hclge_umv_spc_alc_cmd*, %struct.hclge_umv_spc_alc_cmd** %10, align 8
  %22 = getelementptr inbounds %struct.hclge_umv_spc_alc_cmd, %struct.hclge_umv_spc_alc_cmd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HCLGE_UMV_SPC_ALC_B, align 4
  %25 = call i32 @hnae3_set_bit(i32 %23, i32 %24, i32 1)
  br label %26

26:                                               ; preds = %20, %4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.hclge_umv_spc_alc_cmd*, %struct.hclge_umv_spc_alc_cmd** %10, align 8
  %30 = getelementptr inbounds %struct.hclge_umv_spc_alc_cmd, %struct.hclge_umv_spc_alc_cmd* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 1
  %33 = call i32 @hclge_cmd_send(i32* %32, %struct.hclge_desc* %11, i32 1)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %38 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %62

48:                                               ; preds = %26
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %11, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %51, %48
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %36
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
