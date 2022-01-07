; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_init_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_init_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.intel_spi_boardinfo* }
%struct.intel_spi_boardinfo = type { i32, i32 }
%struct.pci_dev = type { i32, %struct.pci_bus* }
%struct.pci_bus = type { i32 }
%struct.lpc_ich_priv = type { i64 }

@intel_spi_res = common dso_local global %struct.resource* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lpc_chipset_info = common dso_local global %struct.TYPE_5__* null, align 8
@SPIBASE_BYT = common dso_local global i32 0, align 4
@SPIBASE_BYT_EN = common dso_local global i32 0, align 4
@SPIBASE_BYT_SZ = common dso_local global i32 0, align 4
@RCBABASE = common dso_local global i32 0, align 4
@SPIBASE_LPT_SZ = common dso_local global i32 0, align 4
@SPIBASE_LPT = common dso_local global i32 0, align 4
@BCR = common dso_local global i32 0, align 4
@BCR_WPD = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@SPIBASE_APL_SZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@lpc_ich_spi_cell = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @lpc_ich_init_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_ich_init_spi(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.lpc_ich_priv*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.intel_spi_boardinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_bus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev* %13)
  store %struct.lpc_ich_priv* %14, %struct.lpc_ich_priv** %4, align 8
  %15 = load %struct.resource*, %struct.resource** @intel_spi_res, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i64 0
  store %struct.resource* %16, %struct.resource** %5, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.intel_spi_boardinfo* @devm_kzalloc(i32* %18, i32 8, i32 %19)
  store %struct.intel_spi_boardinfo* %20, %struct.intel_spi_boardinfo** %6, align 8
  %21 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %6, align 8
  %22 = icmp ne %struct.intel_spi_boardinfo* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %163

26:                                               ; preds = %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lpc_chipset_info, align 8
  %28 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %4, align 8
  %29 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %6, align 8
  %35 = getelementptr inbounds %struct.intel_spi_boardinfo, %struct.intel_spi_boardinfo* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %6, align 8
  %37 = getelementptr inbounds %struct.intel_spi_boardinfo, %struct.intel_spi_boardinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %146 [
    i32 129, label %39
    i32 128, label %64
    i32 130, label %101
  ]

39:                                               ; preds = %26
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = load i32, i32* @SPIBASE_BYT, align 4
  %42 = call i32 @pci_read_config_dword(%struct.pci_dev* %40, i32 %41, i32* %7)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SPIBASE_BYT_EN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SPIBASE_BYT_SZ, align 4
  %50 = sub nsw i32 %49, 1
  %51 = xor i32 %50, -1
  %52 = and i32 %48, %51
  %53 = load %struct.resource*, %struct.resource** %5, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SPIBASE_BYT_SZ, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.resource*, %struct.resource** %5, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %47, %39
  br label %149

64:                                               ; preds = %26
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = load i32, i32* @RCBABASE, align 4
  %67 = call i32 @pci_read_config_dword(%struct.pci_dev* %65, i32 %66, i32* %8)
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @SPIBASE_LPT_SZ, align 4
  %74 = call i32 @round_down(i32 %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @SPIBASE_LPT, align 4
  %77 = add nsw i32 %75, %76
  %78 = load %struct.resource*, %struct.resource** %5, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.resource*, %struct.resource** %5, align 8
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SPIBASE_LPT_SZ, align 4
  %84 = add nsw i32 %82, %83
  %85 = sub nsw i32 %84, 1
  %86 = load %struct.resource*, %struct.resource** %5, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %89 = load i32, i32* @BCR, align 4
  %90 = call i32 @pci_read_config_dword(%struct.pci_dev* %88, i32 %89, i32* %9)
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @BCR_WPD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %6, align 8
  %99 = getelementptr inbounds %struct.intel_spi_boardinfo, %struct.intel_spi_boardinfo* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %71, %64
  br label %149

101:                                              ; preds = %26
  %102 = call i32 @PCI_DEVFN(i32 13, i32 0)
  store i32 %102, i32* %10, align 4
  %103 = call i32 @PCI_DEVFN(i32 13, i32 2)
  store i32 %103, i32* %11, align 4
  %104 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 1
  %106 = load %struct.pci_bus*, %struct.pci_bus** %105, align 8
  store %struct.pci_bus* %106, %struct.pci_bus** %12, align 8
  %107 = load %struct.pci_bus*, %struct.pci_bus** %12, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %107, i32 %108, i32 225, i32 0)
  %110 = load %struct.pci_bus*, %struct.pci_bus** %12, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %113 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %110, i32 %111, i32 %112, i32* %7)
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %142

116:                                              ; preds = %101
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, -16
  %119 = load %struct.resource*, %struct.resource** %5, align 8
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.resource*, %struct.resource** %5, align 8
  %122 = getelementptr inbounds %struct.resource, %struct.resource* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SPIBASE_APL_SZ, align 4
  %125 = add nsw i32 %123, %124
  %126 = sub nsw i32 %125, 1
  %127 = load %struct.resource*, %struct.resource** %5, align 8
  %128 = getelementptr inbounds %struct.resource, %struct.resource* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.pci_bus*, %struct.pci_bus** %12, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @BCR, align 4
  %132 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %129, i32 %130, i32 %131, i32* %9)
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @BCR_WPD, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %6, align 8
  %141 = getelementptr inbounds %struct.intel_spi_boardinfo, %struct.intel_spi_boardinfo* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %116, %101
  %143 = load %struct.pci_bus*, %struct.pci_bus** %12, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %143, i32 %144, i32 225, i32 1)
  br label %149

146:                                              ; preds = %26
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %163

149:                                              ; preds = %142, %100, %63
  %150 = load %struct.resource*, %struct.resource** %5, align 8
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* @ENODEV, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %2, align 4
  br label %163

157:                                              ; preds = %149
  %158 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %6, align 8
  store %struct.intel_spi_boardinfo* %158, %struct.intel_spi_boardinfo** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpc_ich_spi_cell, i32 0, i32 1), align 8
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpc_ich_spi_cell, i32 0, i32 0), align 8
  %159 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 0
  %161 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %162 = call i32 @mfd_add_devices(i32* %160, i32 %161, %struct.TYPE_4__* @lpc_ich_spi_cell, i32 1, i32* null, i32 0, i32* null)
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %157, %154, %146, %23
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.intel_spi_boardinfo* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_bus_write_config_byte(%struct.pci_bus*, i32, i32, i32) #1

declare dso_local i32 @pci_bus_read_config_dword(%struct.pci_bus*, i32, i32, i32*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, %struct.TYPE_4__*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
