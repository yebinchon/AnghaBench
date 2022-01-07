; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_riscmem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_riscmem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cx25821_riscmem = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_riscmem_alloc(%struct.pci_dev* %0, %struct.cx25821_riscmem* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.cx25821_riscmem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.cx25821_riscmem* %1, %struct.cx25821_riscmem** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %6, align 8
  %11 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* null, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %6, align 8
  %16 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %6, align 8
  %23 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %6, align 8
  %26 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %6, align 8
  %29 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pci_free_consistent(%struct.pci_dev* %21, i32 %24, i32* %27, i32 %30)
  br label %32

32:                                               ; preds = %20, %14, %3
  %33 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %6, align 8
  %34 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* null, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32* @pci_zalloc_consistent(%struct.pci_dev* %38, i32 %39, i32* %9)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp eq i32* null, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %57

46:                                               ; preds = %37
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %6, align 8
  %49 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %6, align 8
  %52 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %6, align 8
  %55 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %46, %32
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i32) #1

declare dso_local i32* @pci_zalloc_consistent(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
