; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lif_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lif_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, i32, i32*, i32*, %struct.TYPE_2__*, i64, i32*, i32, i64, i32*, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_lif*)* @ionic_lif_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_lif_free(%struct.ionic_lif* %0) #0 {
  %2 = alloca %struct.ionic_lif*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.ionic_lif* %0, %struct.ionic_lif** %2, align 8
  %4 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %5 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %11 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %14 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %13, i32 0, i32 9
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %17 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dma_free_coherent(%struct.device* %9, i32 %12, i32* %15, i64 %18)
  %20 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %21 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %20, i32 0, i32 9
  store i32* null, i32** %21, align 8
  %22 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %23 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %22, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %25 = call i32 @ionic_qcqs_free(%struct.ionic_lif* %24)
  %26 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %27 = call i32 @ionic_lif_reset(%struct.ionic_lif* %26)
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %30 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %33 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %36 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dma_free_coherent(%struct.device* %28, i32 %31, i32* %34, i64 %37)
  %39 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %40 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %39, i32 0, i32 6
  store i32* null, i32** %40, align 8
  %41 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %42 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %44 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %47 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ionic_bus_unmap_dbpage(%struct.TYPE_2__* %45, i32* %48)
  %50 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %51 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %50, i32 0, i32 3
  store i32* null, i32** %51, align 8
  %52 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %53 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %57 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %59 = call i32 @ionic_debugfs_del_lif(%struct.ionic_lif* %58)
  %60 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %61 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %60, i32 0, i32 1
  %62 = call i32 @list_del(i32* %61)
  %63 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %64 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @free_netdev(i32 %65)
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i64) #1

declare dso_local i32 @ionic_qcqs_free(%struct.ionic_lif*) #1

declare dso_local i32 @ionic_lif_reset(%struct.ionic_lif*) #1

declare dso_local i32 @ionic_bus_unmap_dbpage(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ionic_debugfs_del_lif(%struct.ionic_lif*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
