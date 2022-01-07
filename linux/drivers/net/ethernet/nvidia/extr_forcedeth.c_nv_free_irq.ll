; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NV_MSI_X_ENABLED = common dso_local global i32 0, align 4
@NV_MSI_X_VECTORS_MASK = common dso_local global i32 0, align 4
@NV_MSI_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nv_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_free_irq(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.fe_priv* @get_nvpriv(%struct.net_device* %5)
  store %struct.fe_priv* %6, %struct.fe_priv** %3, align 8
  %7 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %8 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @NV_MSI_X_ENABLED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %33, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %17 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NV_MSI_X_VECTORS_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %24 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @free_irq(i32 %30, %struct.net_device* %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %38 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @pci_disable_msix(%struct.TYPE_5__* %39)
  %41 = load i32, i32* @NV_MSI_X_ENABLED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %44 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %73

47:                                               ; preds = %1
  %48 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %49 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @free_irq(i32 %52, %struct.net_device* %53)
  %55 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %56 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NV_MSI_ENABLED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %47
  %62 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %63 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = call i32 @pci_disable_msi(%struct.TYPE_5__* %64)
  %66 = load i32, i32* @NV_MSI_ENABLED, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %69 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %61, %47
  br label %73

73:                                               ; preds = %72, %36
  ret void
}

declare dso_local %struct.fe_priv* @get_nvpriv(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
