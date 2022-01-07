; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, i32 }
%struct.pcr_handle = type { i32, %struct.pcr_handle*, i32, i32, %struct.TYPE_2__*, i64, i32, i32, i32, i32, i32, i32, i64, %struct.pcr_handle* }
%struct.TYPE_2__ = type { i32 }
%struct.rtsx_pcr = type { i32, %struct.rtsx_pcr*, i32, i32, %struct.TYPE_2__*, i64, i32, i32, i32, i32, i32, i32, i64, %struct.rtsx_pcr* }

@RTSX_BIER = common dso_local global i32 0, align 4
@RTSX_RESV_BUF_LEN = common dso_local global i32 0, align 4
@rtsx_pci_lock = common dso_local global i32 0, align 4
@rtsx_pci_idr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c": Realtek PCI-E Card Reader at %s [%04x:%04x] has been removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @rtsx_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pcr_handle*, align 8
  %4 = alloca %struct.rtsx_pcr*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.rtsx_pcr* @pci_get_drvdata(%struct.pci_dev* %5)
  %7 = bitcast %struct.rtsx_pcr* %6 to %struct.pcr_handle*
  store %struct.pcr_handle* %7, %struct.pcr_handle** %3, align 8
  %8 = load %struct.pcr_handle*, %struct.pcr_handle** %3, align 8
  %9 = getelementptr inbounds %struct.pcr_handle, %struct.pcr_handle* %8, i32 0, i32 13
  %10 = load %struct.pcr_handle*, %struct.pcr_handle** %9, align 8
  %11 = bitcast %struct.pcr_handle* %10 to %struct.rtsx_pcr*
  store %struct.rtsx_pcr* %11, %struct.rtsx_pcr** %4, align 8
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %13 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %15 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %14, i32 0, i32 11
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %18 = load i32, i32* @RTSX_BIER, align 4
  %19 = call i32 @rtsx_pci_writel(%struct.rtsx_pcr* %17, i32 %18, i32 0)
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %21 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %20, i32 0, i32 12
  store i64 0, i64* %21, align 8
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %23 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %22, i32 0, i32 11
  %24 = call i32 @spin_unlock_irq(i32* %23)
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %26 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %25, i32 0, i32 10
  %27 = call i32 @cancel_delayed_work_sync(i32* %26)
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %29 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %28, i32 0, i32 9
  %30 = call i32 @cancel_delayed_work_sync(i32* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 2
  %33 = call i32 @mfd_remove_devices(i32* %32)
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %35 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* @RTSX_RESV_BUF_LEN, align 4
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %40 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %43 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dma_free_coherent(i32* %37, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %47 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %50 = bitcast %struct.rtsx_pcr* %49 to i8*
  %51 = call i32 @free_irq(i32 %48, i8* %50)
  %52 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %53 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %1
  %57 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %58 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = call i32 @pci_disable_msi(%struct.TYPE_2__* %59)
  br label %61

61:                                               ; preds = %56, %1
  %62 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %63 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @iounmap(i32 %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %67 = call i32 @pci_release_regions(%struct.pci_dev* %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %69 = call i32 @pci_disable_device(%struct.pci_dev* %68)
  %70 = call i32 @spin_lock(i32* @rtsx_pci_lock)
  %71 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %72 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @idr_remove(i32* @rtsx_pci_idr, i32 %73)
  %75 = call i32 @spin_unlock(i32* @rtsx_pci_lock)
  %76 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %77 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %76, i32 0, i32 1
  %78 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %77, align 8
  %79 = call i32 @kfree(%struct.rtsx_pcr* %78)
  %80 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %81 = call i32 @kfree(%struct.rtsx_pcr* %80)
  %82 = load %struct.pcr_handle*, %struct.pcr_handle** %3, align 8
  %83 = bitcast %struct.pcr_handle* %82 to %struct.rtsx_pcr*
  %84 = call i32 @kfree(%struct.rtsx_pcr* %83)
  %85 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 2
  %87 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %88 = call i32 @pci_name(%struct.pci_dev* %87)
  %89 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @dev_dbg(i32* %86, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %92, i32 %96)
  ret void
}

declare dso_local %struct.rtsx_pcr* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rtsx_pci_writel(%struct.rtsx_pcr*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mfd_remove_devices(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_2__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.rtsx_pcr*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
