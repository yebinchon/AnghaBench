; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_msix_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_msix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.TYPE_3__*, i32, %struct.pci_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*)* @rocker_msix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_msix_init(%struct.rocker* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %3, align 8
  %8 = load %struct.rocker*, %struct.rocker** %3, align 8
  %9 = getelementptr inbounds %struct.rocker, %struct.rocker* %8, i32 0, i32 2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i32 @pci_msix_vec_count(%struct.pci_dev* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %76

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.rocker*, %struct.rocker** %3, align 8
  %20 = getelementptr inbounds %struct.rocker, %struct.rocker* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ROCKER_MSIX_VEC_COUNT(i32 %21)
  %23 = icmp ne i32 %18, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %76

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @kmalloc_array(i32 %28, i32 4, i32 %29)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.TYPE_3__*
  %33 = load %struct.rocker*, %struct.rocker** %3, align 8
  %34 = getelementptr inbounds %struct.rocker, %struct.rocker* %33, i32 0, i32 0
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %34, align 8
  %35 = load %struct.rocker*, %struct.rocker** %3, align 8
  %36 = getelementptr inbounds %struct.rocker, %struct.rocker* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %76

42:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.rocker*, %struct.rocker** %3, align 8
  %50 = getelementptr inbounds %struct.rocker, %struct.rocker* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 4
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %43

59:                                               ; preds = %43
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = load %struct.rocker*, %struct.rocker** %3, align 8
  %62 = getelementptr inbounds %struct.rocker, %struct.rocker* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @pci_enable_msix_exact(%struct.pci_dev* %60, %struct.TYPE_3__* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %70

69:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %76

70:                                               ; preds = %68
  %71 = load %struct.rocker*, %struct.rocker** %3, align 8
  %72 = getelementptr inbounds %struct.rocker, %struct.rocker* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = call i32 @kfree(%struct.TYPE_3__* %73)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %70, %69, %39, %24, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @pci_msix_vec_count(%struct.pci_dev*) #1

declare dso_local i32 @ROCKER_MSIX_VEC_COUNT(i32) #1

declare dso_local i32 @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix_exact(%struct.pci_dev*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
