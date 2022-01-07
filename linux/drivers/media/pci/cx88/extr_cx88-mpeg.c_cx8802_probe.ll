; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.cx8802_dev = type { i32, i32, %struct.cx88_core*, %struct.pci_dev* }
%struct.cx88_core = type { %struct.cx8802_dev*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cx2388x 8802 Driver Manager\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cx8802_mutex = common dso_local global i32 0, align 4
@cx8802_devlist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cx8802_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8802_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.cx8802_dev*, align 8
  %7 = alloca %struct.cx88_core*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.cx88_core* @cx88_core_get(%struct.pci_dev* %9)
  store %struct.cx88_core* %10, %struct.cx88_core** %7, align 8
  %11 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %12 = icmp ne %struct.cx88_core* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %21 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %63

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.cx8802_dev* @kzalloc(i32 24, i32 %29)
  store %struct.cx8802_dev* %30, %struct.cx8802_dev** %6, align 8
  %31 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %32 = icmp ne %struct.cx8802_dev* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %63

34:                                               ; preds = %26
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %37 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %36, i32 0, i32 3
  store %struct.pci_dev* %35, %struct.pci_dev** %37, align 8
  %38 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %39 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %40 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %39, i32 0, i32 2
  store %struct.cx88_core* %38, %struct.cx88_core** %40, align 8
  %41 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %42 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %43 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %42, i32 0, i32 0
  store %struct.cx8802_dev* %41, %struct.cx8802_dev** %43, align 8
  %44 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %45 = call i32 @cx8802_init_common(%struct.cx8802_dev* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %60

49:                                               ; preds = %34
  %50 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %51 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %50, i32 0, i32 1
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = call i32 @mutex_lock(i32* @cx8802_mutex)
  %54 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %55 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %54, i32 0, i32 0
  %56 = call i32 @list_add_tail(i32* %55, i32* @cx8802_devlist)
  %57 = call i32 @mutex_unlock(i32* @cx8802_mutex)
  %58 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %59 = call i32 @request_modules(%struct.cx8802_dev* %58)
  store i32 0, i32* %3, align 4
  br label %70

60:                                               ; preds = %48
  %61 = load %struct.cx8802_dev*, %struct.cx8802_dev** %6, align 8
  %62 = call i32 @kfree(%struct.cx8802_dev* %61)
  br label %63

63:                                               ; preds = %60, %33, %25
  %64 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %65 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %64, i32 0, i32 0
  store %struct.cx8802_dev* null, %struct.cx8802_dev** %65, align 8
  %66 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i32 @cx88_core_put(%struct.cx88_core* %66, %struct.pci_dev* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %49, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.cx88_core* @cx88_core_get(%struct.pci_dev*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.cx8802_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @cx8802_init_common(%struct.cx8802_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @request_modules(%struct.cx8802_dev*) #1

declare dso_local i32 @kfree(%struct.cx8802_dev*) #1

declare dso_local i32 @cx88_core_put(%struct.cx88_core*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
