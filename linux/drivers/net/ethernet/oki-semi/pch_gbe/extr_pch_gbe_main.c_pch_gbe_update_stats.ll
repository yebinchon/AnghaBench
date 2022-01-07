; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, %struct.pch_gbe_hw_stats, %struct.pci_dev*, %struct.net_device* }
%struct.pch_gbe_hw_stats = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.pci_dev = type { i64 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@pci_channel_io_normal = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pch_gbe_update_stats(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca %struct.pch_gbe_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pch_gbe_hw_stats*, align 8
  %6 = alloca i64, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %2, align 8
  %7 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %7, i32 0, i32 3
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %10, i32 0, i32 2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %13, i32 0, i32 1
  store %struct.pch_gbe_hw_stats* %14, %struct.pch_gbe_hw_stats** %5, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @pci_channel_io_normal, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %145

26:                                               ; preds = %19, %1
  %27 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %32 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %35 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %39 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  %40 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %40, i32 0, i32 15
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %44 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %48 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %52 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %51, i32 0, i32 14
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %56 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %58 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %57, i32 0, i32 13
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 13
  store i32 %59, i32* %62, align 4
  %63 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %64 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 12
  store i32 %65, i32* %68, align 8
  %69 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %70 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 11
  store i32 %71, i32* %74, align 4
  %75 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %76 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 10
  store i32 %77, i32* %80, align 8
  %81 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %82 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 9
  store i32 %83, i32* %86, align 4
  %87 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %88 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 8
  store i32 %89, i32* %92, align 8
  %93 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %94 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 7
  store i32 %95, i32* %98, align 4
  %99 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %100 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 6
  store i32 %101, i32* %104, align 8
  %105 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %106 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.net_device*, %struct.net_device** %3, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 5
  store i64 %107, i64* %110, align 8
  %111 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %112 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.net_device*, %struct.net_device** %3, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 4
  store i64 %113, i64* %116, align 8
  %117 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %118 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  store i64 %119, i64* %122, align 8
  %123 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %124 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.net_device*, %struct.net_device** %3, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i64 %125, i64* %128, align 8
  %129 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %130 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i64 %131, i64* %134, align 8
  %135 = load %struct.pch_gbe_hw_stats*, %struct.pch_gbe_hw_stats** %5, align 8
  %136 = getelementptr inbounds %struct.pch_gbe_hw_stats, %struct.pch_gbe_hw_stats* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.net_device*, %struct.net_device** %3, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i64 %137, i64* %140, align 8
  %141 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %142 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %141, i32 0, i32 0
  %143 = load i64, i64* %6, align 8
  %144 = call i32 @spin_unlock_irqrestore(i32* %142, i64 %143)
  br label %145

145:                                              ; preds = %26, %25
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
