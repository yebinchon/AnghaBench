; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ics932s401.c_calculate_pci_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ics932s401.c_calculate_pci_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ics932s401_data = type { i32* }

@ICS932S401_REG_SRC_M_CTRL = common dso_local global i64 0, align 8
@ICS932S401_M_MASK = common dso_local global i32 0, align 4
@ICS932S401_REG_SRC_N_CTRL = common dso_local global i64 0, align 8
@BASE_CLOCK = common dso_local global i32 0, align 4
@divisors = common dso_local global i32* null, align 8
@ICS932S401_REG_PCISRC_DIVISOR = common dso_local global i64 0, align 8
@ICS932S401_PCI_DIVISOR_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ics932s401_data*)* @calculate_pci_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_pci_freq(%struct.ics932s401_data* %0) #0 {
  %2 = alloca %struct.ics932s401_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ics932s401_data* %0, %struct.ics932s401_data** %2, align 8
  %6 = load %struct.ics932s401_data*, %struct.ics932s401_data** %2, align 8
  %7 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @ICS932S401_REG_SRC_M_CTRL, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ICS932S401_M_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.ics932s401_data*, %struct.ics932s401_data** %2, align 8
  %15 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @ICS932S401_REG_SRC_N_CTRL, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ics932s401_data*, %struct.ics932s401_data** %2, align 8
  %21 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @ICS932S401_REG_SRC_M_CTRL, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 128
  %27 = shl i32 %26, 1
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.ics932s401_data*, %struct.ics932s401_data** %2, align 8
  %31 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @ICS932S401_REG_SRC_M_CTRL, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 64
  %37 = shl i32 %36, 3
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @BASE_CLOCK, align 4
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 8
  %43 = mul nsw i32 %40, %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 2
  %46 = sdiv i32 %43, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32*, i32** @divisors, align 8
  %48 = load %struct.ics932s401_data*, %struct.ics932s401_data** %2, align 8
  %49 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @ICS932S401_REG_PCISRC_DIVISOR, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* @ICS932S401_PCI_DIVISOR_SHIFT, align 8
  %55 = trunc i64 %54 to i32
  %56 = ashr i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %47, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sdiv i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
