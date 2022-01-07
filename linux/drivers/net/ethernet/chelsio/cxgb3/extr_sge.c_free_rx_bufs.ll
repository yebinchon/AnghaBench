; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_free_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_free_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sge_fl = type { i32, i32, %struct.TYPE_2__, i32, %struct.rx_sw_desc*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.rx_sw_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.sge_fl*)* @free_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rx_bufs(%struct.pci_dev* %0, %struct.sge_fl* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.sge_fl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rx_sw_desc*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %4, align 8
  %7 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %8 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %34, %2
  %11 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %12 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %10
  %17 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %18 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %17, i32 0, i32 4
  %19 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %19, i64 %21
  store %struct.rx_sw_desc* %22, %struct.rx_sw_desc** %6, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %25 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %6, align 8
  %26 = call i32 @clear_rx_desc(%struct.pci_dev* %23, %struct.sge_fl* %24, %struct.rx_sw_desc* %25)
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %30 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %16
  br label %10

35:                                               ; preds = %10
  %36 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %37 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %43 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %47 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @__free_pages(i32* %45, i32 %48)
  %50 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %51 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %41, %35
  ret void
}

declare dso_local i32 @clear_rx_desc(%struct.pci_dev*, %struct.sge_fl*, %struct.rx_sw_desc*) #1

declare dso_local i32 @__free_pages(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
