; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.genwqe_dev = type { %struct.pci_dev* }

@.str = private unnamed_addr constant [36 x i8] c"err: could not alloc mem (err=%d)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"err: problems with PCI setup (err=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"err: cannot start card services! (err=%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"err: cannot start health checking! (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @genwqe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genwqe_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.genwqe_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = call i32 (...) @genwqe_init_crc32()
  %9 = call %struct.genwqe_dev* (...) @genwqe_dev_alloc()
  store %struct.genwqe_dev* %9, %struct.genwqe_dev** %7, align 8
  %10 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %11 = call i64 @IS_ERR(%struct.genwqe_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %17 = call i32 @PTR_ERR(%struct.genwqe_dev* %16)
  %18 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %20 = call i32 @PTR_ERR(%struct.genwqe_dev* %19)
  store i32 %20, i32* %3, align 4
  br label %74

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %25 = call i32 @dev_set_drvdata(i32* %23, %struct.genwqe_dev* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %28 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %27, i32 0, i32 0
  store %struct.pci_dev* %26, %struct.pci_dev** %28, align 8
  %29 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %30 = call i32 @genwqe_pci_setup(%struct.genwqe_dev* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %70

38:                                               ; preds = %21
  %39 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %40 = call i32 @genwqe_start(%struct.genwqe_dev* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %67

48:                                               ; preds = %38
  %49 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %50 = call i64 @genwqe_is_privileged(%struct.genwqe_dev* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %54 = call i32 @genwqe_health_check_start(%struct.genwqe_dev* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %64

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %48
  store i32 0, i32* %3, align 4
  br label %74

64:                                               ; preds = %57
  %65 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %66 = call i32 @genwqe_stop(%struct.genwqe_dev* %65)
  br label %67

67:                                               ; preds = %64, %43
  %68 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %69 = call i32 @genwqe_pci_remove(%struct.genwqe_dev* %68)
  br label %70

70:                                               ; preds = %67, %33
  %71 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %72 = call i32 @genwqe_dev_free(%struct.genwqe_dev* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %63, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @genwqe_init_crc32(...) #1

declare dso_local %struct.genwqe_dev* @genwqe_dev_alloc(...) #1

declare dso_local i64 @IS_ERR(%struct.genwqe_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.genwqe_dev*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.genwqe_dev*) #1

declare dso_local i32 @genwqe_pci_setup(%struct.genwqe_dev*) #1

declare dso_local i32 @genwqe_start(%struct.genwqe_dev*) #1

declare dso_local i64 @genwqe_is_privileged(%struct.genwqe_dev*) #1

declare dso_local i32 @genwqe_health_check_start(%struct.genwqe_dev*) #1

declare dso_local i32 @genwqe_stop(%struct.genwqe_dev*) #1

declare dso_local i32 @genwqe_pci_remove(%struct.genwqe_dev*) #1

declare dso_local i32 @genwqe_dev_free(%struct.genwqe_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
