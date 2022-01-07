; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Cannot modify SR-IOV while VFs are assigned\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Enable PCI SR-IOV failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_iov_configure(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pci_num_vf(%struct.pci_dev* %8)
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i64 @pci_vfs_assigned(%struct.pci_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %5, align 4
  br label %26

21:                                               ; preds = %12, %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_disable_sriov(%struct.pci_dev* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @fm10k_iov_free_data(%struct.pci_dev* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @fm10k_iov_alloc_data(%struct.pci_dev* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @pci_enable_sriov(%struct.pci_dev* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %37, %34
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %47, %32
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @pci_num_vf(%struct.pci_dev*) #1

declare dso_local i64 @pci_vfs_assigned(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @fm10k_iov_free_data(%struct.pci_dev*) #1

declare dso_local i32 @fm10k_iov_alloc_data(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_sriov(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
