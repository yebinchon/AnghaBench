; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_ring_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_ring_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_rx = type { i32, i32, i64, i64, i32*, %struct.TYPE_2__*, i32*, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_rx*)* @lan743x_rx_ring_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_rx_ring_cleanup(%struct.lan743x_rx* %0) #0 {
  %2 = alloca %struct.lan743x_rx*, align 8
  %3 = alloca i32, align 4
  store %struct.lan743x_rx* %0, %struct.lan743x_rx** %2, align 8
  %4 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %5 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %4, i32 0, i32 6
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %10 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %17 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @lan743x_rx_release_ring_element(%struct.lan743x_rx* %21, i32 %22)
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %14

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %8, %1
  %29 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %30 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %29, i32 0, i32 8
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %35 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %40 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %39, i32 0, i32 8
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %43 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @pci_free_consistent(i32 %38, i32 4, i32* %41, i64 %44)
  %46 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %47 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %46, i32 0, i32 8
  store i32* null, i32** %47, align 8
  %48 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %49 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %33, %28
  %51 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %52 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @kfree(i32* %53)
  %55 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %56 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %55, i32 0, i32 6
  store i32* null, i32** %56, align 8
  %57 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %58 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %83

61:                                               ; preds = %50
  %62 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %63 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %62, i32 0, i32 5
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %68 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %71 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %74 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @pci_free_consistent(i32 %66, i32 %69, i32* %72, i64 %75)
  %77 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %78 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %80 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %79, i32 0, i32 4
  store i32* null, i32** %80, align 8
  %81 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %82 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %61, %50
  %84 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %85 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %87 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  ret void
}

declare dso_local i32 @lan743x_rx_release_ring_element(%struct.lan743x_rx*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
