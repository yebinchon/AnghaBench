; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_kvaser_pci.c_kvaser_pci_del_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_kvaser_pci.c_kvaser_pci_del_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sja1000_priv = type { i32, %struct.kvaser_pci* }
%struct.kvaser_pci = type { i32, i32, %struct.TYPE_2__*, i32, %struct.net_device** }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Removing device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @kvaser_pci_del_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pci_del_chan(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sja1000_priv*, align 8
  %4 = alloca %struct.kvaser_pci*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = icmp ne %struct.net_device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %106

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.sja1000_priv* %11, %struct.sja1000_priv** %3, align 8
  %12 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %13 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %12, i32 0, i32 1
  %14 = load %struct.kvaser_pci*, %struct.kvaser_pci** %13, align 8
  store %struct.kvaser_pci* %14, %struct.kvaser_pci** %4, align 8
  %15 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %16 = icmp ne %struct.kvaser_pci* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  br label %106

18:                                               ; preds = %9
  %19 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %20 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_info(i32* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @kvaser_pci_disable_irq(%struct.net_device* %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %77, %18
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %32 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %29
  %37 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %38 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %37, i32 0, i32 4
  %39 = load %struct.net_device**, %struct.net_device*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.net_device*, %struct.net_device** %39, i64 %41
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %45, label %76

45:                                               ; preds = %36
  %46 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %47 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %51 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %50, i32 0, i32 4
  %52 = load %struct.net_device**, %struct.net_device*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.net_device*, %struct.net_device** %52, i64 %54
  %56 = load %struct.net_device*, %struct.net_device** %55, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %61 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %60, i32 0, i32 4
  %62 = load %struct.net_device**, %struct.net_device*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.net_device*, %struct.net_device** %62, i64 %64
  %66 = load %struct.net_device*, %struct.net_device** %65, align 8
  %67 = call i32 @unregister_sja1000dev(%struct.net_device* %66)
  %68 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %69 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %68, i32 0, i32 4
  %70 = load %struct.net_device**, %struct.net_device*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.net_device*, %struct.net_device** %70, i64 %72
  %74 = load %struct.net_device*, %struct.net_device** %73, align 8
  %75 = call i32 @free_sja1000dev(%struct.net_device* %74)
  br label %76

76:                                               ; preds = %45, %36
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %29

80:                                               ; preds = %29
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = call i32 @unregister_sja1000dev(%struct.net_device* %81)
  %83 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %84 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %87 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @pci_iounmap(%struct.TYPE_2__* %85, i32 %88)
  %90 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %91 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %94 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @pci_iounmap(%struct.TYPE_2__* %92, i32 %95)
  %97 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %98 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load %struct.kvaser_pci*, %struct.kvaser_pci** %4, align 8
  %101 = getelementptr inbounds %struct.kvaser_pci, %struct.kvaser_pci* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pci_iounmap(%struct.TYPE_2__* %99, i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = call i32 @free_sja1000dev(%struct.net_device* %104)
  br label %106

106:                                              ; preds = %80, %17, %8
  ret void
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @kvaser_pci_disable_irq(%struct.net_device*) #1

declare dso_local i32 @unregister_sja1000dev(%struct.net_device*) #1

declare dso_local i32 @free_sja1000dev(%struct.net_device*) #1

declare dso_local i32 @pci_iounmap(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
