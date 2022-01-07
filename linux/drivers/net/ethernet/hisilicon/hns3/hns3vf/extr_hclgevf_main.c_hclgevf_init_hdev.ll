; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_hdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_hdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, %struct.pci_dev*, i32, i32 }
%struct.pci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"PCI initialization failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Cmd queue init failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Query vf status error, ret = %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed(%d) to init MSI/MSI-X\0A\00", align 1
@HNAE3_VF_FUNC_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"failed(%d) to init Misc IRQ(vector0)\0A\00", align 1
@HCLGEVF_STATE_IRQ_INITED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"failed(%d) to fetch configuration\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed(%d) to allocate TQPs\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed(%d) to set handle info\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed(%d) to initialize RSS\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"failed(%d) to initialize VLAN config\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"finished initializing %s driver\0A\00", align 1
@HCLGEVF_DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_init_hdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_init_hdev(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %6, i32 0, i32 1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %10 = call i32 @hclgevf_pci_init(%struct.hclgevf_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %176

18:                                               ; preds = %1
  %19 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %20 = call i32 @hclgevf_cmd_queue_init(%struct.hclgevf_dev* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %168

28:                                               ; preds = %18
  %29 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %30 = call i32 @hclgevf_cmd_init(%struct.hclgevf_dev* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %165

34:                                               ; preds = %28
  %35 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %36 = call i32 @hclgevf_query_vf_resource(%struct.hclgevf_dev* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %40, i32 0, i32 1
  %42 = load %struct.pci_dev*, %struct.pci_dev** %41, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %165

46:                                               ; preds = %34
  %47 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %48 = call i32 @hclgevf_init_msi(%struct.hclgevf_dev* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %165

56:                                               ; preds = %46
  %57 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %58 = call i32 @hclgevf_state_init(%struct.hclgevf_dev* %57)
  %59 = load i32, i32* @HNAE3_VF_FUNC_RESET, align 4
  %60 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %63 = call i32 @hclgevf_misc_irq_init(%struct.hclgevf_dev* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %160

71:                                               ; preds = %56
  %72 = load i32, i32* @HCLGEVF_STATE_IRQ_INITED, align 4
  %73 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %74 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %73, i32 0, i32 0
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %77 = call i32 @hclgevf_configure(%struct.hclgevf_dev* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  br label %157

85:                                               ; preds = %71
  %86 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %87 = call i32 @hclgevf_alloc_tqps(%struct.hclgevf_dev* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %5, align 4
  %94 = call i32 (i32*, i8*, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  br label %157

95:                                               ; preds = %85
  %96 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %97 = call i32 @hclgevf_set_handle_info(%struct.hclgevf_dev* %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  br label %157

105:                                              ; preds = %95
  %106 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %107 = call i32 @hclgevf_config_gro(%struct.hclgevf_dev* %106, i32 1)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %157

111:                                              ; preds = %105
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %114, 33
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %118 = call i32 @hclgevf_set_promisc_mode(%struct.hclgevf_dev* %117, i32 1)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %157

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %111
  %124 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %125 = call i32 @hclgevf_rss_init_hw(%struct.hclgevf_dev* %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %130 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %129, i32 0, i32 1
  %131 = load %struct.pci_dev*, %struct.pci_dev** %130, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 1
  %133 = load i32, i32* %5, align 4
  %134 = call i32 (i32*, i8*, ...) @dev_err(i32* %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %133)
  br label %157

135:                                              ; preds = %123
  %136 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %137 = call i32 @hclgevf_init_vlan_config(%struct.hclgevf_dev* %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %142 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %141, i32 0, i32 1
  %143 = load %struct.pci_dev*, %struct.pci_dev** %142, align 8
  %144 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %143, i32 0, i32 1
  %145 = load i32, i32* %5, align 4
  %146 = call i32 (i32*, i8*, ...) @dev_err(i32* %144, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %145)
  br label %157

147:                                              ; preds = %135
  %148 = load i32, i32* @jiffies, align 4
  %149 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %150 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %152 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %151, i32 0, i32 1
  %153 = load %struct.pci_dev*, %struct.pci_dev** %152, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 1
  %155 = load i32, i32* @HCLGEVF_DRIVER_NAME, align 4
  %156 = call i32 @dev_info(i32* %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %155)
  store i32 0, i32* %2, align 4
  br label %176

157:                                              ; preds = %140, %128, %121, %110, %100, %90, %80
  %158 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %159 = call i32 @hclgevf_misc_irq_uninit(%struct.hclgevf_dev* %158)
  br label %160

160:                                              ; preds = %157, %66
  %161 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %162 = call i32 @hclgevf_state_uninit(%struct.hclgevf_dev* %161)
  %163 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %164 = call i32 @hclgevf_uninit_msi(%struct.hclgevf_dev* %163)
  br label %165

165:                                              ; preds = %160, %51, %39, %33
  %166 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %167 = call i32 @hclgevf_cmd_uninit(%struct.hclgevf_dev* %166)
  br label %168

168:                                              ; preds = %165, %23
  %169 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %170 = call i32 @hclgevf_pci_uninit(%struct.hclgevf_dev* %169)
  %171 = load i32, i32* @HCLGEVF_STATE_IRQ_INITED, align 4
  %172 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %173 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %172, i32 0, i32 0
  %174 = call i32 @clear_bit(i32 %171, i32* %173)
  %175 = load i32, i32* %5, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %168, %147, %13
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @hclgevf_pci_init(%struct.hclgevf_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hclgevf_cmd_queue_init(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_cmd_init(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_query_vf_resource(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_init_msi(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_state_init(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_misc_irq_init(%struct.hclgevf_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hclgevf_configure(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_alloc_tqps(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_set_handle_info(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_config_gro(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @hclgevf_set_promisc_mode(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @hclgevf_rss_init_hw(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_init_vlan_config(%struct.hclgevf_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @hclgevf_misc_irq_uninit(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_state_uninit(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_uninit_msi(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_cmd_uninit(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_pci_uninit(%struct.hclgevf_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
