; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_janz-cmodio.c_cmodio_probe_submodules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_janz-cmodio.c_cmodio_probe_submodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmodio_device = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }

@num_modules = common dso_local global i32 0, align 4
@modules = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"MODULbus %d: name %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [117 x i8] c"no MODULbus modules specified, please set the ``modules'' kernel parameter according to your hardware configuration\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmodio_device*)* @cmodio_probe_submodules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmodio_probe_submodules(%struct.cmodio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmodio_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.cmodio_device* %0, %struct.cmodio_device** %3, align 8
  %8 = load %struct.cmodio_device*, %struct.cmodio_device** %3, align 8
  %9 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %8, i32 0, i32 1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @num_modules, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load i8**, i8*** @modules, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %15
  br label %44

29:                                               ; preds = %24
  %30 = load %struct.cmodio_device*, %struct.cmodio_device** %3, align 8
  %31 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %30, i32 0, i32 1
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %34, i8* %35)
  %37 = load %struct.cmodio_device*, %struct.cmodio_device** %3, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @cmodio_setup_subdevice(%struct.cmodio_device* %37, i8* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %29, %28
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.cmodio_device*, %struct.cmodio_device** %3, align 8
  %52 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %51, i32 0, i32 1
  %53 = load %struct.pci_dev*, %struct.pci_dev** %52, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 1
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %69

58:                                               ; preds = %47
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 1
  %61 = load %struct.cmodio_device*, %struct.cmodio_device** %3, align 8
  %62 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mfd_add_devices(i32* %60, i32 0, i32 %63, i32 %64, i32* null, i32 %67, i32* null)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %58, %50
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*) #1

declare dso_local i32 @cmodio_setup_subdevice(%struct.cmodio_device*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
