; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_intel_vr_nor.c_vr_nor_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_intel_vr_nor.c_vr_nor_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.vr_nor_mtd = type { i64, %struct.TYPE_2__, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64 }

@DRV_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXP_TIMING_CS0 = common dso_local global i64 0, align 8
@TIMING_WR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @vr_nor_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_nor_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.vr_nor_mtd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.vr_nor_mtd* null, %struct.vr_nor_mtd** %6, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %94

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = load i32, i32* @DRV_NAME, align 4
  %17 = call i32 @pci_request_regions(%struct.pci_dev* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %91

21:                                               ; preds = %14
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.vr_nor_mtd* @kzalloc(i32 32, i32 %22)
  store %struct.vr_nor_mtd* %23, %struct.vr_nor_mtd** %6, align 8
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %6, align 8
  %27 = icmp ne %struct.vr_nor_mtd* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %86

29:                                               ; preds = %21
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %6, align 8
  %32 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %31, i32 0, i32 3
  store %struct.pci_dev* %30, %struct.pci_dev** %32, align 8
  %33 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %6, align 8
  %34 = call i32 @vr_nor_init_maps(%struct.vr_nor_mtd* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %86

38:                                               ; preds = %29
  %39 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %6, align 8
  %40 = call i32 @vr_nor_mtd_setup(%struct.vr_nor_mtd* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %59

44:                                               ; preds = %38
  %45 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %6, align 8
  %46 = call i32 @vr_nor_init_partitions(%struct.vr_nor_mtd* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %54

50:                                               ; preds = %44
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %6, align 8
  %53 = call i32 @pci_set_drvdata(%struct.pci_dev* %51, %struct.vr_nor_mtd* %52)
  store i32 0, i32* %3, align 4
  br label %96

54:                                               ; preds = %49
  %55 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %6, align 8
  %56 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @map_destroy(i32 %57)
  br label %59

59:                                               ; preds = %54, %43
  %60 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %6, align 8
  %61 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EXP_TIMING_CS0, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @TIMING_WR_EN, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %6, align 8
  %72 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @EXP_TIMING_CS0, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %6, align 8
  %78 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @iounmap(i64 %80)
  %82 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %6, align 8
  %83 = getelementptr inbounds %struct.vr_nor_mtd, %struct.vr_nor_mtd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @iounmap(i64 %84)
  br label %86

86:                                               ; preds = %59, %37, %28
  %87 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %6, align 8
  %88 = call i32 @kfree(%struct.vr_nor_mtd* %87)
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = call i32 @pci_release_regions(%struct.pci_dev* %89)
  br label %91

91:                                               ; preds = %86, %20
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = call i32 @pci_disable_device(%struct.pci_dev* %92)
  br label %94

94:                                               ; preds = %91, %13
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %50
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local %struct.vr_nor_mtd* @kzalloc(i32, i32) #1

declare dso_local i32 @vr_nor_init_maps(%struct.vr_nor_mtd*) #1

declare dso_local i32 @vr_nor_mtd_setup(%struct.vr_nor_mtd*) #1

declare dso_local i32 @vr_nor_init_partitions(%struct.vr_nor_mtd*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.vr_nor_mtd*) #1

declare dso_local i32 @map_destroy(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.vr_nor_mtd*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
