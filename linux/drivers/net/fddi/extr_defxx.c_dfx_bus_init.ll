; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_6__ = type { %struct.net_device*, %struct.device* }
%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@DFX_MMIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"In dfx_bus_init...\0A\00", align 1
@PI_ESIC_K_SLOT_CNTRL = common dso_local global i64 0, align 8
@PI_ESIC_K_IO_CONFIG_STAT_0 = common dso_local global i64 0, align 8
@PI_CONFIG_STAT_0_M_IRQ = common dso_local global i32 0, align 4
@PI_CONFIG_STAT_0_V_IRQ = common dso_local global i32 0, align 4
@PI_ESIC_K_IO_ADD_CMP_0_1 = common dso_local global i64 0, align 8
@PI_DEFEA_K_CSR_IO = common dso_local global i32 0, align 4
@PI_ESIC_K_IO_ADD_CMP_0_0 = common dso_local global i64 0, align 8
@PI_IO_CMP_M_SLOT = common dso_local global i32 0, align 4
@PI_ESIC_K_IO_ADD_MASK_0_1 = common dso_local global i64 0, align 8
@PI_ESIC_K_CSR_IO_LEN = common dso_local global i32 0, align 4
@PI_ESIC_K_IO_ADD_MASK_0_0 = common dso_local global i64 0, align 8
@PI_ESIC_K_IO_ADD_CMP_1_1 = common dso_local global i64 0, align 8
@PI_DEFEA_K_BURST_HOLDOFF = common dso_local global i64 0, align 8
@PI_ESIC_K_IO_ADD_CMP_1_0 = common dso_local global i64 0, align 8
@PI_ESIC_K_IO_ADD_MASK_1_1 = common dso_local global i64 0, align 8
@PI_ESIC_K_BURST_HOLDOFF_LEN = common dso_local global i32 0, align 4
@PI_ESIC_K_IO_ADD_MASK_1_0 = common dso_local global i64 0, align 8
@PI_FUNCTION_CNTRL_M_IOCS1 = common dso_local global i32 0, align 4
@PI_FUNCTION_CNTRL_M_MEMCS1 = common dso_local global i32 0, align 4
@PI_FUNCTION_CNTRL_M_IOCS0 = common dso_local global i32 0, align 4
@PI_ESIC_K_FUNCTION_CNTRL = common dso_local global i64 0, align 8
@PI_SLOT_CNTRL_M_ENB = common dso_local global i32 0, align 4
@PI_BURST_HOLDOFF_M_MEM_MAP = common dso_local global i32 0, align 4
@PI_CONFIG_STAT_0_M_INT_ENB = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PFI_K_LAT_TIMER_MIN = common dso_local global i32 0, align 4
@PFI_K_LAT_TIMER_DEF = common dso_local global i32 0, align 4
@PFI_MODE_M_PDQ_INT_ENB = common dso_local global i32 0, align 4
@PFI_MODE_M_DMA_ENB = common dso_local global i32 0, align 4
@PFI_K_REG_MODE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dfx_bus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfx_bus_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.TYPE_6__* @netdev_priv(%struct.net_device* %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %3, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_is_pci(%struct.device* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @DFX_BUS_EISA(%struct.device* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @DFX_BUS_TC(%struct.device* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* @DFX_MMIO, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %25, %1
  %29 = phi i1 [ true, %1 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = call i32 @DBG_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store %struct.net_device* %32, %struct.net_device** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call %struct.TYPE_7__* @to_tc_dev(%struct.device* %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %28
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %187

47:                                               ; preds = %44
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call %struct.TYPE_8__* @to_eisa_device(%struct.device* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @PI_ESIC_K_SLOT_CNTRL, align 8
  %54 = add i64 %52, %53
  %55 = call i32 @outb(i32 0, i64 %54)
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @PI_ESIC_K_IO_CONFIG_STAT_0, align 8
  %58 = add i64 %56, %57
  %59 = call i32 @inb(i64 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @PI_CONFIG_STAT_0_M_IRQ, align 4
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @PI_CONFIG_STAT_0_V_IRQ, align 4
  %64 = load i32, i32* %9, align 4
  %65 = ashr i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  switch i32 %66, label %79 [
    i32 128, label %67
    i32 131, label %70
    i32 130, label %73
    i32 129, label %76
  ]

67:                                               ; preds = %47
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  store i32 9, i32* %69, align 4
  br label %79

70:                                               ; preds = %47
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  store i32 10, i32* %72, align 4
  br label %79

73:                                               ; preds = %47
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  store i32 11, i32* %75, align 4
  br label %79

76:                                               ; preds = %47
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  store i32 15, i32* %78, align 4
  br label %79

79:                                               ; preds = %47, %76, %73, %70, %67
  store i32 0, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @PI_ESIC_K_IO_ADD_CMP_0_1, align 8
  %83 = add i64 %81, %82
  %84 = call i32 @outb(i32 %80, i64 %83)
  %85 = load i32, i32* @PI_DEFEA_K_CSR_IO, align 4
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @PI_ESIC_K_IO_ADD_CMP_0_0, align 8
  %89 = add i64 %87, %88
  %90 = call i32 @outb(i32 %86, i64 %89)
  %91 = load i32, i32* @PI_IO_CMP_M_SLOT, align 4
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* @PI_ESIC_K_IO_ADD_MASK_0_1, align 8
  %95 = add i64 %93, %94
  %96 = call i32 @outb(i32 %92, i64 %95)
  %97 = load i32, i32* @PI_ESIC_K_CSR_IO_LEN, align 4
  %98 = sub nsw i32 %97, 1
  %99 = and i32 %98, -4
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @PI_ESIC_K_IO_ADD_MASK_0_0, align 8
  %103 = add i64 %101, %102
  %104 = call i32 @outb(i32 %100, i64 %103)
  store i32 0, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @PI_ESIC_K_IO_ADD_CMP_1_1, align 8
  %108 = add i64 %106, %107
  %109 = call i32 @outb(i32 %105, i64 %108)
  %110 = load i64, i64* @PI_DEFEA_K_BURST_HOLDOFF, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @PI_ESIC_K_IO_ADD_CMP_1_0, align 8
  %115 = add i64 %113, %114
  %116 = call i32 @outb(i32 %112, i64 %115)
  %117 = load i32, i32* @PI_IO_CMP_M_SLOT, align 4
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* @PI_ESIC_K_IO_ADD_MASK_1_1, align 8
  %121 = add i64 %119, %120
  %122 = call i32 @outb(i32 %118, i64 %121)
  %123 = load i32, i32* @PI_ESIC_K_BURST_HOLDOFF_LEN, align 4
  %124 = sub nsw i32 %123, 1
  %125 = and i32 %124, -4
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* @PI_ESIC_K_IO_ADD_MASK_1_0, align 8
  %129 = add i64 %127, %128
  %130 = call i32 @outb(i32 %126, i64 %129)
  %131 = load i32, i32* @PI_FUNCTION_CNTRL_M_IOCS1, align 4
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %79
  %135 = load i32, i32* @PI_FUNCTION_CNTRL_M_MEMCS1, align 4
  %136 = load i32, i32* %9, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %142

138:                                              ; preds = %79
  %139 = load i32, i32* @PI_FUNCTION_CNTRL_M_IOCS0, align 4
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %138, %134
  %143 = load i32, i32* %9, align 4
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* @PI_ESIC_K_FUNCTION_CNTRL, align 8
  %146 = add i64 %144, %145
  %147 = call i32 @outb(i32 %143, i64 %146)
  %148 = load i32, i32* @PI_SLOT_CNTRL_M_ENB, align 4
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* @PI_ESIC_K_SLOT_CNTRL, align 8
  %152 = add i64 %150, %151
  %153 = call i32 @outb(i32 %149, i64 %152)
  %154 = load i64, i64* %10, align 8
  %155 = load i64, i64* @PI_DEFEA_K_BURST_HOLDOFF, align 8
  %156 = add i64 %154, %155
  %157 = call i32 @inb(i64 %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %142
  %161 = load i32, i32* @PI_BURST_HOLDOFF_M_MEM_MAP, align 4
  %162 = load i32, i32* %9, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %9, align 4
  br label %169

164:                                              ; preds = %142
  %165 = load i32, i32* @PI_BURST_HOLDOFF_M_MEM_MAP, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %9, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %164, %160
  %170 = load i32, i32* %9, align 4
  %171 = load i64, i64* %10, align 8
  %172 = load i64, i64* @PI_DEFEA_K_BURST_HOLDOFF, align 8
  %173 = add i64 %171, %172
  %174 = call i32 @outb(i32 %170, i64 %173)
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* @PI_ESIC_K_IO_CONFIG_STAT_0, align 8
  %177 = add i64 %175, %176
  %178 = call i32 @inb(i64 %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* @PI_CONFIG_STAT_0_M_INT_ENB, align 4
  %180 = load i32, i32* %9, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i64, i64* %10, align 8
  %184 = load i64, i64* @PI_ESIC_K_IO_CONFIG_STAT_0, align 8
  %185 = add i64 %183, %184
  %186 = call i32 @outb(i32 %182, i64 %185)
  br label %187

187:                                              ; preds = %169, %44
  %188 = load i32, i32* %5, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %218

190:                                              ; preds = %187
  %191 = load %struct.device*, %struct.device** %4, align 8
  %192 = call %struct.pci_dev* @to_pci_dev(%struct.device* %191)
  store %struct.pci_dev* %192, %struct.pci_dev** %11, align 8
  %193 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %194 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.net_device*, %struct.net_device** %2, align 8
  %197 = getelementptr inbounds %struct.net_device, %struct.net_device* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %199 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %200 = call i32 @pci_read_config_byte(%struct.pci_dev* %198, i32 %199, i32* %9)
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @PFI_K_LAT_TIMER_MIN, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %190
  %205 = load i32, i32* @PFI_K_LAT_TIMER_DEF, align 4
  store i32 %205, i32* %9, align 4
  %206 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %207 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @pci_write_config_byte(%struct.pci_dev* %206, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %204, %190
  %211 = load i32, i32* @PFI_MODE_M_PDQ_INT_ENB, align 4
  %212 = load i32, i32* @PFI_MODE_M_DMA_ENB, align 4
  %213 = or i32 %211, %212
  store i32 %213, i32* %9, align 4
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %215 = load i32, i32* @PFI_K_REG_MODE_CTRL, align 4
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @dfx_port_write_long(%struct.TYPE_6__* %214, i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %210, %187
  ret void
}

declare dso_local %struct.TYPE_6__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @DFX_BUS_EISA(%struct.device*) #1

declare dso_local i32 @DFX_BUS_TC(%struct.device*) #1

declare dso_local i32 @DBG_printk(i8*) #1

declare dso_local %struct.TYPE_7__* @to_tc_dev(%struct.device*) #1

declare dso_local %struct.TYPE_8__* @to_eisa_device(%struct.device*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dfx_port_write_long(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
