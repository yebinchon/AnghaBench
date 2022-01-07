; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cb710/extr_core.c_cb710_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cb710/extr_core.c_cb710_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.cb710_chip = type { i32, i32, i32, %struct.pci_dev*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"PCI config[0x48] = 0x%08X\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CB710_SLOT_MMC = common dso_local global i32 0, align 4
@CB710_SLOT_MS = common dso_local global i32 0, align 4
@CB710_SLOT_SM = common dso_local global i32 0, align 4
@slot = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@cb710_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@cb710_ida = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"id %d, IO 0x%p, IRQ %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cb710-mmc\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"cb710-ms\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"cb710-sm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cb710_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.cb710_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @cb710_pci_configure(%struct.pci_dev* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %198

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pci_read_config_dword(%struct.pci_dev* %17, i32 72, i32* %7)
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, -2147483648
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, 1895825408
  %26 = call i32 @pci_write_config_dword(%struct.pci_dev* %23, i32 72, i32 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @pci_read_config_dword(%struct.pci_dev* %27, i32 72, i32* %7)
  br label %29

29:                                               ; preds = %22, %16
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 1879048192
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %198

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 28
  %43 = and i32 %42, 7
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @CB710_SLOT_MMC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %40
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @CB710_SLOT_MS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @CB710_SLOT_SM, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 1
  %70 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %71 = load i32, i32* @slot, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @struct_size(%struct.cb710_chip* %70, i32 %71, i32 %72)
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.cb710_chip* @devm_kzalloc(i32* %69, i32 %73, i32 %74)
  store %struct.cb710_chip* %75, %struct.cb710_chip** %6, align 8
  %76 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %77 = icmp ne %struct.cb710_chip* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %198

81:                                               ; preds = %67
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = call i32 @pcim_enable_device(%struct.pci_dev* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %198

88:                                               ; preds = %81
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = load i32, i32* @KBUILD_MODNAME, align 4
  %91 = call i32 @pcim_iomap_regions(%struct.pci_dev* %89, i32 1, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %198

96:                                               ; preds = %88
  %97 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %98 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %97, i32 0, i32 4
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %102 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %101, i32 0, i32 3
  store %struct.pci_dev* %100, %struct.pci_dev** %102, align 8
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = call i32* @pcim_iomap_table(%struct.pci_dev* %103)
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %108 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %111 = call i32 @pci_set_drvdata(%struct.pci_dev* %109, %struct.cb710_chip* %110)
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 1
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @cb710_irq_handler, align 4
  %118 = load i32, i32* @IRQF_SHARED, align 4
  %119 = load i32, i32* @KBUILD_MODNAME, align 4
  %120 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %121 = call i32 @devm_request_irq(i32* %113, i32 %116, i32 %117, i32 %118, i32 %119, %struct.cb710_chip* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %96
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %198

126:                                              ; preds = %96
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i32 @ida_alloc(i32* @cb710_ida, i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %198

133:                                              ; preds = %126
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %136 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 1
  %139 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %140 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %143 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dev_info(i32* %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %144, i32 %147)
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @CB710_SLOT_MMC, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %133
  %154 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %155 = load i32, i32* @CB710_SLOT_MMC, align 4
  %156 = call i32 @cb710_register_slot(%struct.cb710_chip* %154, i32 %155, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %3, align 4
  br label %198

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161, %133
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @CB710_SLOT_MS, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %169 = load i32, i32* @CB710_SLOT_MS, align 4
  %170 = call i32 @cb710_register_slot(%struct.cb710_chip* %168, i32 %169, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %193

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %162
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @CB710_SLOT_SM, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %182 = load i32, i32* @CB710_SLOT_SM, align 4
  %183 = call i32 @cb710_register_slot(%struct.cb710_chip* %181, i32 %182, i32 96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %189

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %187, %175
  store i32 0, i32* %3, align 4
  br label %198

189:                                              ; preds = %186
  %190 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %191 = load i32, i32* @CB710_SLOT_MS, align 4
  %192 = call i32 @cb710_unregister_slot(%struct.cb710_chip* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %173
  %194 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %195 = load i32, i32* @CB710_SLOT_MMC, align 4
  %196 = call i32 @cb710_unregister_slot(%struct.cb710_chip* %194, i32 %195)
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %193, %188, %159, %131, %124, %94, %86, %78, %37, %14
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @cb710_pci_configure(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local %struct.cb710_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.cb710_chip*, i32, i32) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.cb710_chip*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.cb710_chip*) #1

declare dso_local i32 @ida_alloc(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @cb710_register_slot(%struct.cb710_chip*, i32, i32, i8*) #1

declare dso_local i32 @cb710_unregister_slot(%struct.cb710_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
