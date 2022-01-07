; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_cfg_mac_speed_dup_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_cfg_mac_speed_dup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_config_mac_speed_dup_cmd = type { i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_CONFIG_SPEED_DUP = common dso_local global i32 0, align 4
@HCLGE_CFG_DUPLEX_B = common dso_local global i32 0, align 4
@HCLGE_CFG_SPEED_M = common dso_local global i32 0, align 4
@HCLGE_CFG_SPEED_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid speed (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HCLGE_CFG_MAC_SPEED_CHANGE_EN_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"mac speed/duplex config cmd failed %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i64)* @hclge_cfg_mac_speed_dup_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_cfg_mac_speed_dup_hw(%struct.hclge_dev* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.hclge_config_mac_speed_dup_cmd*, align 8
  %9 = alloca %struct.hclge_desc, align 8
  %10 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %9, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hclge_config_mac_speed_dup_cmd*
  store %struct.hclge_config_mac_speed_dup_cmd* %13, %struct.hclge_config_mac_speed_dup_cmd** %8, align 8
  %14 = load i32, i32* @HCLGE_OPC_CONFIG_SPEED_DUP, align 4
  %15 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %9, i32 %14, i32 0)
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.hclge_config_mac_speed_dup_cmd*, %struct.hclge_config_mac_speed_dup_cmd** %8, align 8
  %20 = getelementptr inbounds %struct.hclge_config_mac_speed_dup_cmd, %struct.hclge_config_mac_speed_dup_cmd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HCLGE_CFG_DUPLEX_B, align 4
  %23 = call i32 @hnae3_set_bit(i32 %21, i32 %22, i32 1)
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %82 [
    i32 132, label %26
    i32 134, label %33
    i32 131, label %40
    i32 133, label %47
    i32 130, label %54
    i32 129, label %61
    i32 128, label %68
    i32 135, label %75
  ]

26:                                               ; preds = %24
  %27 = load %struct.hclge_config_mac_speed_dup_cmd*, %struct.hclge_config_mac_speed_dup_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.hclge_config_mac_speed_dup_cmd, %struct.hclge_config_mac_speed_dup_cmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HCLGE_CFG_SPEED_M, align 4
  %31 = load i32, i32* @HCLGE_CFG_SPEED_S, align 4
  %32 = call i32 @hnae3_set_field(i32 %29, i32 %30, i32 %31, i32 6)
  br label %91

33:                                               ; preds = %24
  %34 = load %struct.hclge_config_mac_speed_dup_cmd*, %struct.hclge_config_mac_speed_dup_cmd** %8, align 8
  %35 = getelementptr inbounds %struct.hclge_config_mac_speed_dup_cmd, %struct.hclge_config_mac_speed_dup_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HCLGE_CFG_SPEED_M, align 4
  %38 = load i32, i32* @HCLGE_CFG_SPEED_S, align 4
  %39 = call i32 @hnae3_set_field(i32 %36, i32 %37, i32 %38, i32 7)
  br label %91

40:                                               ; preds = %24
  %41 = load %struct.hclge_config_mac_speed_dup_cmd*, %struct.hclge_config_mac_speed_dup_cmd** %8, align 8
  %42 = getelementptr inbounds %struct.hclge_config_mac_speed_dup_cmd, %struct.hclge_config_mac_speed_dup_cmd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HCLGE_CFG_SPEED_M, align 4
  %45 = load i32, i32* @HCLGE_CFG_SPEED_S, align 4
  %46 = call i32 @hnae3_set_field(i32 %43, i32 %44, i32 %45, i32 0)
  br label %91

47:                                               ; preds = %24
  %48 = load %struct.hclge_config_mac_speed_dup_cmd*, %struct.hclge_config_mac_speed_dup_cmd** %8, align 8
  %49 = getelementptr inbounds %struct.hclge_config_mac_speed_dup_cmd, %struct.hclge_config_mac_speed_dup_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HCLGE_CFG_SPEED_M, align 4
  %52 = load i32, i32* @HCLGE_CFG_SPEED_S, align 4
  %53 = call i32 @hnae3_set_field(i32 %50, i32 %51, i32 %52, i32 1)
  br label %91

54:                                               ; preds = %24
  %55 = load %struct.hclge_config_mac_speed_dup_cmd*, %struct.hclge_config_mac_speed_dup_cmd** %8, align 8
  %56 = getelementptr inbounds %struct.hclge_config_mac_speed_dup_cmd, %struct.hclge_config_mac_speed_dup_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @HCLGE_CFG_SPEED_M, align 4
  %59 = load i32, i32* @HCLGE_CFG_SPEED_S, align 4
  %60 = call i32 @hnae3_set_field(i32 %57, i32 %58, i32 %59, i32 2)
  br label %91

61:                                               ; preds = %24
  %62 = load %struct.hclge_config_mac_speed_dup_cmd*, %struct.hclge_config_mac_speed_dup_cmd** %8, align 8
  %63 = getelementptr inbounds %struct.hclge_config_mac_speed_dup_cmd, %struct.hclge_config_mac_speed_dup_cmd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HCLGE_CFG_SPEED_M, align 4
  %66 = load i32, i32* @HCLGE_CFG_SPEED_S, align 4
  %67 = call i32 @hnae3_set_field(i32 %64, i32 %65, i32 %66, i32 3)
  br label %91

68:                                               ; preds = %24
  %69 = load %struct.hclge_config_mac_speed_dup_cmd*, %struct.hclge_config_mac_speed_dup_cmd** %8, align 8
  %70 = getelementptr inbounds %struct.hclge_config_mac_speed_dup_cmd, %struct.hclge_config_mac_speed_dup_cmd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HCLGE_CFG_SPEED_M, align 4
  %73 = load i32, i32* @HCLGE_CFG_SPEED_S, align 4
  %74 = call i32 @hnae3_set_field(i32 %71, i32 %72, i32 %73, i32 4)
  br label %91

75:                                               ; preds = %24
  %76 = load %struct.hclge_config_mac_speed_dup_cmd*, %struct.hclge_config_mac_speed_dup_cmd** %8, align 8
  %77 = getelementptr inbounds %struct.hclge_config_mac_speed_dup_cmd, %struct.hclge_config_mac_speed_dup_cmd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @HCLGE_CFG_SPEED_M, align 4
  %80 = load i32, i32* @HCLGE_CFG_SPEED_S, align 4
  %81 = call i32 @hnae3_set_field(i32 %78, i32 %79, i32 %80, i32 5)
  br label %91

82:                                               ; preds = %24
  %83 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %84 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %111

91:                                               ; preds = %75, %68, %61, %54, %47, %40, %33, %26
  %92 = load %struct.hclge_config_mac_speed_dup_cmd*, %struct.hclge_config_mac_speed_dup_cmd** %8, align 8
  %93 = getelementptr inbounds %struct.hclge_config_mac_speed_dup_cmd, %struct.hclge_config_mac_speed_dup_cmd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @HCLGE_CFG_MAC_SPEED_CHANGE_EN_B, align 4
  %96 = call i32 @hnae3_set_bit(i32 %94, i32 %95, i32 1)
  %97 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %98 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %97, i32 0, i32 1
  %99 = call i32 @hclge_cmd_send(i32* %98, %struct.hclge_desc* %9, i32 1)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %91
  %103 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %104 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %111

110:                                              ; preds = %91
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %102, %82
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hnae3_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
