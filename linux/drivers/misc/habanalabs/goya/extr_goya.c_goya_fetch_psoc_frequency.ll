; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_fetch_psoc_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_fetch_psoc_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i8*, i8*, i8*, i8* }

@mmPSOC_PCI_PLL_NR = common dso_local global i32 0, align 4
@mmPSOC_PCI_PLL_NF = common dso_local global i32 0, align 4
@mmPSOC_PCI_PLL_OD = common dso_local global i32 0, align 4
@mmPSOC_PCI_PLL_DIV_FACTOR_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @goya_fetch_psoc_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_fetch_psoc_frequency(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.asic_fixed_properties*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %4 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %5 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %4, i32 0, i32 0
  store %struct.asic_fixed_properties* %5, %struct.asic_fixed_properties** %3, align 8
  %6 = load i32, i32* @mmPSOC_PCI_PLL_NR, align 4
  %7 = call i8* @RREG32(i32 %6)
  %8 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %9 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load i32, i32* @mmPSOC_PCI_PLL_NF, align 4
  %11 = call i8* @RREG32(i32 %10)
  %12 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %13 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @mmPSOC_PCI_PLL_OD, align 4
  %15 = call i8* @RREG32(i32 %14)
  %16 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %17 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @mmPSOC_PCI_PLL_DIV_FACTOR_1, align 4
  %19 = call i8* @RREG32(i32 %18)
  %20 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %21 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  ret void
}

declare dso_local i8* @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
