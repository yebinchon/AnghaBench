; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sky2_hw = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@B0_IMSK = common dso_local global i32 0, align 4
@B0_CTST = common dso_local global i32 0, align 4
@CS_RST_SET = common dso_local global i32 0, align 4
@SKY2_HW_USE_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @sky2_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.sky2_hw* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.sky2_hw* %6, %struct.sky2_hw** %3, align 8
  %7 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %8 = icmp ne %struct.sky2_hw* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %120

10:                                               ; preds = %1
  %11 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %12 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %11, i32 0, i32 9
  %13 = call i32 @del_timer_sync(i32* %12)
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %15 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %14, i32 0, i32 8
  %16 = call i32 @cancel_work_sync(i32* %15)
  %17 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %18 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %33, %10
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %26 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @unregister_netdev(i32 %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %4, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %38 = load i32, i32* @B0_IMSK, align 4
  %39 = call i32 @sky2_write32(%struct.sky2_hw* %37, i32 %38, i32 0)
  %40 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %41 = load i32, i32* @B0_IMSK, align 4
  %42 = call i32 @sky2_read32(%struct.sky2_hw* %40, i32 %41)
  %43 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %44 = call i32 @sky2_power_aux(%struct.sky2_hw* %43)
  %45 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %46 = load i32, i32* @B0_CTST, align 4
  %47 = load i32, i32* @CS_RST_SET, align 4
  %48 = call i32 @sky2_write8(%struct.sky2_hw* %45, i32 %46, i32 %47)
  %49 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %50 = load i32, i32* @B0_CTST, align 4
  %51 = call i32 @sky2_read8(%struct.sky2_hw* %49, i32 %50)
  %52 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %53 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %65

56:                                               ; preds = %36
  %57 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %58 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %57, i32 0, i32 7
  %59 = call i32 @napi_disable(i32* %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %64 = call i32 @free_irq(i32 %62, %struct.sky2_hw* %63)
  br label %65

65:                                               ; preds = %56, %36
  %66 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %67 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SKY2_HW_USE_MSI, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %74 = call i32 @pci_disable_msi(%struct.pci_dev* %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %77 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %78 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %84 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %87 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @pci_free_consistent(%struct.pci_dev* %76, i32 %82, i32 %85, i32 %88)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %91 = call i32 @pci_release_regions(%struct.pci_dev* %90)
  %92 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %93 = call i32 @pci_disable_device(%struct.pci_dev* %92)
  %94 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %95 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %110, %75
  %99 = load i32, i32* %4, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %103 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @free_netdev(i32 %108)
  br label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %4, align 4
  br label %98

113:                                              ; preds = %98
  %114 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %115 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @iounmap(i32 %116)
  %118 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %119 = call i32 @kfree(%struct.sky2_hw* %118)
  br label %120

120:                                              ; preds = %113, %9
  ret void
}

declare dso_local %struct.sky2_hw* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_power_aux(%struct.sky2_hw*) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read8(%struct.sky2_hw*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.sky2_hw*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.sky2_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
