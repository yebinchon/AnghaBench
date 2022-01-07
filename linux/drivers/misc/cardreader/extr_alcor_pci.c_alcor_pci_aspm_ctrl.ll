; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_alcor_pci.c_alcor_pci_aspm_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_alcor_pci.c_alcor_pci_aspm_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_pci_priv = type { i32, i32, i32, i32, %struct.pci_dev*, %struct.pci_dev*, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"pci_cap_off: %x, parent_cap_off: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"aspm_ctrl == 0\0A\00", align 1
@ALCOR_PCIE_LINK_CTRL_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_pci_priv*, i32)* @alcor_pci_aspm_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_pci_aspm_ctrl(%struct.alcor_pci_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.alcor_pci_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.alcor_pci_priv* %0, %struct.alcor_pci_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %11 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %16 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %21 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %24 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %27 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_dbg(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  br label %96

30:                                               ; preds = %14
  %31 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %32 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %96

36:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %41 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %47 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %96

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %36
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %93, %51
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %96

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %60 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %59, i32 0, i32 5
  %61 = load %struct.pci_dev*, %struct.pci_dev** %60, align 8
  store %struct.pci_dev* %61, %struct.pci_dev** %5, align 8
  %62 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %63 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ALCOR_PCIE_LINK_CTRL_OFFSET, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %8, align 4
  br label %76

67:                                               ; preds = %55
  %68 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %69 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %68, i32 0, i32 4
  %70 = load %struct.pci_dev*, %struct.pci_dev** %69, align 8
  store %struct.pci_dev* %70, %struct.pci_dev** %5, align 8
  %71 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %72 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ALCOR_PCIE_LINK_CTRL_OFFSET, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %67, %58
  %77 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @pci_read_config_dword(%struct.pci_dev* %77, i32 %78, i32* %9)
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, -4
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %84 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %82, %85
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @pci_write_config_byte(%struct.pci_dev* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %76
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %52

96:                                               ; preds = %19, %35, %45, %52
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
