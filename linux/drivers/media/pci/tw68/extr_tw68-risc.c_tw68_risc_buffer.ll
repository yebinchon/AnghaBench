; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-risc.c_tw68_risc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-risc.c_tw68_risc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.tw68_buf = type { i32, i32*, i32*, i64 }
%struct.scatterlist = type { i32 }

@UNSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw68_risc_buffer(%struct.pci_dev* %0, %struct.tw68_buf* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.tw68_buf*, align 8
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
  store %struct.tw68_buf* %1, %struct.tw68_buf** %11, align 8
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
  %47 = add i32 %46, 4
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = mul nsw i32 %48, 8
  %50 = load %struct.tw68_buf*, %struct.tw68_buf** %11, align 8
  %51 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %53 = load %struct.tw68_buf*, %struct.tw68_buf** %11, align 8
  %54 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tw68_buf*, %struct.tw68_buf** %11, align 8
  %57 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %56, i32 0, i32 3
  %58 = call i32* @pci_alloc_consistent(%struct.pci_dev* %52, i32 %55, i64* %57)
  %59 = load %struct.tw68_buf*, %struct.tw68_buf** %11, align 8
  %60 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load %struct.tw68_buf*, %struct.tw68_buf** %11, align 8
  %62 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %34
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %131

68:                                               ; preds = %34
  %69 = load %struct.tw68_buf*, %struct.tw68_buf** %11, align 8
  %70 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %20, align 8
  %72 = load i32, i32* @UNSET, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load i32*, i32** %20, align 8
  %77 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32* @tw68_risc_field(i32* %76, %struct.scatterlist* %77, i32 %78, i32 1, i32 %79, i32 %80, i32 %81, i32 1)
  store i32* %82, i32** %20, align 8
  br label %83

83:                                               ; preds = %75, %68
  %84 = load i32, i32* @UNSET, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load i32*, i32** %20, align 8
  %89 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @UNSET, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32* @tw68_risc_field(i32* %88, %struct.scatterlist* %89, i32 %90, i32 2, i32 %91, i32 %92, i32 %93, i32 %97)
  store i32* %98, i32** %20, align 8
  br label %99

99:                                               ; preds = %87, %83
  %100 = load i32*, i32** %20, align 8
  %101 = load %struct.tw68_buf*, %struct.tw68_buf** %11, align 8
  %102 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %101, i32 0, i32 2
  store i32* %100, i32** %102, align 8
  %103 = load %struct.tw68_buf*, %struct.tw68_buf** %11, align 8
  %104 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 8
  %107 = call i32 @cpu_to_le32(i64 %106)
  %108 = load %struct.tw68_buf*, %struct.tw68_buf** %11, align 8
  %109 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 %107, i32* %111, align 4
  %112 = load %struct.tw68_buf*, %struct.tw68_buf** %11, align 8
  %113 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.tw68_buf*, %struct.tw68_buf** %11, align 8
  %116 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = ptrtoint i32* %114 to i64
  %119 = ptrtoint i32* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 4
  %122 = add nsw i64 %121, 2
  %123 = mul i64 %122, 4
  %124 = load %struct.tw68_buf*, %struct.tw68_buf** %11, align 8
  %125 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = icmp ugt i64 %123, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @BUG_ON(i32 %129)
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %99, %65
  %132 = load i32, i32* %9, align 4
  ret i32 %132
}

declare dso_local i32* @pci_alloc_consistent(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32* @tw68_risc_field(i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
