; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_rem_msix_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_rem_msix_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@MSI_X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxgedev*)* @vxge_rem_msix_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_rem_msix_isr(%struct.vxgedev* %0) #0 {
  %2 = alloca %struct.vxgedev*, align 8
  %3 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %57, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %7 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = mul nsw i32 %8, 2
  %10 = add nsw i32 %9, 1
  %11 = icmp slt i32 %5, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %4
  %13 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %14 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %12
  %23 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %24 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @synchronize_irq(i32 %30)
  %32 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %33 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %32, i32 0, i32 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %41 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @free_irq(i32 %39, i32 %47)
  %49 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %50 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %22, %12
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %4

60:                                               ; preds = %4
  %61 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %62 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %61, i32 0, i32 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i32 @kfree(%struct.TYPE_4__* %63)
  %65 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %66 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i32 @kfree(%struct.TYPE_4__* %67)
  %69 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %70 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %69, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %70, align 8
  %71 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %72 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %71, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %72, align 8
  %73 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %74 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MSI_X, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %60
  %80 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %81 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @pci_disable_msix(i32 %82)
  br label %84

84:                                               ; preds = %79, %60
  ret void
}

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_disable_msix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
