; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_pll_conf = type { i32, i32, i32, i32 }
%struct.alcor_sdmmc_host = type { i32, %struct.alcor_pci_priv* }
%struct.alcor_pci_priv = type { i32 }

@AU6601_CLK_SELECT = common dso_local global i32 0, align 4
@alcor_pll_cfg = common dso_local global %struct.alcor_pll_conf* null, align 8
@AU6601_CLK_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"set freq %d cal freq %d, use div %d, mod %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_sdmmc_host*, i32)* @alcor_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_set_clock(%struct.alcor_sdmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.alcor_sdmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alcor_pci_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.alcor_pll_conf*, align 8
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %14, i32 0, i32 1
  %16 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %15, align 8
  store %struct.alcor_pci_priv* %16, %struct.alcor_pci_priv** %5, align 8
  store i32 2147483647, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %5, align 8
  %21 = load i32, i32* @AU6601_CLK_SELECT, align 4
  %22 = call i32 @alcor_write16(%struct.alcor_pci_priv* %20, i32 0, i32 %21)
  br label %97

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %73, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.alcor_pll_conf*, %struct.alcor_pll_conf** @alcor_pll_cfg, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.alcor_pll_conf* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %76

29:                                               ; preds = %24
  %30 = load %struct.alcor_pll_conf*, %struct.alcor_pll_conf** @alcor_pll_cfg, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.alcor_pll_conf, %struct.alcor_pll_conf* %30, i64 %32
  store %struct.alcor_pll_conf* %33, %struct.alcor_pll_conf** %13, align 8
  %34 = load %struct.alcor_pll_conf*, %struct.alcor_pll_conf** %13, align 8
  %35 = getelementptr inbounds %struct.alcor_pll_conf, %struct.alcor_pll_conf* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i8* @DIV_ROUND_UP(i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load %struct.alcor_pll_conf*, %struct.alcor_pll_conf** %13, align 8
  %41 = getelementptr inbounds %struct.alcor_pll_conf, %struct.alcor_pll_conf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.alcor_pll_conf*, %struct.alcor_pll_conf** %13, align 8
  %48 = getelementptr inbounds %struct.alcor_pll_conf, %struct.alcor_pll_conf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ugt i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %29
  br label %73

52:                                               ; preds = %45
  %53 = load %struct.alcor_pll_conf*, %struct.alcor_pll_conf** %13, align 8
  %54 = getelementptr inbounds %struct.alcor_pll_conf, %struct.alcor_pll_conf* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i8* @DIV_ROUND_UP(i32 %55, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub i32 %59, %60
  %62 = call i32 @abs(i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %52
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %7, align 4
  %68 = load %struct.alcor_pll_conf*, %struct.alcor_pll_conf** %13, align 8
  %69 = getelementptr inbounds %struct.alcor_pll_conf, %struct.alcor_pll_conf* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %66, %52
  br label %73

73:                                               ; preds = %72, %51
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %24

76:                                               ; preds = %24
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 1
  %79 = shl i32 %78, 8
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @AU6601_CLK_ENABLE, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %86 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @AU6601_CLK_SELECT, align 4
  %96 = call i32 @alcor_write16(%struct.alcor_pci_priv* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %76, %19
  ret void
}

declare dso_local i32 @alcor_write16(%struct.alcor_pci_priv*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.alcor_pll_conf*) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
