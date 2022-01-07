; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32, i32, i32, i32, i64, i32, %struct.pci_dev* }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to enable PCI device\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PCI request regions failed 0x%x\0A\00", align 1
@PCI_CFG_REG_BAR_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"BGX: Cannot map CSR memory space, aborting\0A\00", align 1
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_THUNDER_RGX = common dso_local global i64 0, align 8
@BGX_ID_MASK = common dso_local global i32 0, align 4
@max_bgx_per_node = common dso_local global i32 0, align 4
@MAX_LMAC_PER_BGX = common dso_local global i32 0, align 4
@bgx_vnic = common dso_local global %struct.bgx** null, align 8
@MAX_BGX_PER_CN81XX = common dso_local global i32 0, align 4
@PCI_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@PCI_SUBSYS_DEVID_81XX_BGX = common dso_local global i64 0, align 8
@PCI_SUBSYS_DEVID_83XX_BGX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"BGX%d failed to enable lmac%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @bgx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgx_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.bgx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  store %struct.bgx* null, %struct.bgx** %8, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.bgx* @devm_kzalloc(%struct.device* %13, i32 40, i32 %14)
  store %struct.bgx* %15, %struct.bgx** %8, align 8
  %16 = load %struct.bgx*, %struct.bgx** %8, align 8
  %17 = icmp ne %struct.bgx* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %195

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = load %struct.bgx*, %struct.bgx** %8, align 8
  %24 = getelementptr inbounds %struct.bgx, %struct.bgx* %23, i32 0, i32 6
  store %struct.pci_dev* %22, %struct.pci_dev** %24, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load %struct.bgx*, %struct.bgx** %8, align 8
  %27 = call i32 @pci_set_drvdata(%struct.pci_dev* %25, %struct.bgx* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_enable_device(%struct.pci_dev* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_set_drvdata(%struct.pci_dev* %35, %struct.bgx* null)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %195

38:                                               ; preds = %21
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load i32, i32* @DRV_NAME, align 4
  %41 = call i32 @pci_request_regions(%struct.pci_dev* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %189

48:                                               ; preds = %38
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = load i32, i32* @PCI_CFG_REG_BAR_NUM, align 4
  %51 = call i32 @pcim_iomap(%struct.pci_dev* %49, i32 %50, i32 0)
  %52 = load %struct.bgx*, %struct.bgx** %8, align 8
  %53 = getelementptr inbounds %struct.bgx, %struct.bgx* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bgx*, %struct.bgx** %8, align 8
  %55 = getelementptr inbounds %struct.bgx, %struct.bgx* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %48
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %186

63:                                               ; preds = %48
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i32 @set_max_bgx_per_node(%struct.pci_dev* %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = load i32, i32* @PCI_DEVICE_ID, align 4
  %68 = call i32 @pci_read_config_word(%struct.pci_dev* %66, i32 %67, i64* %10)
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @PCI_DEVICE_ID_THUNDER_RGX, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %63
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = load i32, i32* @PCI_CFG_REG_BAR_NUM, align 4
  %75 = call i32 @pci_resource_start(%struct.pci_dev* %73, i32 %74)
  %76 = ashr i32 %75, 24
  %77 = load i32, i32* @BGX_ID_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.bgx*, %struct.bgx** %8, align 8
  %80 = getelementptr inbounds %struct.bgx, %struct.bgx* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = call i32 @nic_get_node_id(%struct.pci_dev* %81)
  %83 = load i32, i32* @max_bgx_per_node, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.bgx*, %struct.bgx** %8, align 8
  %86 = getelementptr inbounds %struct.bgx, %struct.bgx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %90 = load %struct.bgx*, %struct.bgx** %8, align 8
  %91 = getelementptr inbounds %struct.bgx, %struct.bgx* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.bgx*, %struct.bgx** %8, align 8
  %93 = load %struct.bgx**, %struct.bgx*** @bgx_vnic, align 8
  %94 = load %struct.bgx*, %struct.bgx** %8, align 8
  %95 = getelementptr inbounds %struct.bgx, %struct.bgx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.bgx*, %struct.bgx** %93, i64 %97
  store %struct.bgx* %92, %struct.bgx** %98, align 8
  br label %116

99:                                               ; preds = %63
  %100 = load %struct.bgx*, %struct.bgx** %8, align 8
  %101 = getelementptr inbounds %struct.bgx, %struct.bgx* %100, i32 0, i32 2
  store i32 1, i32* %101, align 8
  %102 = load %struct.bgx*, %struct.bgx** %8, align 8
  %103 = getelementptr inbounds %struct.bgx, %struct.bgx* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load i32, i32* @MAX_BGX_PER_CN81XX, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load %struct.bgx*, %struct.bgx** %8, align 8
  %107 = getelementptr inbounds %struct.bgx, %struct.bgx* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.bgx*, %struct.bgx** %8, align 8
  %109 = load %struct.bgx**, %struct.bgx*** @bgx_vnic, align 8
  %110 = load %struct.bgx*, %struct.bgx** %8, align 8
  %111 = getelementptr inbounds %struct.bgx, %struct.bgx* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.bgx*, %struct.bgx** %109, i64 %113
  store %struct.bgx* %108, %struct.bgx** %114, align 8
  %115 = call i32 (...) @xcv_init_hw()
  br label %116

116:                                              ; preds = %99, %72
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = load i32, i32* @PCI_SUBSYSTEM_ID, align 4
  %119 = call i32 @pci_read_config_word(%struct.pci_dev* %117, i32 %118, i64* %10)
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* @PCI_SUBSYS_DEVID_81XX_BGX, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %132, label %123

123:                                              ; preds = %116
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* @PCI_SUBSYS_DEVID_83XX_BGX, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load %struct.bgx*, %struct.bgx** %8, align 8
  %129 = getelementptr inbounds %struct.bgx, %struct.bgx* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %135

132:                                              ; preds = %127, %116
  %133 = load %struct.bgx*, %struct.bgx** %8, align 8
  %134 = getelementptr inbounds %struct.bgx, %struct.bgx* %133, i32 0, i32 3
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %127, %123
  %136 = load %struct.bgx*, %struct.bgx** %8, align 8
  %137 = call i32 @bgx_get_qlm_mode(%struct.bgx* %136)
  %138 = load %struct.bgx*, %struct.bgx** %8, align 8
  %139 = call i32 @bgx_init_phy(%struct.bgx* %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %179

143:                                              ; preds = %135
  %144 = load %struct.bgx*, %struct.bgx** %8, align 8
  %145 = call i32 @bgx_init_hw(%struct.bgx* %144)
  store i64 0, i64* %9, align 8
  br label %146

146:                                              ; preds = %175, %143
  %147 = load i64, i64* %9, align 8
  %148 = load %struct.bgx*, %struct.bgx** %8, align 8
  %149 = getelementptr inbounds %struct.bgx, %struct.bgx* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp slt i64 %147, %150
  br i1 %151, label %152, label %178

152:                                              ; preds = %146
  %153 = load %struct.bgx*, %struct.bgx** %8, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @bgx_lmac_enable(%struct.bgx* %153, i64 %154)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %152
  %159 = load %struct.device*, %struct.device** %7, align 8
  %160 = load %struct.bgx*, %struct.bgx** %8, align 8
  %161 = getelementptr inbounds %struct.bgx, %struct.bgx* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i64, i64* %9, align 8
  %164 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %162, i64 %163)
  br label %165

165:                                              ; preds = %168, %158
  %166 = load i64, i64* %9, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.bgx*, %struct.bgx** %8, align 8
  %170 = load i64, i64* %9, align 8
  %171 = add nsw i64 %170, -1
  store i64 %171, i64* %9, align 8
  %172 = call i32 @bgx_lmac_disable(%struct.bgx* %169, i64 %171)
  br label %165

173:                                              ; preds = %165
  br label %179

174:                                              ; preds = %152
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %9, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %9, align 8
  br label %146

178:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %195

179:                                              ; preds = %173, %142
  %180 = load %struct.bgx**, %struct.bgx*** @bgx_vnic, align 8
  %181 = load %struct.bgx*, %struct.bgx** %8, align 8
  %182 = getelementptr inbounds %struct.bgx, %struct.bgx* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.bgx*, %struct.bgx** %180, i64 %184
  store %struct.bgx* null, %struct.bgx** %185, align 8
  br label %186

186:                                              ; preds = %179, %58
  %187 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %188 = call i32 @pci_release_regions(%struct.pci_dev* %187)
  br label %189

189:                                              ; preds = %186, %44
  %190 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %191 = call i32 @pci_disable_device(%struct.pci_dev* %190)
  %192 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %193 = call i32 @pci_set_drvdata(%struct.pci_dev* %192, %struct.bgx* null)
  %194 = load i32, i32* %6, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %189, %178, %32, %18
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.bgx* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.bgx*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @set_max_bgx_per_node(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @nic_get_node_id(%struct.pci_dev*) #1

declare dso_local i32 @xcv_init_hw(...) #1

declare dso_local i32 @bgx_get_qlm_mode(%struct.bgx*) #1

declare dso_local i32 @bgx_init_phy(%struct.bgx*) #1

declare dso_local i32 @bgx_init_hw(%struct.bgx*) #1

declare dso_local i32 @bgx_lmac_enable(%struct.bgx*, i64) #1

declare dso_local i32 @bgx_lmac_disable(%struct.bgx*, i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
