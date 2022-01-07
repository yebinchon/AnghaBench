; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_debugfs_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_debugfs_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32*, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i32, i32 }

@CFG_BASE = common dso_local global i32 0, align 4
@CFG_SIZE = common dso_local global i32 0, align 4
@SRAM_BASE_ADDR = common dso_local global i32 0, align 4
@SRAM_SIZE = common dso_local global i32 0, align 4
@SRAM_CFG_BAR_ID = common dso_local global i64 0, align 8
@DRAM_PHYS_BASE = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i32 0, align 4
@DDR_BAR_ID = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@HOST_PHYS_BASE = common dso_local global i32 0, align 4
@pci_bus_type = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, i32, i32*)* @goya_debugfs_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_debugfs_read32(%struct.hl_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.asic_fixed_properties*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 1
  store %struct.asic_fixed_properties* %12, %struct.asic_fixed_properties** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CFG_BASE, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CFG_BASE, align 4
  %19 = load i32, i32* @CFG_SIZE, align 4
  %20 = add nsw i32 %18, %19
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @CFG_BASE, align 4
  %25 = sub nsw i32 %23, %24
  %26 = call i32 @RREG32(i32 %25)
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %129

28:                                               ; preds = %16, %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SRAM_BASE_ADDR, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SRAM_BASE_ADDR, align 4
  %35 = load i32, i32* @SRAM_SIZE, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %40 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @SRAM_CFG_BAR_ID, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SRAM_BASE_ADDR, align 4
  %47 = sub nsw i32 %45, %46
  %48 = add nsw i32 %44, %47
  %49 = call i32 @readl(i32 %48)
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  br label %128

51:                                               ; preds = %32, %28
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @DRAM_PHYS_BASE, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %108

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DRAM_PHYS_BASE, align 4
  %58 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %59 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %57, %61
  %63 = icmp slt i32 %56, %62
  br i1 %63, label %64, label %108

64:                                               ; preds = %55
  %65 = load i32, i32* @DRAM_PHYS_BASE, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %7, align 8
  %70 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 %72, 1
  %74 = xor i64 %73, -1
  %75 = and i64 %68, %74
  %76 = add i64 %66, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %10, align 4
  %78 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @goya_set_ddr_bar_base(%struct.hl_device* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @U64_MAX, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %64
  %85 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %86 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @DDR_BAR_ID, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %91, %92
  %94 = add nsw i32 %90, %93
  %95 = call i32 @readl(i32 %94)
  %96 = load i32*, i32** %6, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @goya_set_ddr_bar_base(%struct.hl_device* %97, i32 %98)
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %84, %64
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @U64_MAX, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %104, %100
  br label %127

108:                                              ; preds = %55, %51
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @HOST_PHYS_BASE, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = call i32 @iommu_present(i32* @pci_bus_type)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @HOST_PHYS_BASE, align 4
  %118 = sub nsw i32 %116, %117
  %119 = call i64 @phys_to_virt(i32 %118)
  %120 = inttoptr i64 %119 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %6, align 8
  store i32 %121, i32* %122, align 4
  br label %126

123:                                              ; preds = %112, %108
  %124 = load i32, i32* @EFAULT, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %123, %115
  br label %127

127:                                              ; preds = %126, %107
  br label %128

128:                                              ; preds = %127, %38
  br label %129

129:                                              ; preds = %128, %22
  %130 = load i32, i32* %9, align 4
  ret i32 %130
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @goya_set_ddr_bar_base(%struct.hl_device*, i32) #1

declare dso_local i32 @iommu_present(i32*) #1

declare dso_local i64 @phys_to_virt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
