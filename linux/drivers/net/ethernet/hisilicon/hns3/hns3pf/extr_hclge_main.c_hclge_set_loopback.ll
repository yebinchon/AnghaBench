; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.TYPE_4__, %struct.hclge_dev* }
%struct.TYPE_4__ = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i32 }
%struct.hclge_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@HCLGE_SWITCH_ALW_LPBK_B = common dso_local global i32 0, align 4
@PF_VPORT_ID = common dso_local global i32 0, align 4
@HCLGE_SWITCH_ALW_LPBK_MASK = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"loop_mode %d is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32, i32)* @hclge_set_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_loopback(%struct.hnae3_handle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hclge_vport*, align 8
  %9 = alloca %struct.hnae3_knic_private_info*, align 8
  %10 = alloca %struct.hclge_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %15 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %14)
  store %struct.hclge_vport* %15, %struct.hclge_vport** %8, align 8
  %16 = load %struct.hclge_vport*, %struct.hclge_vport** %8, align 8
  %17 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %16, i32 0, i32 1
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %17, align 8
  store %struct.hclge_dev* %18, %struct.hclge_dev** %10, align 8
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 33
  br i1 %24, label %25, label %44

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @HCLGE_SWITCH_ALW_LPBK_B, align 4
  %31 = call i32 @BIT(i32 %30)
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i32 [ 0, %28 ], [ %31, %29 ]
  store i32 %33, i32* %13, align 4
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %35 = load i32, i32* @PF_VPORT_ID, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @HCLGE_SWITCH_ALW_LPBK_MASK, align 4
  %38 = call i32 @hclge_config_switch_param(%struct.hclge_dev* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %4, align 4
  br label %97

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %59 [
    i32 131, label %46
    i32 128, label %50
    i32 130, label %50
    i32 129, label %55
  ]

46:                                               ; preds = %44
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @hclge_set_app_loopback(%struct.hclge_dev* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  br label %68

50:                                               ; preds = %44, %44
  %51 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @hclge_set_serdes_loopback(%struct.hclge_dev* %51, i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  br label %68

55:                                               ; preds = %44
  %56 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @hclge_set_phy_loopback(%struct.hclge_dev* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %68

59:                                               ; preds = %44
  %60 = load i32, i32* @ENOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %63 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %59, %55, %50, %46
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %4, align 4
  br label %97

73:                                               ; preds = %68
  %74 = load %struct.hclge_vport*, %struct.hclge_vport** %8, align 8
  %75 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %76, %struct.hnae3_knic_private_info** %9, align 8
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %93, %73
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %9, align 8
  %80 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @hclge_tqp_enable(%struct.hclge_dev* %84, i32 %85, i32 0, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %4, align 4
  br label %97

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %77

96:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %90, %71, %41
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hclge_config_switch_param(%struct.hclge_dev*, i32, i32, i32) #1

declare dso_local i32 @hclge_set_app_loopback(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_set_serdes_loopback(%struct.hclge_dev*, i32, i32) #1

declare dso_local i32 @hclge_set_phy_loopback(%struct.hclge_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_tqp_enable(%struct.hclge_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
