; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux.c_mdio_mux_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux.c_mdio_mux_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.mdio_mux_child_bus* }
%struct.mdio_mux_child_bus = type { i32, %struct.mdio_mux_parent_bus* }
%struct.mdio_mux_parent_bus = type { i32 (i32, i32, i32)*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i32)*, i32 }

@MDIO_MUTEX_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @mdio_mux_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_mux_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdio_mux_child_bus*, align 8
  %8 = alloca %struct.mdio_mux_parent_bus*, align 8
  %9 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 0
  %12 = load %struct.mdio_mux_child_bus*, %struct.mdio_mux_child_bus** %11, align 8
  store %struct.mdio_mux_child_bus* %12, %struct.mdio_mux_child_bus** %7, align 8
  %13 = load %struct.mdio_mux_child_bus*, %struct.mdio_mux_child_bus** %7, align 8
  %14 = getelementptr inbounds %struct.mdio_mux_child_bus, %struct.mdio_mux_child_bus* %13, i32 0, i32 1
  %15 = load %struct.mdio_mux_parent_bus*, %struct.mdio_mux_parent_bus** %14, align 8
  store %struct.mdio_mux_parent_bus* %15, %struct.mdio_mux_parent_bus** %8, align 8
  %16 = load %struct.mdio_mux_parent_bus*, %struct.mdio_mux_parent_bus** %8, align 8
  %17 = getelementptr inbounds %struct.mdio_mux_parent_bus, %struct.mdio_mux_parent_bus* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* @MDIO_MUTEX_MUX, align 4
  %21 = call i32 @mutex_lock_nested(i32* %19, i32 %20)
  %22 = load %struct.mdio_mux_parent_bus*, %struct.mdio_mux_parent_bus** %8, align 8
  %23 = getelementptr inbounds %struct.mdio_mux_parent_bus, %struct.mdio_mux_parent_bus* %22, i32 0, i32 0
  %24 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %23, align 8
  %25 = load %struct.mdio_mux_parent_bus*, %struct.mdio_mux_parent_bus** %8, align 8
  %26 = getelementptr inbounds %struct.mdio_mux_parent_bus, %struct.mdio_mux_parent_bus* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mdio_mux_child_bus*, %struct.mdio_mux_child_bus** %7, align 8
  %29 = getelementptr inbounds %struct.mdio_mux_child_bus, %struct.mdio_mux_child_bus* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mdio_mux_parent_bus*, %struct.mdio_mux_parent_bus** %8, align 8
  %32 = getelementptr inbounds %struct.mdio_mux_parent_bus, %struct.mdio_mux_parent_bus* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %24(i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %55

38:                                               ; preds = %3
  %39 = load %struct.mdio_mux_child_bus*, %struct.mdio_mux_child_bus** %7, align 8
  %40 = getelementptr inbounds %struct.mdio_mux_child_bus, %struct.mdio_mux_child_bus* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mdio_mux_parent_bus*, %struct.mdio_mux_parent_bus** %8, align 8
  %43 = getelementptr inbounds %struct.mdio_mux_parent_bus, %struct.mdio_mux_parent_bus* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mdio_mux_parent_bus*, %struct.mdio_mux_parent_bus** %8, align 8
  %45 = getelementptr inbounds %struct.mdio_mux_parent_bus, %struct.mdio_mux_parent_bus* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_2__*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32)** %47, align 8
  %49 = load %struct.mdio_mux_parent_bus*, %struct.mdio_mux_parent_bus** %8, align 8
  %50 = getelementptr inbounds %struct.mdio_mux_parent_bus, %struct.mdio_mux_parent_bus* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 %48(%struct.TYPE_2__* %51, i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %38, %37
  %56 = load %struct.mdio_mux_parent_bus*, %struct.mdio_mux_parent_bus** %8, align 8
  %57 = getelementptr inbounds %struct.mdio_mux_parent_bus, %struct.mdio_mux_parent_bus* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
