; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pci_endpoint_test.c_pci_endpoint_test_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_endpoint_test = type { i32, i32*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_endpoint_test*, i32)* @pci_endpoint_test_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_endpoint_test_bar(%struct.pci_endpoint_test* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_endpoint_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.pci_endpoint_test* %0, %struct.pci_endpoint_test** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %4, align 8
  %11 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %10, i32 0, i32 2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %9, align 8
  %13 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %4, align 8
  %14 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pci_resource_len(%struct.pci_dev* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %4, align 8
  %28 = getelementptr inbounds %struct.pci_endpoint_test, %struct.pci_endpoint_test* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 4, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %22
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %42, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @pci_endpoint_test_bar_writel(%struct.pci_endpoint_test* %38, i32 %39, i32 %40, i32 -1600085856)
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 4
  store i32 %44, i32* %6, align 4
  br label %33

45:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %59, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load %struct.pci_endpoint_test*, %struct.pci_endpoint_test** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @pci_endpoint_test_bar_readl(%struct.pci_endpoint_test* %51, i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, -1600085856
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %63

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %6, align 4
  br label %46

62:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %57, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_endpoint_test_bar_writel(%struct.pci_endpoint_test*, i32, i32, i32) #1

declare dso_local i32 @pci_endpoint_test_bar_readl(%struct.pci_endpoint_test*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
