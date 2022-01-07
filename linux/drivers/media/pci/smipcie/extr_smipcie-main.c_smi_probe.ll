; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.smi_dev = type { i32, i32*, %struct.smi_cfg_info*, i32, %struct.pci_dev*, i32 }
%struct.smi_cfg_info = type { i64, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"card detected: %s\0A\00", align 1
@smi_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"SMI_PCIE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @smi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.smi_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i64 @pci_enable_device(%struct.pci_dev* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %200

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.smi_dev* @kzalloc(i32 48, i32 %17)
  store %struct.smi_dev* %18, %struct.smi_dev** %6, align 8
  %19 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %20 = icmp ne %struct.smi_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %196

24:                                               ; preds = %16
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %27 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %26, i32 0, i32 4
  store %struct.pci_dev* %25, %struct.pci_dev** %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %30 = call i32 @pci_set_drvdata(%struct.pci_dev* %28, %struct.smi_dev* %29)
  %31 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.smi_cfg_info*
  %35 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %36 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %35, i32 0, i32 2
  store %struct.smi_cfg_info* %34, %struct.smi_cfg_info** %36, align 8
  %37 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %38 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %37, i32 0, i32 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %38, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 1
  %41 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %42 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %41, i32 0, i32 2
  %43 = load %struct.smi_cfg_info*, %struct.smi_cfg_info** %42, align 8
  %44 = getelementptr inbounds %struct.smi_cfg_info, %struct.smi_cfg_info* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32*, i8*, ...) @dev_info(i32* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %48 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %47, i32 0, i32 2
  %49 = load %struct.smi_cfg_info*, %struct.smi_cfg_info** %48, align 8
  %50 = getelementptr inbounds %struct.smi_cfg_info, %struct.smi_cfg_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %53 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %55 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %54, i32 0, i32 4
  %56 = load %struct.pci_dev*, %struct.pci_dev** %55, align 8
  %57 = call i32 @pci_resource_start(%struct.pci_dev* %56, i32 0)
  %58 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %59 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %58, i32 0, i32 4
  %60 = load %struct.pci_dev*, %struct.pci_dev** %59, align 8
  %61 = call i32 @pci_resource_len(%struct.pci_dev* %60, i32 0)
  %62 = call i32 @ioremap(i32 %57, i32 %61)
  %63 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %64 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %66 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %24
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %191

72:                                               ; preds = %24
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = call i32 @DMA_BIT_MASK(i32 32)
  %75 = call i32 @pci_set_dma_mask(%struct.pci_dev* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %186

79:                                               ; preds = %72
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = call i32 @pci_set_master(%struct.pci_dev* %80)
  %82 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %83 = call i32 @smi_hw_init(%struct.smi_dev* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %186

87:                                               ; preds = %79
  %88 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %89 = call i32 @smi_i2c_init(%struct.smi_dev* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %186

93:                                               ; preds = %87
  %94 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %95 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %94, i32 0, i32 2
  %96 = load %struct.smi_cfg_info*, %struct.smi_cfg_info** %95, align 8
  %97 = getelementptr inbounds %struct.smi_cfg_info, %struct.smi_cfg_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %93
  %101 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %102 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %103 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = call i32 @smi_port_attach(%struct.smi_dev* %101, i32* %105, i32 0)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %183

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %93
  %112 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %113 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %112, i32 0, i32 2
  %114 = load %struct.smi_cfg_info*, %struct.smi_cfg_info** %113, align 8
  %115 = getelementptr inbounds %struct.smi_cfg_info, %struct.smi_cfg_info* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %111
  %119 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %120 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %121 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = call i32 @smi_port_attach(%struct.smi_dev* %119, i32* %123, i32 1)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %169

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %111
  %130 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %131 = call i32 @smi_ir_init(%struct.smi_dev* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %155

135:                                              ; preds = %129
  %136 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %137 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %136, i32 0, i32 4
  %138 = load %struct.pci_dev*, %struct.pci_dev** %137, align 8
  %139 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @smi_irq_handler, align 4
  %142 = load i32, i32* @IRQF_SHARED, align 4
  %143 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %144 = call i32 @request_irq(i32 %140, i32 %141, i32 %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.smi_dev* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %135
  br label %152

148:                                              ; preds = %135
  %149 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %150 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %149, i32 0, i32 3
  %151 = call i32 @smi_ir_start(i32* %150)
  store i32 0, i32* %3, align 4
  br label %200

152:                                              ; preds = %147
  %153 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %154 = call i32 @smi_ir_exit(%struct.smi_dev* %153)
  br label %155

155:                                              ; preds = %152, %134
  %156 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %157 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %156, i32 0, i32 2
  %158 = load %struct.smi_cfg_info*, %struct.smi_cfg_info** %157, align 8
  %159 = getelementptr inbounds %struct.smi_cfg_info, %struct.smi_cfg_info* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %164 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = call i32 @smi_port_detach(i32* %166)
  br label %168

168:                                              ; preds = %162, %155
  br label %169

169:                                              ; preds = %168, %127
  %170 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %171 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %170, i32 0, i32 2
  %172 = load %struct.smi_cfg_info*, %struct.smi_cfg_info** %171, align 8
  %173 = getelementptr inbounds %struct.smi_cfg_info, %struct.smi_cfg_info* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %178 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = call i32 @smi_port_detach(i32* %180)
  br label %182

182:                                              ; preds = %176, %169
  br label %183

183:                                              ; preds = %182, %109
  %184 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %185 = call i32 @smi_i2c_exit(%struct.smi_dev* %184)
  br label %186

186:                                              ; preds = %183, %92, %86, %78
  %187 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %188 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @iounmap(i32 %189)
  br label %191

191:                                              ; preds = %186, %69
  %192 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %193 = call i32 @pci_set_drvdata(%struct.pci_dev* %192, %struct.smi_dev* null)
  %194 = load %struct.smi_dev*, %struct.smi_dev** %6, align 8
  %195 = call i32 @kfree(%struct.smi_dev* %194)
  br label %196

196:                                              ; preds = %191, %21
  %197 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %198 = call i32 @pci_disable_device(%struct.pci_dev* %197)
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %196, %148, %13
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.smi_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.smi_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @smi_hw_init(%struct.smi_dev*) #1

declare dso_local i32 @smi_i2c_init(%struct.smi_dev*) #1

declare dso_local i32 @smi_port_attach(%struct.smi_dev*, i32*, i32) #1

declare dso_local i32 @smi_ir_init(%struct.smi_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.smi_dev*) #1

declare dso_local i32 @smi_ir_start(i32*) #1

declare dso_local i32 @smi_ir_exit(%struct.smi_dev*) #1

declare dso_local i32 @smi_port_detach(i32*) #1

declare dso_local i32 @smi_i2c_exit(%struct.smi_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.smi_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
