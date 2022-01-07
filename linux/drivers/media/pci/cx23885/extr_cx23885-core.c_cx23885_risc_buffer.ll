; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_risc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_risc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cx23885_riscmem = type { i32, i32*, i32*, i32 }
%struct.scatterlist = type { i32 }

@UNSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_risc_buffer(%struct.pci_dev* %0, %struct.cx23885_riscmem* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.cx23885_riscmem*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %10, align 8
  store %struct.cx23885_riscmem* %1, %struct.cx23885_riscmem** %11, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* @UNSET, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load i32, i32* %19, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %19, align 4
  br label %27

27:                                               ; preds = %24, %8
  %28 = load i32, i32* @UNSET, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %19, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %19, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = add i32 %36, %37
  %39 = load i32, i32* %17, align 4
  %40 = mul i32 %38, %39
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = udiv i32 %40, %41
  %43 = add i32 1, %42
  %44 = load i32, i32* %17, align 4
  %45 = add i32 %43, %44
  %46 = mul i32 %35, %45
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = add nsw i32 %47, 5
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = mul nsw i32 %49, 12
  %51 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %11, align 8
  %52 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %54 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %11, align 8
  %55 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %11, align 8
  %58 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %57, i32 0, i32 3
  %59 = call i32* @pci_alloc_consistent(%struct.pci_dev* %53, i32 %56, i32* %58)
  %60 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %11, align 8
  %61 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %11, align 8
  %63 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %34
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %123

69:                                               ; preds = %34
  %70 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %11, align 8
  %71 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %20, align 8
  %73 = load i32, i32* @UNSET, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load i32*, i32** %20, align 8
  %78 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32* @cx23885_risc_field(i32* %77, %struct.scatterlist* %78, i32 %79, i32 0, i32 %80, i32 %81, i32 %82, i32 0, i32 1)
  store i32* %83, i32** %20, align 8
  br label %84

84:                                               ; preds = %76, %69
  %85 = load i32, i32* @UNSET, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load i32*, i32** %20, align 8
  %90 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* @UNSET, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32* @cx23885_risc_field(i32* %89, %struct.scatterlist* %90, i32 %91, i32 512, i32 %92, i32 %93, i32 %94, i32 0, i32 %98)
  store i32* %99, i32** %20, align 8
  br label %100

100:                                              ; preds = %88, %84
  %101 = load i32*, i32** %20, align 8
  %102 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %11, align 8
  %103 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %102, i32 0, i32 2
  store i32* %101, i32** %103, align 8
  %104 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %11, align 8
  %105 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %11, align 8
  %108 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = ptrtoint i32* %106 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = add nsw i64 %113, 2
  %115 = mul i64 %114, 4
  %116 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %11, align 8
  %117 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = icmp ugt i64 %115, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @BUG_ON(i32 %121)
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %100, %66
  %124 = load i32, i32* %9, align 4
  ret i32 %124
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
