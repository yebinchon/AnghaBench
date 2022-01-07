; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_set_interrupt_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_set_interrupt_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IGC_FLAG_HAS_MSIX = common dso_local global i32 0, align 4
@IGC_FLAG_QUEUE_PAIRS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IGC_FLAG_HAS_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*, i32)* @igc_set_interrupt_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_set_interrupt_capability(%struct.igc_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %97

11:                                               ; preds = %2
  %12 = load i32, i32* @IGC_FLAG_HAS_MSIX, align 4
  %13 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IGC_FLAG_QUEUE_PAIRS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %11
  %37 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %36, %11
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.TYPE_4__* @kcalloc(i32 %48, i32 4, i32 %49)
  %51 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %51, i32 0, i32 6
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %52, align 8
  %53 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %53, i32 0, i32 6
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %42
  br label %128

58:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %72, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %65, i32 0, i32 6
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 4
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %59

75:                                               ; preds = %59
  %76 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %79, i32 0, i32 6
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @pci_enable_msix_range(i32 %78, %struct.TYPE_4__* %81, i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %128

88:                                               ; preds = %75
  %89 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %89, i32 0, i32 6
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i32 @kfree(%struct.TYPE_4__* %91)
  %93 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %93, i32 0, i32 6
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %94, align 8
  %95 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %96 = call i32 @igc_reset_interrupt_capability(%struct.igc_adapter* %95)
  br label %97

97:                                               ; preds = %88, %10
  %98 = load i32, i32* @IGC_FLAG_HAS_MSIX, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* @IGC_FLAG_QUEUE_PAIRS, align 4
  %107 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %113, i32 0, i32 3
  store i32 1, i32* %114, align 4
  %115 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %115, i32 0, i32 4
  store i32 1, i32* %116, align 8
  %117 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @pci_enable_msi(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %97
  %123 = load i32, i32* @IGC_FLAG_HAS_MSI, align 4
  %124 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %57, %87, %122, %97
  ret void
}

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix_range(i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @igc_reset_interrupt_capability(%struct.igc_adapter*) #1

declare dso_local i32 @pci_enable_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
