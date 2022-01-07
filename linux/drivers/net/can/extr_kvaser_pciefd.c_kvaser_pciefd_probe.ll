; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.kvaser_pciefd = type { i64, %struct.pci_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KVASER_PCIEFD_DRV_NAME = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_IRQ_DPD0 = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_IRQ_DPD1 = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_IRQ_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SRB_IRQ_DOF0 = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_IRQ_DOF1 = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_IRQ_DUF0 = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_IRQ_DUF1 = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_IEN_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_IRQ_ALL_MSK = common dso_local global i32 0, align 4
@KVASER_PCIEFD_IRQ_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_IEN_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SRB_CMD_RDB0 = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_CMD_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SRB_CMD_RDB1 = common dso_local global i32 0, align 4
@kvaser_pciefd_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @kvaser_pciefd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvaser_pciefd*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.kvaser_pciefd* @devm_kzalloc(i32* %9, i32 16, i32 %10)
  store %struct.kvaser_pciefd* %11, %struct.kvaser_pciefd** %7, align 8
  %12 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %13 = icmp ne %struct.kvaser_pciefd* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %176

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %20 = call i32 @pci_set_drvdata(%struct.pci_dev* %18, %struct.kvaser_pciefd* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %23 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %22, i32 0, i32 1
  store %struct.pci_dev* %21, %struct.pci_dev** %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @pci_enable_device(%struct.pci_dev* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %176

30:                                               ; preds = %17
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* @KVASER_PCIEFD_DRV_NAME, align 4
  %33 = call i32 @pci_request_regions(%struct.pci_dev* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %172

37:                                               ; preds = %30
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call i64 @pci_iomap(%struct.pci_dev* %38, i32 0, i32 0)
  %40 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %41 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %43 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %169

49:                                               ; preds = %37
  %50 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %51 = call i32 @kvaser_pciefd_setup_board(%struct.kvaser_pciefd* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %163

55:                                               ; preds = %49
  %56 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %57 = call i32 @kvaser_pciefd_setup_dma(%struct.kvaser_pciefd* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %163

61:                                               ; preds = %55
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = call i32 @pci_set_master(%struct.pci_dev* %62)
  %64 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %65 = call i32 @kvaser_pciefd_setup_can_ctrls(%struct.kvaser_pciefd* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %152

69:                                               ; preds = %61
  %70 = load i32, i32* @KVASER_PCIEFD_SRB_IRQ_DPD0, align 4
  %71 = load i32, i32* @KVASER_PCIEFD_SRB_IRQ_DPD1, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %74 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @KVASER_PCIEFD_SRB_IRQ_REG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @iowrite32(i32 %72, i64 %77)
  %79 = load i32, i32* @KVASER_PCIEFD_SRB_IRQ_DPD0, align 4
  %80 = load i32, i32* @KVASER_PCIEFD_SRB_IRQ_DPD1, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @KVASER_PCIEFD_SRB_IRQ_DOF0, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @KVASER_PCIEFD_SRB_IRQ_DOF1, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @KVASER_PCIEFD_SRB_IRQ_DUF0, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @KVASER_PCIEFD_SRB_IRQ_DUF1, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %91 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @KVASER_PCIEFD_SRB_IEN_REG, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @iowrite32(i32 %89, i64 %94)
  %96 = load i32, i32* @KVASER_PCIEFD_IRQ_ALL_MSK, align 4
  %97 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %98 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @KVASER_PCIEFD_IRQ_REG, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @iowrite32(i32 %96, i64 %101)
  %103 = load i32, i32* @KVASER_PCIEFD_IRQ_ALL_MSK, align 4
  %104 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %105 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @KVASER_PCIEFD_IEN_REG, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @iowrite32(i32 %103, i64 %108)
  %110 = load i32, i32* @KVASER_PCIEFD_SRB_CMD_RDB0, align 4
  %111 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %112 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @KVASER_PCIEFD_SRB_CMD_REG, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @iowrite32(i32 %110, i64 %115)
  %117 = load i32, i32* @KVASER_PCIEFD_SRB_CMD_RDB1, align 4
  %118 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %119 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @KVASER_PCIEFD_SRB_CMD_REG, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @iowrite32(i32 %117, i64 %122)
  %124 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %125 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %124, i32 0, i32 1
  %126 = load %struct.pci_dev*, %struct.pci_dev** %125, align 8
  %127 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @kvaser_pciefd_irq_handler, align 4
  %130 = load i32, i32* @IRQF_SHARED, align 4
  %131 = load i32, i32* @KVASER_PCIEFD_DRV_NAME, align 4
  %132 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %133 = call i32 @request_irq(i32 %128, i32 %129, i32 %130, i32 %131, %struct.kvaser_pciefd* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %69
  br label %152

137:                                              ; preds = %69
  %138 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %139 = call i32 @kvaser_pciefd_reg_candev(%struct.kvaser_pciefd* %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %144

143:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %176

144:                                              ; preds = %142
  %145 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %146 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %145, i32 0, i32 1
  %147 = load %struct.pci_dev*, %struct.pci_dev** %146, align 8
  %148 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %151 = call i32 @free_irq(i32 %149, %struct.kvaser_pciefd* %150)
  br label %152

152:                                              ; preds = %144, %136, %68
  %153 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %154 = call i32 @kvaser_pciefd_teardown_can_ctrls(%struct.kvaser_pciefd* %153)
  %155 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %156 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @KVASER_PCIEFD_SRB_CTRL_REG, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @iowrite32(i32 0, i64 %159)
  %161 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %162 = call i32 @pci_clear_master(%struct.pci_dev* %161)
  br label %163

163:                                              ; preds = %152, %60, %54
  %164 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %165 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %7, align 8
  %166 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @pci_iounmap(%struct.pci_dev* %164, i64 %167)
  br label %169

169:                                              ; preds = %163, %46
  %170 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %171 = call i32 @pci_release_regions(%struct.pci_dev* %170)
  br label %172

172:                                              ; preds = %169, %36
  %173 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %174 = call i32 @pci_disable_device(%struct.pci_dev* %173)
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %172, %143, %28, %14
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.kvaser_pciefd* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.kvaser_pciefd*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @kvaser_pciefd_setup_board(%struct.kvaser_pciefd*) #1

declare dso_local i32 @kvaser_pciefd_setup_dma(%struct.kvaser_pciefd*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @kvaser_pciefd_setup_can_ctrls(%struct.kvaser_pciefd*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.kvaser_pciefd*) #1

declare dso_local i32 @kvaser_pciefd_reg_candev(%struct.kvaser_pciefd*) #1

declare dso_local i32 @free_irq(i32, %struct.kvaser_pciefd*) #1

declare dso_local i32 @kvaser_pciefd_teardown_can_ctrls(%struct.kvaser_pciefd*) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
