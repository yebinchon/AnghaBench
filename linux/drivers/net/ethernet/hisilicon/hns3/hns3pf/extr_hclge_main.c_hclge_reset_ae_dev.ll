; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_ae_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_ae_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_ae_dev = type { %struct.pci_dev*, %struct.hclge_dev* }
%struct.pci_dev = type { i32 }
%struct.hclge_dev = type { i64, i32, i32, i32 }

@HCLGE_STATE_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cmd queue init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Map tqp error, ret = %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Mac init error, ret = %d\0A\00", align 1
@HCLGE_TSO_MSS_MIN = common dso_local global i32 0, align 4
@HCLGE_TSO_MSS_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Enable tso fail, ret =%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"VLAN init fail, ret =%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"tm init hw fail, ret =%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Rss init fail, ret =%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"fd table init fail, ret=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"fail(%d) to re-enable NIC hw error interrupts\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"fail(%d) to re-enable roce ras interrupts\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Reset done, %s driver initialization finished.\0A\00", align 1
@HCLGE_DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_ae_dev*)* @hclge_reset_ae_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_reset_ae_dev(%struct.hnae3_ae_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_ae_dev*, align 8
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.hnae3_ae_dev* %0, %struct.hnae3_ae_dev** %3, align 8
  %7 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %7, i32 0, i32 1
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  store %struct.hclge_dev* %9, %struct.hclge_dev** %4, align 8
  %10 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load i32, i32* @HCLGE_STATE_DOWN, align 4
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 3
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %18 = call i32 @hclge_stats_clear(%struct.hclge_dev* %17)
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memset(i32 %21, i32 0, i32 4)
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @memset(i32 %25, i32 0, i32 4)
  %27 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %28 = call i32 @hclge_cmd_init(%struct.hclge_dev* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %159

36:                                               ; preds = %1
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %38 = call i32 @hclge_map_tqp(%struct.hclge_dev* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %159

47:                                               ; preds = %36
  %48 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %49 = call i32 @hclge_reset_umv_space(%struct.hclge_dev* %48)
  %50 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %51 = call i32 @hclge_mac_init(%struct.hclge_dev* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %159

60:                                               ; preds = %47
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %62 = load i32, i32* @HCLGE_TSO_MSS_MIN, align 4
  %63 = load i32, i32* @HCLGE_TSO_MSS_MAX, align 4
  %64 = call i32 @hclge_config_tso(%struct.hclge_dev* %61, i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %159

73:                                               ; preds = %60
  %74 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %75 = call i32 @hclge_config_gro(%struct.hclge_dev* %74, i32 1)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %159

80:                                               ; preds = %73
  %81 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %82 = call i32 @hclge_init_vlan_config(%struct.hclge_dev* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %159

91:                                               ; preds = %80
  %92 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %93 = call i32 @hclge_tm_init_hw(%struct.hclge_dev* %92, i32 1)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %6, align 4
  %100 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %159

102:                                              ; preds = %91
  %103 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %104 = call i32 @hclge_rss_init_hw(%struct.hclge_dev* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %6, align 4
  %111 = call i32 (i32*, i8*, ...) @dev_err(i32* %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %159

113:                                              ; preds = %102
  %114 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %115 = call i32 @hclge_init_fd_config(%struct.hclge_dev* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i32*, i8*, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %159

124:                                              ; preds = %113
  %125 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %126 = call i32 @hclge_config_nic_hw_error(%struct.hclge_dev* %125, i32 1)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %131 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %6, align 4
  %133 = call i32 (i32*, i8*, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  br label %159

135:                                              ; preds = %124
  %136 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %137 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %135
  %141 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %142 = call i32 @hclge_config_rocee_ras_interrupt(%struct.hclge_dev* %141, i32 1)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %6, align 4
  %149 = call i32 (i32*, i8*, ...) @dev_err(i32* %147, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %2, align 4
  br label %159

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151, %135
  %153 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %154 = call i32 @hclge_reset_vport_state(%struct.hclge_dev* %153)
  %155 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %156 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %155, i32 0, i32 0
  %157 = load i32, i32* @HCLGE_DRIVER_NAME, align 4
  %158 = call i32 @dev_info(i32* %156, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %152, %145, %129, %118, %107, %96, %85, %78, %67, %54, %41, %31
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hclge_stats_clear(%struct.hclge_dev*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @hclge_cmd_init(%struct.hclge_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hclge_map_tqp(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_reset_umv_space(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_mac_init(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_config_tso(%struct.hclge_dev*, i32, i32) #1

declare dso_local i32 @hclge_config_gro(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_init_vlan_config(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_tm_init_hw(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_rss_init_hw(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_init_fd_config(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_config_nic_hw_error(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_config_rocee_ras_interrupt(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_reset_vport_state(%struct.hclge_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
