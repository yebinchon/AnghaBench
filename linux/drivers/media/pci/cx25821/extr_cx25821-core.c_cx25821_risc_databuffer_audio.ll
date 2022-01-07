; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_risc_databuffer_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_risc_databuffer_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cx25821_riscmem = type { i32, i32*, i32* }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@NO_SYNC_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_risc_databuffer_audio(%struct.pci_dev* %0, %struct.cx25821_riscmem* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.cx25821_riscmem*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %8, align 8
  store %struct.cx25821_riscmem* %1, %struct.cx25821_riscmem** %9, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = mul i32 %17, %18
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = udiv i32 %19, %20
  %22 = add i32 1, %21
  %23 = load i32, i32* %12, align 4
  %24 = add i32 %22, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %14, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %28 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %9, align 8
  %29 = load i32, i32* %14, align 4
  %30 = mul nsw i32 %29, 12
  %31 = call i32 @cx25821_riscmem_alloc(%struct.pci_dev* %27, %struct.cx25821_riscmem* %28, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %7, align 4
  br label %69

36:                                               ; preds = %6
  %37 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %9, align 8
  %38 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %15, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %42 = load i32, i32* @NO_SYNC_LINE, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32* @cx25821_risc_field_audio(i32* %40, %struct.scatterlist* %41, i32 0, i32 %42, i32 %43, i32 0, i32 %44, i32 %45)
  store i32* %46, i32** %15, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %9, align 8
  %49 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %9, align 8
  %51 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %9, align 8
  %54 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = ptrtoint i32* %52 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = add nsw i64 %59, 2
  %61 = mul i64 %60, 4
  %62 = load %struct.cx25821_riscmem*, %struct.cx25821_riscmem** %9, align 8
  %63 = getelementptr inbounds %struct.cx25821_riscmem, %struct.cx25821_riscmem* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp ugt i64 %61, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %36, %34
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @cx25821_riscmem_alloc(%struct.pci_dev*, %struct.cx25821_riscmem*, i32) #1

declare dso_local i32* @cx25821_risc_field_audio(i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
