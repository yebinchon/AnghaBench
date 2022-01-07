; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_ring_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_ring_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_tx = type { i8*, i32, i64, i64, %struct.TYPE_2__*, i32*, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_tx*)* @lan743x_tx_ring_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_tx_ring_cleanup(%struct.lan743x_tx* %0) #0 {
  %2 = alloca %struct.lan743x_tx*, align 8
  store %struct.lan743x_tx* %0, %struct.lan743x_tx** %2, align 8
  %3 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %4 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %3, i32 0, i32 7
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %9 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %14 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %18 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pci_free_consistent(i32 %12, i32 4, i8* %16, i64 %19)
  %21 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %22 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %21, i32 0, i32 7
  store i32* null, i32** %22, align 8
  %23 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %24 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %7, %1
  %26 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %27 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %31 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %30, i32 0, i32 5
  store i32* null, i32** %31, align 8
  %32 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %33 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %25
  %37 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %38 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %43 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %46 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %49 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @pci_free_consistent(i32 %41, i32 %44, i8* %47, i64 %50)
  %52 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %53 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %55 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %54, i32 0, i32 0
  store i8* null, i8** %55, align 8
  %56 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %57 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %36, %25
  %59 = load %struct.lan743x_tx*, %struct.lan743x_tx** %2, align 8
  %60 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i8*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
