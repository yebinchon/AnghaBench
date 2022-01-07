; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c_mdiobus_alloc_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c_mdiobus_alloc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32*, i8*, i32 }

@NETDEV_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MDIOBUS_ALLOCATED = common dso_local global i32 0, align 4
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@PHY_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mii_bus* @mdiobus_alloc_size(i64 %0) #0 {
  %2 = alloca %struct.mii_bus*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i32, i32* @NETDEV_ALIGN, align 4
  %9 = call i64 @ALIGN(i32 24, i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %6, align 8
  br label %17

16:                                               ; preds = %1
  store i64 24, i64* %6, align 8
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.mii_bus* @kzalloc(i64 %18, i32 %19)
  store %struct.mii_bus* %20, %struct.mii_bus** %4, align 8
  %21 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %22 = icmp ne %struct.mii_bus* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store %struct.mii_bus* null, %struct.mii_bus** %2, align 8
  br label %55

24:                                               ; preds = %17
  %25 = load i32, i32* @MDIOBUS_ALLOCATED, align 4
  %26 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %27 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %32 = bitcast %struct.mii_bus* %31 to i8*
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr i8, i8* %32, i64 %33
  %35 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %36 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %30, %24
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PHY_MAX_ADDR, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* @PHY_POLL, align 4
  %44 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %45 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %38

53:                                               ; preds = %38
  %54 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  store %struct.mii_bus* %54, %struct.mii_bus** %2, align 8
  br label %55

55:                                               ; preds = %53, %23
  %56 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  ret %struct.mii_bus* %56
}

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local %struct.mii_bus* @kzalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
