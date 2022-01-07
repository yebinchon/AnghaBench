; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_alcor_pci.c_alcor_pci_init_check_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_alcor_pci.c_alcor_pci_init_check_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_pci_priv = type { i32, i32, i32, i32, i32, i32, %struct.pci_dev*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"pci_cap_off: %x, parent_cap_off: %x\0A\00", align 1
@ALCOR_PCIE_LINK_CAP_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"pdev_aspm_cap: %x, parent_aspm_cap: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ext_config_dev_aspm: %x, pdev_aspm_cap: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_pci_priv*)* @alcor_pci_init_check_aspm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_pci_init_check_aspm(%struct.alcor_pci_priv* %0) #0 {
  %2 = alloca %struct.alcor_pci_priv*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.alcor_pci_priv* %0, %struct.alcor_pci_priv** %2, align 8
  %7 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %8 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %9 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %8, i32 0, i32 7
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %11 = call i8* @alcor_pci_find_cap_offset(%struct.alcor_pci_priv* %7, %struct.pci_dev* %10)
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %14 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %16 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %17 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %16, i32 0, i32 6
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %19 = call i8* @alcor_pci_find_cap_offset(%struct.alcor_pci_priv* %15, %struct.pci_dev* %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %22 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %24 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %29 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27, %1
  %33 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %34 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %37 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %40 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  br label %125

43:                                               ; preds = %27
  %44 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %45 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %44, i32 0, i32 7
  %46 = load %struct.pci_dev*, %struct.pci_dev** %45, align 8
  store %struct.pci_dev* %46, %struct.pci_dev** %3, align 8
  %47 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %48 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ALCOR_PCIE_LINK_CAP_OFFSET, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %4, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @pci_read_config_dword(%struct.pci_dev* %52, i32 %53, i32* %5)
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 10
  %57 = and i32 %56, 3
  %58 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %59 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %61 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %60, i32 0, i32 6
  %62 = load %struct.pci_dev*, %struct.pci_dev** %61, align 8
  store %struct.pci_dev* %62, %struct.pci_dev** %3, align 8
  %63 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %64 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ALCOR_PCIE_LINK_CAP_OFFSET, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %4, align 4
  %68 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @pci_read_config_dword(%struct.pci_dev* %68, i32 %69, i32* %5)
  %71 = load i32, i32* %5, align 4
  %72 = ashr i32 %71, 10
  %73 = and i32 %72, 3
  %74 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %75 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %77 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %80 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %43
  %84 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %85 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %88 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %91 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %92)
  %94 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %95 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %98 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %96, %99
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %103 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %106 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %83, %43
  %108 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %109 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %112 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %115 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dev_dbg(i32 %110, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %116)
  %118 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %119 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %2, align 8
  %122 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %107, %32
  ret void
}

declare dso_local i8* @alcor_pci_find_cap_offset(%struct.alcor_pci_priv*, %struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
