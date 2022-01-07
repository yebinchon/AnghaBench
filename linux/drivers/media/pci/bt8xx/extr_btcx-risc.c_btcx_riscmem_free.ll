; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_btcx-risc.c_btcx_riscmem_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_btcx-risc.c_btcx_riscmem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.btcx_riscmem = type { i64, i32*, i32 }

@memcnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"btcx: riscmem free [%d] dma=%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btcx_riscmem_free(%struct.pci_dev* %0, %struct.btcx_riscmem* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.btcx_riscmem*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.btcx_riscmem* %1, %struct.btcx_riscmem** %4, align 8
  %5 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %4, align 8
  %6 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* null, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %31

10:                                               ; preds = %2
  %11 = load i32, i32* @memcnt, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* @memcnt, align 4
  %13 = load i32, i32* @memcnt, align 4
  %14 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %4, align 8
  %15 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %4, align 8
  %20 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %4, align 8
  %23 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %4, align 8
  %26 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @pci_free_consistent(%struct.pci_dev* %18, i32 %21, i32* %24, i64 %27)
  %29 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %4, align 8
  %30 = call i32 @memset(%struct.btcx_riscmem* %29, i32 0, i32 24)
  br label %31

31:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i64) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i64) #1

declare dso_local i32 @memset(%struct.btcx_riscmem*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
