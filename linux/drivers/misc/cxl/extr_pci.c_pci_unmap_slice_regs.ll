; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_pci_unmap_slice_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_pci_unmap_slice_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl_afu*)* @pci_unmap_slice_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_unmap_slice_regs(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %3 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %4 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %9 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @iounmap(i32* %10)
  %12 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %13 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %16 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %23 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @iounmap(i32* %26)
  %28 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %29 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %21, %14
  %33 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %34 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %41 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @iounmap(i32* %44)
  %46 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %47 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %39, %32
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
