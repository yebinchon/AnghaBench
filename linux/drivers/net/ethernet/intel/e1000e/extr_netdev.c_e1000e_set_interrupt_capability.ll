; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_set_interrupt_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_set_interrupt_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FLAG_HAS_MSIX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Failed to initialize MSI-X interrupts.  Falling back to MSI interrupts.\0A\00", align 1
@FLAG_MSI_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Failed to initialize MSI interrupts.  Falling back to legacy interrupts.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_set_interrupt_capability(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_adapter*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %93 [
    i32 128, label %9
    i32 129, label %75
    i32 130, label %92
  ]

9:                                                ; preds = %1
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FLAG_HAS_MSIX, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %9
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 2
  store i32 3, i32* %18, align 8
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.TYPE_3__* @kcalloc(i32 %21, i32 4, i32 %22)
  %24 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %24, i32 0, i32 4
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %25, align 8
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %26, i32 0, i32 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %68

30:                                               ; preds = %16
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  store %struct.e1000_adapter* %31, %struct.e1000_adapter** %5, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %47, %30
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %39, i32* %46, align 4
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %32

50:                                               ; preds = %32
  %51 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %54, i32 0, i32 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %58 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %61 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @pci_enable_msix_range(i32 %53, %struct.TYPE_3__* %56, i32 %59, i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  br label %96

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %16
  %69 = call i32 @e_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %71 = call i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter* %70)
  br label %72

72:                                               ; preds = %68, %9
  %73 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %73, i32 0, i32 0
  store i32 129, i32* %74, align 8
  br label %75

75:                                               ; preds = %1, %72
  %76 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pci_enable_msi(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @FLAG_MSI_ENABLED, align 4
  %83 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %91

87:                                               ; preds = %75
  %88 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %88, i32 0, i32 0
  store i32 130, i32* %89, align 8
  %90 = call i32 @e_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %81
  br label %92

92:                                               ; preds = %1, %91
  br label %93

93:                                               ; preds = %1, %92
  %94 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %94, i32 0, i32 2
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %66
  ret void
}

declare dso_local %struct.TYPE_3__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix_range(i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @e_err(i8*) #1

declare dso_local i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter*) #1

declare dso_local i32 @pci_enable_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
