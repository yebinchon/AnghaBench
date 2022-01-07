; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_free_ring_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_free_ring_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32*, %struct.TYPE_3__*, %struct.TYPE_4__, %struct.pci_dev* }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*)* @atl1c_free_ring_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_free_ring_resources(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %4 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %4, i32 0, i32 3
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pci_free_consistent(%struct.pci_dev* %7, i32 %11, i32* %15, i32 %19)
  %21 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %1
  %32 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %31, %1
  %45 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @put_page(i32* %52)
  %54 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @put_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
