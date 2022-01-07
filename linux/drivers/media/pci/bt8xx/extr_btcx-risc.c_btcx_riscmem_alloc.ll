; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_btcx-risc.c_btcx_riscmem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_btcx-risc.c_btcx_riscmem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.btcx_riscmem = type { i32, i32*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@memcnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"btcx: riscmem alloc [%d] dma=%lx cpu=%p size=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btcx_riscmem_alloc(%struct.pci_dev* %0, %struct.btcx_riscmem* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.btcx_riscmem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.btcx_riscmem* %1, %struct.btcx_riscmem** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %6, align 8
  %11 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* null, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %6, align 8
  %16 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %6, align 8
  %23 = call i32 @btcx_riscmem_free(%struct.pci_dev* %21, %struct.btcx_riscmem* %22)
  br label %24

24:                                               ; preds = %20, %14, %3
  %25 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %6, align 8
  %26 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* null, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32* @pci_alloc_consistent(%struct.pci_dev* %30, i32 %31, i64* %9)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp eq i32* null, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %63

38:                                               ; preds = %29
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %6, align 8
  %41 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %6, align 8
  %44 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %6, align 8
  %47 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @memcnt, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @memcnt, align 4
  %50 = load i32, i32* @memcnt, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %50, i64 %51, i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %38, %24
  %56 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %6, align 8
  %57 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %6, align 8
  %60 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memset(i32* %58, i32 0, i32 %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %55, %35
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @btcx_riscmem_free(%struct.pci_dev*, %struct.btcx_riscmem*) #1

declare dso_local i32* @pci_alloc_consistent(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @dprintk(i8*, i32, i64, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
