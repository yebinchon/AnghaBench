; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_port_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@BNXT_FLAG_PORT_STATS = common dso_local global i32 0, align 4
@BNXT_FLAG_PORT_STATS_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_free_port_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_free_port_stats(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %4 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %5 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %4, i32 0, i32 10
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* @BNXT_FLAG_PORT_STATS, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @BNXT_FLAG_PORT_STATS_EXT, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %30 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %33 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dma_free_coherent(i32* %25, i32 %28, i32* %31, i32 %34)
  %36 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %37 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %36, i32 0, i32 7
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %23, %1
  %39 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %40 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %47 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %50 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dma_free_coherent(i32* %45, i32 4, i32* %48, i32 %51)
  %53 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %54 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %53, i32 0, i32 5
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %43, %38
  %56 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %57 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %64 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %67 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dma_free_coherent(i32* %62, i32 4, i32* %65, i32 %68)
  %70 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %71 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %70, i32 0, i32 3
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %60, %55
  %73 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %74 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %81 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %84 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dma_free_coherent(i32* %79, i32 4, i32* %82, i32 %85)
  %87 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %88 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %77, %72
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
