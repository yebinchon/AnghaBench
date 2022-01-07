; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_risc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_risc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cx88_riscmem = type { i32, i32*, i32*, i64 }
%struct.scatterlist = type { i32 }

@UNSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_risc_buffer(%struct.pci_dev* %0, %struct.cx88_riscmem* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.cx88_riscmem*, align 8
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
  store %struct.cx88_riscmem* %1, %struct.cx88_riscmem** %11, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @UNSET, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load i32, i32* %19, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %19, align 4
  br label %27

27:                                               ; preds = %24, %8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @UNSET, align 4
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
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = mul nsw i32 %49, 8
  %51 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %11, align 8
  %52 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %11, align 8
  %54 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %56 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %11, align 8
  %57 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %11, align 8
  %60 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %59, i32 0, i32 3
  %61 = call i32* @pci_zalloc_consistent(%struct.pci_dev* %55, i32 %58, i64* %60)
  %62 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %11, align 8
  %63 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %11, align 8
  %65 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %34
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %125

71:                                               ; preds = %34
  %72 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %11, align 8
  %73 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %20, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @UNSET, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load i32*, i32** %20, align 8
  %80 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32* @cx88_risc_field(i32* %79, %struct.scatterlist* %80, i32 %81, i32 0, i32 %82, i32 %83, i32 %84, i32 0, i32 1)
  store i32* %85, i32** %20, align 8
  br label %86

86:                                               ; preds = %78, %71
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @UNSET, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load i32*, i32** %20, align 8
  %92 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @UNSET, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32* @cx88_risc_field(i32* %91, %struct.scatterlist* %92, i32 %93, i32 512, i32 %94, i32 %95, i32 %96, i32 0, i32 %100)
  store i32* %101, i32** %20, align 8
  br label %102

102:                                              ; preds = %90, %86
  %103 = load i32*, i32** %20, align 8
  %104 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %11, align 8
  %105 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %104, i32 0, i32 2
  store i32* %103, i32** %105, align 8
  %106 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %11, align 8
  %107 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %11, align 8
  %110 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = ptrtoint i32* %108 to i64
  %113 = ptrtoint i32* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 4
  %116 = add nsw i64 %115, 2
  %117 = mul i64 %116, 4
  %118 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %11, align 8
  %119 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = icmp ugt i64 %117, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @WARN_ON(i32 %123)
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %102, %68
  %126 = load i32, i32* %9, align 4
  ret i32 %126
}

declare dso_local i32* @pci_zalloc_consistent(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32* @cx88_risc_field(i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
