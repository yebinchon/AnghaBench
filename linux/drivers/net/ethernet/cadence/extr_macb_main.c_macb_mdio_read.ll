; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.macb* }
%struct.macb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAN = common dso_local global i32 0, align 4
@SOF = common dso_local global i32 0, align 4
@MACB_MAN_SOF = common dso_local global i32 0, align 4
@RW = common dso_local global i32 0, align 4
@MACB_MAN_READ = common dso_local global i32 0, align 4
@PHYA = common dso_local global i32 0, align 4
@REGA = common dso_local global i32 0, align 4
@CODE = common dso_local global i32 0, align 4
@MACB_MAN_CODE = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @macb_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.macb*, align 8
  %8 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %10 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %9, i32 0, i32 0
  %11 = load %struct.macb*, %struct.macb** %10, align 8
  store %struct.macb* %11, %struct.macb** %7, align 8
  %12 = load %struct.macb*, %struct.macb** %7, align 8
  %13 = getelementptr inbounds %struct.macb, %struct.macb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @pm_runtime_get_sync(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %71

20:                                               ; preds = %3
  %21 = load %struct.macb*, %struct.macb** %7, align 8
  %22 = call i32 @macb_mdio_wait_for_idle(%struct.macb* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %60

26:                                               ; preds = %20
  %27 = load %struct.macb*, %struct.macb** %7, align 8
  %28 = load i32, i32* @MAN, align 4
  %29 = load i32, i32* @SOF, align 4
  %30 = load i32, i32* @MACB_MAN_SOF, align 4
  %31 = call i32 @MACB_BF(i32 %29, i32 %30)
  %32 = load i32, i32* @RW, align 4
  %33 = load i32, i32* @MACB_MAN_READ, align 4
  %34 = call i32 @MACB_BF(i32 %32, i32 %33)
  %35 = or i32 %31, %34
  %36 = load i32, i32* @PHYA, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @MACB_BF(i32 %36, i32 %37)
  %39 = or i32 %35, %38
  %40 = load i32, i32* @REGA, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @MACB_BF(i32 %40, i32 %41)
  %43 = or i32 %39, %42
  %44 = load i32, i32* @CODE, align 4
  %45 = load i32, i32* @MACB_MAN_CODE, align 4
  %46 = call i32 @MACB_BF(i32 %44, i32 %45)
  %47 = or i32 %43, %46
  %48 = call i32 @macb_writel(%struct.macb* %27, i32 %28, i32 %47)
  %49 = load %struct.macb*, %struct.macb** %7, align 8
  %50 = call i32 @macb_mdio_wait_for_idle(%struct.macb* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %26
  br label %60

54:                                               ; preds = %26
  %55 = load i32, i32* @DATA, align 4
  %56 = load %struct.macb*, %struct.macb** %7, align 8
  %57 = load i32, i32* @MAN, align 4
  %58 = call i32 @macb_readl(%struct.macb* %56, i32 %57)
  %59 = call i32 @MACB_BFEXT(i32 %55, i32 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %54, %53, %25
  %61 = load %struct.macb*, %struct.macb** %7, align 8
  %62 = getelementptr inbounds %struct.macb, %struct.macb* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @pm_runtime_mark_last_busy(i32* %64)
  %66 = load %struct.macb*, %struct.macb** %7, align 8
  %67 = getelementptr inbounds %struct.macb, %struct.macb* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @pm_runtime_put_autosuspend(i32* %69)
  br label %71

71:                                               ; preds = %60, %19
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @macb_mdio_wait_for_idle(%struct.macb*) #1

declare dso_local i32 @macb_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @MACB_BF(i32, i32) #1

declare dso_local i32 @MACB_BFEXT(i32, i32) #1

declare dso_local i32 @macb_readl(%struct.macb*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
