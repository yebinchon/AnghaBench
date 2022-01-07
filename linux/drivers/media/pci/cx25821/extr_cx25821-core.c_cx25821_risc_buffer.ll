; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_risc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_risc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cx25821_riscmem = type { i32, i32*, i32* }
%struct.scatterlist = type { i32 }

@UNSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_risc_buffer(%struct.pci_dev* %0, %struct.cx25821_riscmem* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.cx25821_riscmem*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %10, align 8
  store %struct.cx25821_riscmem* %1, %struct.cx25821_riscmem** %11, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %22 = load i32, i32* @UNSET, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load i32, i32* %19, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %19, align 4
  br label %28

28:                                               ; preds = %25, %8
  %29 = load i32, i32* @UNSET, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %19, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %19, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add i32 %37, %38
  %40 = load i32, i32* %17, align 4
  %41 = mul i32 %39, %40
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = udiv i32 %41, %42
  %44 = add i32 1, %43
  %45 = load i32, i32* %17, align 4
  %46 = add i32 %44, %45
  %47 = mul i32 %36, %46
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %48, 5
  store i32 %49, i32* %18, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %51 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %11, align 8
  %52 = load i32, i32* %18, align 4
  %53 = mul nsw i32 %52, 12
  %54 = call i32 @cx25821_riscmem_alloc(%struct.pci_dev* %50, %struct.cx25821_riscmem* %51, i32 %53)
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %21, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %35
  %58 = load i32, i32* %21, align 4
  store i32 %58, i32* %9, align 4
  br label %113

59:                                               ; preds = %35
  %60 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %11, align 8
  %61 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %20, align 8
  %63 = load i32, i32* @UNSET, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i32*, i32** %20, align 8
  %68 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i32* @cx25821_risc_field(i32* %67, %struct.scatterlist* %68, i32 %69, i32 0, i32 %70, i32 %71, i32 %72, i32 1)
  store i32* %73, i32** %20, align 8
  br label %74

74:                                               ; preds = %66, %59
  %75 = load i32, i32* @UNSET, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32*, i32** %20, align 8
  %80 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @UNSET, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32* @cx25821_risc_field(i32* %79, %struct.scatterlist* %80, i32 %81, i32 512, i32 %82, i32 %83, i32 %84, i32 %88)
  store i32* %89, i32** %20, align 8
  br label %90

90:                                               ; preds = %78, %74
  %91 = load i32*, i32** %20, align 8
  %92 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %11, align 8
  %93 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %11, align 8
  %95 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %11, align 8
  %98 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = ptrtoint i32* %96 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  %104 = add nsw i64 %103, 3
  %105 = mul i64 %104, 4
  %106 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %11, align 8
  %107 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = icmp ugt i64 %105, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @BUG_ON(i32 %111)
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %90, %57
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32 @cx25821_riscmem_alloc(%struct.pci_dev*, %struct.cx25821_riscmem*, i32) #1

declare dso_local i32* @cx25821_risc_field(i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
