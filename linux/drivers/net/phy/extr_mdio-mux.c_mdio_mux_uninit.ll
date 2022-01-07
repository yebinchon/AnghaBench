; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux.c_mdio_mux_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mux.c_mdio_mux_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_mux_parent_bus = type { %struct.TYPE_2__*, %struct.mdio_mux_child_bus* }
%struct.TYPE_2__ = type { i32 }
%struct.mdio_mux_child_bus = type { %struct.mdio_mux_child_bus*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdio_mux_uninit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mdio_mux_parent_bus*, align 8
  %4 = alloca %struct.mdio_mux_child_bus*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mdio_mux_parent_bus*
  store %struct.mdio_mux_parent_bus* %6, %struct.mdio_mux_parent_bus** %3, align 8
  %7 = load %struct.mdio_mux_parent_bus*, %struct.mdio_mux_parent_bus** %3, align 8
  %8 = getelementptr inbounds %struct.mdio_mux_parent_bus, %struct.mdio_mux_parent_bus* %7, i32 0, i32 1
  %9 = load %struct.mdio_mux_child_bus*, %struct.mdio_mux_child_bus** %8, align 8
  store %struct.mdio_mux_child_bus* %9, %struct.mdio_mux_child_bus** %4, align 8
  br label %10

10:                                               ; preds = %13, %1
  %11 = load %struct.mdio_mux_child_bus*, %struct.mdio_mux_child_bus** %4, align 8
  %12 = icmp ne %struct.mdio_mux_child_bus* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.mdio_mux_child_bus*, %struct.mdio_mux_child_bus** %4, align 8
  %15 = getelementptr inbounds %struct.mdio_mux_child_bus, %struct.mdio_mux_child_bus* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mdiobus_unregister(i32 %16)
  %18 = load %struct.mdio_mux_child_bus*, %struct.mdio_mux_child_bus** %4, align 8
  %19 = getelementptr inbounds %struct.mdio_mux_child_bus, %struct.mdio_mux_child_bus* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mdiobus_free(i32 %20)
  %22 = load %struct.mdio_mux_child_bus*, %struct.mdio_mux_child_bus** %4, align 8
  %23 = getelementptr inbounds %struct.mdio_mux_child_bus, %struct.mdio_mux_child_bus* %22, i32 0, i32 0
  %24 = load %struct.mdio_mux_child_bus*, %struct.mdio_mux_child_bus** %23, align 8
  store %struct.mdio_mux_child_bus* %24, %struct.mdio_mux_child_bus** %4, align 8
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.mdio_mux_parent_bus*, %struct.mdio_mux_parent_bus** %3, align 8
  %27 = getelementptr inbounds %struct.mdio_mux_parent_bus, %struct.mdio_mux_parent_bus* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @put_device(i32* %29)
  ret void
}

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
