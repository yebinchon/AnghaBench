; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_risc_databuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_risc_databuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cx23885_riscmem = type { i32, i32*, i32*, i32 }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NO_SYNC_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_risc_databuffer(%struct.pci_dev* %0, %struct.cx23885_riscmem* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.cx23885_riscmem*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %8, align 8
  store %struct.cx23885_riscmem* %1, %struct.cx23885_riscmem** %9, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %12, align 4
  %18 = mul i32 %16, %17
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = udiv i32 %18, %19
  %21 = add i32 1, %20
  %22 = load i32, i32* %12, align 4
  %23 = add i32 %21, %22
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %24, 4
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = mul nsw i32 %26, 12
  %28 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %9, align 8
  %29 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %31 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %9, align 8
  %32 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %9, align 8
  %35 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %34, i32 0, i32 3
  %36 = call i32* @pci_alloc_consistent(%struct.pci_dev* %30, i32 %33, i32* %35)
  %37 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %9, align 8
  %38 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %9, align 8
  %40 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %6
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %82

46:                                               ; preds = %6
  %47 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %9, align 8
  %48 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %15, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %52 = load i32, i32* @NO_SYNC_LINE, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32* @cx23885_risc_field(i32* %50, %struct.scatterlist* %51, i32 0, i32 %52, i32 %53, i32 0, i32 %54, i32 %55, i32 %58)
  store i32* %59, i32** %15, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %9, align 8
  %62 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  %63 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %9, align 8
  %64 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %9, align 8
  %67 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = ptrtoint i32* %65 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = add nsw i64 %72, 2
  %74 = mul i64 %73, 4
  %75 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %9, align 8
  %76 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = icmp ugt i64 %74, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %46, %43
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32* @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32* @cx23885_risc_field(i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
