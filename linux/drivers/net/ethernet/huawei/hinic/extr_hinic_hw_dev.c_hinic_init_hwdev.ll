; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_hinic_init_hwdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_dev.c_hinic_init_hwdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwdev = type { i32, i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { i32 }
%struct.pci_dev = type { i32 }
%struct.hinic_pfhwdev = type { %struct.hinic_hwdev }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to init HW interface\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unsupported PCI Function type\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to init msix\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"outbound - disabled, try again\0A\00", align 1
@HINIC_OUTBOUND_ENABLE = common dso_local global i32 0, align 4
@HINIC_DEFAULT_AEQ_LEN = common dso_local global i32 0, align 4
@HINIC_EQ_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to init async event queues\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to init PF HW device\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to get device capabilities\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to init function table\0A\00", align 1
@HINIC_RES_ACTIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to set resources state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hinic_hwdev* @hinic_init_hwdev(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.hinic_hwdev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hinic_pfhwdev*, align 8
  %5 = alloca %struct.hinic_hwdev*, align 8
  %6 = alloca %struct.hinic_hwif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @devm_kzalloc(i32* %10, i32 4, i32 %11)
  %13 = bitcast i8* %12 to %struct.hinic_hwif*
  store %struct.hinic_hwif* %13, %struct.hinic_hwif** %6, align 8
  %14 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %15 = icmp ne %struct.hinic_hwif* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.hinic_hwdev* @ERR_PTR(i32 %18)
  store %struct.hinic_hwdev* %19, %struct.hinic_hwdev** %2, align 8
  br label %160

20:                                               ; preds = %1
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = call i32 @hinic_init_hwif(%struct.hinic_hwif* %21, %struct.pci_dev* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.hinic_hwdev* @ERR_PTR(i32 %30)
  store %struct.hinic_hwdev* %31, %struct.hinic_hwdev** %2, align 8
  br label %160

32:                                               ; preds = %20
  %33 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %34 = call i32 @HINIC_IS_PF(%struct.hinic_hwif* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %38 = call i32 @HINIC_IS_PPF(%struct.hinic_hwif* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EFAULT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %155

46:                                               ; preds = %36, %32
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @devm_kzalloc(i32* %48, i32 16, i32 %49)
  %51 = bitcast i8* %50 to %struct.hinic_pfhwdev*
  store %struct.hinic_pfhwdev* %51, %struct.hinic_pfhwdev** %4, align 8
  %52 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %4, align 8
  %53 = icmp ne %struct.hinic_pfhwdev* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %154

57:                                               ; preds = %46
  %58 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %4, align 8
  %59 = getelementptr inbounds %struct.hinic_pfhwdev, %struct.hinic_pfhwdev* %58, i32 0, i32 0
  store %struct.hinic_hwdev* %59, %struct.hinic_hwdev** %5, align 8
  %60 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %61 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %62 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %61, i32 0, i32 2
  store %struct.hinic_hwif* %60, %struct.hinic_hwif** %62, align 8
  %63 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %64 = call i32 @init_msix(%struct.hinic_hwdev* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %153

71:                                               ; preds = %57
  %72 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %73 = call i32 @wait_for_outbound_state(%struct.hinic_hwdev* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = call i32 @dev_warn(i32* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %81 = load i32, i32* @HINIC_OUTBOUND_ENABLE, align 4
  %82 = call i32 @hinic_outbound_state_set(%struct.hinic_hwif* %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %71
  %84 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %85 = call i32 @HINIC_HWIF_NUM_AEQS(%struct.hinic_hwif* %84)
  store i32 %85, i32* %8, align 4
  %86 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %87 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %86, i32 0, i32 0
  %88 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @HINIC_DEFAULT_AEQ_LEN, align 4
  %91 = load i32, i32* @HINIC_EQ_PAGE_SIZE, align 4
  %92 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %93 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @hinic_aeqs_init(i32* %87, %struct.hinic_hwif* %88, i32 %89, i32 %90, i32 %91, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %83
  %99 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %150

102:                                              ; preds = %83
  %103 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %4, align 8
  %104 = call i32 @init_pfhwdev(%struct.hinic_pfhwdev* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %146

111:                                              ; preds = %102
  %112 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %113 = call i32 @get_dev_cap(%struct.hinic_hwdev* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = call i32 @dev_err(i32* %118, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %143

120:                                              ; preds = %111
  %121 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %122 = call i32 @init_fw_ctxt(%struct.hinic_hwdev* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %127 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %126, i32 0, i32 0
  %128 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %142

129:                                              ; preds = %120
  %130 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %131 = load i32, i32* @HINIC_RES_ACTIVE, align 4
  %132 = call i32 @set_resources_state(%struct.hinic_hwdev* %130, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %136, i32 0, i32 0
  %138 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %141

139:                                              ; preds = %129
  %140 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  store %struct.hinic_hwdev* %140, %struct.hinic_hwdev** %2, align 8
  br label %160

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %141, %125
  br label %143

143:                                              ; preds = %142, %116
  %144 = load %struct.hinic_pfhwdev*, %struct.hinic_pfhwdev** %4, align 8
  %145 = call i32 @free_pfhwdev(%struct.hinic_pfhwdev* %144)
  br label %146

146:                                              ; preds = %143, %107
  %147 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %148 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %147, i32 0, i32 0
  %149 = call i32 @hinic_aeqs_free(i32* %148)
  br label %150

150:                                              ; preds = %146, %98
  %151 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %152 = call i32 @disable_msix(%struct.hinic_hwdev* %151)
  br label %153

153:                                              ; preds = %150, %67
  br label %154

154:                                              ; preds = %153, %54
  br label %155

155:                                              ; preds = %154, %40
  %156 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %157 = call i32 @hinic_free_hwif(%struct.hinic_hwif* %156)
  %158 = load i32, i32* %7, align 4
  %159 = call %struct.hinic_hwdev* @ERR_PTR(i32 %158)
  store %struct.hinic_hwdev* %159, %struct.hinic_hwdev** %2, align 8
  br label %160

160:                                              ; preds = %155, %139, %26, %16
  %161 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %2, align 8
  ret %struct.hinic_hwdev* %161
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.hinic_hwdev* @ERR_PTR(i32) #1

declare dso_local i32 @hinic_init_hwif(%struct.hinic_hwif*, %struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @HINIC_IS_PF(%struct.hinic_hwif*) #1

declare dso_local i32 @HINIC_IS_PPF(%struct.hinic_hwif*) #1

declare dso_local i32 @init_msix(%struct.hinic_hwdev*) #1

declare dso_local i32 @wait_for_outbound_state(%struct.hinic_hwdev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @hinic_outbound_state_set(%struct.hinic_hwif*, i32) #1

declare dso_local i32 @HINIC_HWIF_NUM_AEQS(%struct.hinic_hwif*) #1

declare dso_local i32 @hinic_aeqs_init(i32*, %struct.hinic_hwif*, i32, i32, i32, i32) #1

declare dso_local i32 @init_pfhwdev(%struct.hinic_pfhwdev*) #1

declare dso_local i32 @get_dev_cap(%struct.hinic_hwdev*) #1

declare dso_local i32 @init_fw_ctxt(%struct.hinic_hwdev*) #1

declare dso_local i32 @set_resources_state(%struct.hinic_hwdev*, i32) #1

declare dso_local i32 @free_pfhwdev(%struct.hinic_pfhwdev*) #1

declare dso_local i32 @hinic_aeqs_free(i32*) #1

declare dso_local i32 @disable_msix(%struct.hinic_hwdev*) #1

declare dso_local i32 @hinic_free_hwif(%struct.hinic_hwif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
