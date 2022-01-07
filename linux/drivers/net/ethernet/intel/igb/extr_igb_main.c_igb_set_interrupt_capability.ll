; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_interrupt_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_interrupt_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, i64, i32*, i32*, %struct.e1000_hw, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.e1000_hw = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IGB_FLAG_HAS_MSIX = common dso_local global i32 0, align 4
@IGB_FLAG_QUEUE_PAIRS = common dso_local global i32 0, align 4
@IGB_FLAG_HAS_MSI = common dso_local global i32 0, align 4
@E1000_IOVCTL = common dso_local global i32 0, align 4
@E1000_IOVCTL_REUSE_VFQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i32)* @igb_set_interrupt_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_set_interrupt_capability(%struct.igb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %89

11:                                               ; preds = %2
  %12 = load i32, i32* @IGB_FLAG_HAS_MSIX, align 4
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %27, i32 0, i32 3
  store i32 1, i32* %28, align 4
  br label %35

29:                                               ; preds = %11
  %30 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IGB_FLAG_QUEUE_PAIRS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %45, %35
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %70, %51
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %63, i32 0, i32 10
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 4
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %57

73:                                               ; preds = %57
  %74 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %74, i32 0, i32 5
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %77, i32 0, i32 10
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @pci_enable_msix_range(%struct.TYPE_5__* %76, %struct.TYPE_6__* %79, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %122

86:                                               ; preds = %73
  %87 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %88 = call i32 @igb_reset_interrupt_capability(%struct.igb_adapter* %87)
  br label %89

89:                                               ; preds = %86, %10
  %90 = load i32, i32* @IGB_FLAG_HAS_MSIX, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* @IGB_FLAG_QUEUE_PAIRS, align 4
  %101 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %107, i32 0, i32 3
  store i32 1, i32* %108, align 4
  %109 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %109, i32 0, i32 4
  store i32 1, i32* %110, align 8
  %111 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %111, i32 0, i32 5
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = call i32 @pci_enable_msi(%struct.TYPE_5__* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %89
  %117 = load i32, i32* @IGB_FLAG_HAS_MSI, align 4
  %118 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %119 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %85, %116, %89
  ret void
}

declare dso_local i32 @pci_enable_msix_range(%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @igb_reset_interrupt_capability(%struct.igb_adapter*) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
