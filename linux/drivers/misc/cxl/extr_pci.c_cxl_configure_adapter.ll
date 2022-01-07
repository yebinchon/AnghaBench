; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_configure_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_configure_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}*, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.pci_dev = type { i32 }

@cxl_release_adapter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pci_enable_device failed: %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Tunneled operations unsupported\0A\00", align 1
@OPAL_PHB_CAPI_MODE_SNOOP_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, %struct.pci_dev*)* @cxl_configure_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxl_configure_adapter(%struct.cxl* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load %struct.cxl*, %struct.cxl** %4, align 8
  %10 = getelementptr inbounds %struct.cxl, %struct.cxl* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32* %8, i32** %11, align 8
  %12 = load i32, i32* @cxl_release_adapter, align 4
  %13 = load %struct.cxl*, %struct.cxl** %4, align 8
  %14 = getelementptr inbounds %struct.cxl, %struct.cxl* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load %struct.cxl*, %struct.cxl** %4, align 8
  %18 = call i32 @pci_set_drvdata(%struct.pci_dev* %16, %struct.cxl* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = call i32 @pci_enable_device(%struct.pci_dev* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %140

29:                                               ; preds = %2
  %30 = load %struct.cxl*, %struct.cxl** %4, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = call i32 @cxl_read_vsec(%struct.cxl* %30, %struct.pci_dev* %31)
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %140

36:                                               ; preds = %29
  %37 = load %struct.cxl*, %struct.cxl** %4, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = call i32 @cxl_vsec_looks_ok(%struct.cxl* %37, %struct.pci_dev* %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %140

43:                                               ; preds = %36
  %44 = load %struct.cxl*, %struct.cxl** %4, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = call i32 @cxl_fixup_malformed_tlp(%struct.cxl* %44, %struct.pci_dev* %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = call i32 @setup_cxl_bars(%struct.pci_dev* %47)
  store i32 %48, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %140

52:                                               ; preds = %43
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = call i32 @switch_card_to_cxl(%struct.pci_dev* %53)
  store i32 %54, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %140

58:                                               ; preds = %52
  %59 = load %struct.cxl*, %struct.cxl** %4, align 8
  %60 = call i32 @cxl_update_image_control(%struct.cxl* %59)
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %140

64:                                               ; preds = %58
  %65 = load %struct.cxl*, %struct.cxl** %4, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = call i32 @cxl_map_adapter_regs(%struct.cxl* %65, %struct.pci_dev* %66)
  store i32 %67, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %140

71:                                               ; preds = %64
  %72 = load %struct.cxl*, %struct.cxl** %4, align 8
  %73 = call i32 @sanitise_adapter_regs(%struct.cxl* %72)
  store i32 %73, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %136

76:                                               ; preds = %71
  %77 = load %struct.cxl*, %struct.cxl** %4, align 8
  %78 = getelementptr inbounds %struct.cxl, %struct.cxl* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = bitcast {}** %82 to i32 (%struct.cxl*, %struct.pci_dev*)**
  %84 = load i32 (%struct.cxl*, %struct.pci_dev*)*, i32 (%struct.cxl*, %struct.pci_dev*)** %83, align 8
  %85 = load %struct.cxl*, %struct.cxl** %4, align 8
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = call i32 %84(%struct.cxl* %85, %struct.pci_dev* %86)
  store i32 %87, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %136

90:                                               ; preds = %76
  %91 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %92 = call i32 @pci_set_master(%struct.pci_dev* %91)
  %93 = load %struct.cxl*, %struct.cxl** %4, align 8
  %94 = getelementptr inbounds %struct.cxl, %struct.cxl* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = call i64 (...) @cxl_is_power9()
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = call i64 @pnv_pci_set_tunnel_bar(%struct.pci_dev* %98, i32 -536870912, i32 1)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = call i32 @dev_info(i32* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %108

105:                                              ; preds = %97
  %106 = load %struct.cxl*, %struct.cxl** %4, align 8
  %107 = getelementptr inbounds %struct.cxl, %struct.cxl* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %101
  br label %109

109:                                              ; preds = %108, %90
  %110 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %111 = load %struct.cxl*, %struct.cxl** %4, align 8
  %112 = getelementptr inbounds %struct.cxl, %struct.cxl* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @pnv_phb_to_cxl_mode(%struct.pci_dev* %110, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %136

121:                                              ; preds = %109
  %122 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %123 = load i32, i32* @OPAL_PHB_CAPI_MODE_SNOOP_ON, align 4
  %124 = call i32 @pnv_phb_to_cxl_mode(%struct.pci_dev* %122, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %136

127:                                              ; preds = %121
  %128 = load %struct.cxl*, %struct.cxl** %4, align 8
  %129 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %130 = call i32 @cxl_setup_psl_timebase(%struct.cxl* %128, %struct.pci_dev* %129)
  %131 = load %struct.cxl*, %struct.cxl** %4, align 8
  %132 = call i32 @cxl_native_register_psl_err_irq(%struct.cxl* %131)
  store i32 %132, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %136

135:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %140

136:                                              ; preds = %134, %126, %120, %89, %75
  %137 = load %struct.cxl*, %struct.cxl** %4, align 8
  %138 = call i32 @cxl_unmap_adapter_regs(%struct.cxl* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %135, %69, %62, %56, %50, %41, %34, %23
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.cxl*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @cxl_read_vsec(%struct.cxl*, %struct.pci_dev*) #1

declare dso_local i32 @cxl_vsec_looks_ok(%struct.cxl*, %struct.pci_dev*) #1

declare dso_local i32 @cxl_fixup_malformed_tlp(%struct.cxl*, %struct.pci_dev*) #1

declare dso_local i32 @setup_cxl_bars(%struct.pci_dev*) #1

declare dso_local i32 @switch_card_to_cxl(%struct.pci_dev*) #1

declare dso_local i32 @cxl_update_image_control(%struct.cxl*) #1

declare dso_local i32 @cxl_map_adapter_regs(%struct.cxl*, %struct.pci_dev*) #1

declare dso_local i32 @sanitise_adapter_regs(%struct.cxl*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @cxl_is_power9(...) #1

declare dso_local i64 @pnv_pci_set_tunnel_bar(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pnv_phb_to_cxl_mode(%struct.pci_dev*, i32) #1

declare dso_local i32 @cxl_setup_psl_timebase(%struct.cxl*, %struct.pci_dev*) #1

declare dso_local i32 @cxl_native_register_psl_err_irq(%struct.cxl*) #1

declare dso_local i32 @cxl_unmap_adapter_regs(%struct.cxl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
