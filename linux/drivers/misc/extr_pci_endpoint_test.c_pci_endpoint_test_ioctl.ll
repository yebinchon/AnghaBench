; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pci_endpoint_test = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BAR_0 = common dso_local global i32 0, align 4
@irq_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @pci_endpoint_test_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pci_endpoint_test_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_endpoint_test*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_endpoint_test* @to_endpoint_test(i32 %15)
  store %struct.pci_endpoint_test* %16, %struct.pci_endpoint_test** %9, align 8
  %17 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %9, align 8
  %18 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %17, i32 0, i32 1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %10, align 8
  %20 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %9, align 8
  %21 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %74 [
    i32 136, label %24
    i32 133, label %46
    i32 132, label %49
    i32 131, label %49
    i32 128, label %56
    i32 130, label %60
    i32 135, label %64
    i32 129, label %68
    i32 134, label %72
  ]

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ult i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %30, 5
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %24
  br label %75

33:                                               ; preds = %29
  %34 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %35 = call i32 @is_am654_pci_dev(%struct.pci_dev* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @BAR_0, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %75

42:                                               ; preds = %37, %33
  %43 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %9, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pci_endpoint_test_bar(%struct.pci_endpoint_test* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %74

46:                                               ; preds = %3
  %47 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %9, align 8
  %48 = call i32 @pci_endpoint_test_legacy_irq(%struct.pci_endpoint_test* %47)
  store i32 %48, i32* %7, align 4
  br label %74

49:                                               ; preds = %3, %3
  %50 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %9, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 131
  %54 = zext i1 %53 to i32
  %55 = call i32 @pci_endpoint_test_msi_irq(%struct.pci_endpoint_test* %50, i64 %51, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %74

56:                                               ; preds = %3
  %57 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %9, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @pci_endpoint_test_write(%struct.pci_endpoint_test* %57, i64 %58)
  store i32 %59, i32* %7, align 4
  br label %74

60:                                               ; preds = %3
  %61 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %9, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @pci_endpoint_test_read(%struct.pci_endpoint_test* %61, i64 %62)
  store i32 %63, i32* %7, align 4
  br label %74

64:                                               ; preds = %3
  %65 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %9, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @pci_endpoint_test_copy(%struct.pci_endpoint_test* %65, i64 %66)
  store i32 %67, i32* %7, align 4
  br label %74

68:                                               ; preds = %3
  %69 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %9, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @pci_endpoint_test_set_irq(%struct.pci_endpoint_test* %69, i64 %70)
  store i32 %71, i32* %7, align 4
  br label %74

72:                                               ; preds = %3
  %73 = load i32, i32* @irq_type, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %3, %72, %68, %64, %60, %56, %49, %46, %42
  br label %75

75:                                               ; preds = %74, %41, %32
  %76 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %9, align 8
  %77 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  ret i64 %80
}

declare dso_local %struct.pci_endpoint_test* @to_endpoint_test(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_am654_pci_dev(%struct.pci_dev*) #1

declare dso_local i32 @pci_endpoint_test_bar(%struct.pci_endpoint_test*, i32) #1

declare dso_local i32 @pci_endpoint_test_legacy_irq(%struct.pci_endpoint_test*) #1

declare dso_local i32 @pci_endpoint_test_msi_irq(%struct.pci_endpoint_test*, i64, i32) #1

declare dso_local i32 @pci_endpoint_test_write(%struct.pci_endpoint_test*, i64) #1

declare dso_local i32 @pci_endpoint_test_read(%struct.pci_endpoint_test*, i64) #1

declare dso_local i32 @pci_endpoint_test_copy(%struct.pci_endpoint_test*, i64) #1

declare dso_local i32 @pci_endpoint_test_set_irq(%struct.pci_endpoint_test*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
