; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_i2c.c_mantis_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_i2c.c_mantis_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { i32, i32, i32, %struct.pci_dev*, %struct.i2c_adapter }
%struct.pci_dev = type { i32 }
%struct.i2c_adapter = type { i32, i32, %struct.TYPE_2__, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [11 x i8] c"Mantis I2C\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@mantis_algo = common dso_local global i32 0, align 4
@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Initializing I2C ..\00", align 1
@MANTIS_INT_STAT = common dso_local global i32 0, align 4
@MANTIS_INT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Disabling I2C interrupt\00", align 1
@MANTIS_INT_I2CDONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_i2c_init(%struct.mantis_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mantis_pci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.mantis_pci* %0, %struct.mantis_pci** %3, align 8
  %7 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %8 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %7, i32 0, i32 4
  store %struct.i2c_adapter* %8, %struct.i2c_adapter** %5, align 8
  %9 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %10 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %9, i32 0, i32 3
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %13 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %12, i32 0, i32 2
  %14 = call i32 @init_waitqueue_head(i32* %13)
  %15 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %16 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %15, i32 0, i32 1
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strscpy(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4)
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %23 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %24 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %22, %struct.mantis_pci* %23)
  %25 = load i32, i32* @THIS_MODULE, align 4
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %28, i32 0, i32 4
  store i32* @mantis_algo, i32** %29, align 8
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %32, i32 0, i32 0
  store i32 500, i32* %33, align 8
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 1
  store i32 3, i32* %35, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* %37, i32** %40, align 8
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %42 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %41)
  %43 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %44 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %46 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %1
  %50 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %51 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %2, align 4
  br label %68

53:                                               ; preds = %1
  %54 = load i32, i32* @MANTIS_DEBUG, align 4
  %55 = call i32 @dprintk(i32 %54, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @MANTIS_INT_STAT, align 4
  %57 = call i32 @mmread(i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @MANTIS_INT_MASK, align 4
  %59 = call i32 @mmread(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @MANTIS_INT_STAT, align 4
  %62 = call i32 @mmwrite(i32 %60, i32 %61)
  %63 = load i32, i32* @MANTIS_DEBUG, align 4
  %64 = call i32 @dprintk(i32 %63, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.mantis_pci*, %struct.mantis_pci** %3, align 8
  %66 = load i32, i32* @MANTIS_INT_I2CDONE, align 4
  %67 = call i32 @mantis_mask_ints(%struct.mantis_pci* %65, i32 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %53, %49
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.mantis_pci*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i32 @mmread(i32) #1

declare dso_local i32 @mmwrite(i32, i32) #1

declare dso_local i32 @mantis_mask_ints(%struct.mantis_pci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
