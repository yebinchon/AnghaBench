; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_bus_pci.c_ionic_unmap_bars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_bus_pci.c_ionic_unmap_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { %struct.ionic_dev_bar* }
%struct.ionic_dev_bar = type { i64, i32*, i64 }

@IONIC_BARS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic*)* @ionic_unmap_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_unmap_bars(%struct.ionic* %0) #0 {
  %2 = alloca %struct.ionic*, align 8
  %3 = alloca %struct.ionic_dev_bar*, align 8
  %4 = alloca i32, align 4
  store %struct.ionic* %0, %struct.ionic** %2, align 8
  %5 = load %struct.ionic*, %struct.ionic** %2, align 8
  %6 = getelementptr inbounds %struct.ionic, %struct.ionic* %5, i32 0, i32 0
  %7 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %6, align 8
  store %struct.ionic_dev_bar* %7, %struct.ionic_dev_bar** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %44, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IONIC_BARS_MAX, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %13, i64 %15
  %17 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %12
  %21 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %21, i64 %23
  %25 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @iounmap(i32* %26)
  %28 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %28, i64 %30
  %32 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %33, i64 %35
  %37 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %38, i64 %40
  %42 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %20, %12
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %8

47:                                               ; preds = %8
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
