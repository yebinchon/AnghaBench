; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.macb* }
%struct.macb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAN = common dso_local global i32 0, align 4
@SOF = common dso_local global i32 0, align 4
@MACB_MAN_SOF = common dso_local global i32 0, align 4
@RW = common dso_local global i32 0, align 4
@MACB_MAN_WRITE = common dso_local global i32 0, align 4
@PHYA = common dso_local global i32 0, align 4
@REGA = common dso_local global i32 0, align 4
@CODE = common dso_local global i32 0, align 4
@MACB_MAN_CODE = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @macb_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.macb*, align 8
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.macb*, %struct.macb** %12, align 8
  store %struct.macb* %13, %struct.macb** %9, align 8
  %14 = load %struct.macb*, %struct.macb** %9, align 8
  %15 = getelementptr inbounds %struct.macb, %struct.macb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @pm_runtime_get_sync(i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %72

22:                                               ; preds = %4
  %23 = load %struct.macb*, %struct.macb** %9, align 8
  %24 = call i32 @macb_mdio_wait_for_idle(%struct.macb* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %61

28:                                               ; preds = %22
  %29 = load %struct.macb*, %struct.macb** %9, align 8
  %30 = load i32, i32* @MAN, align 4
  %31 = load i32, i32* @SOF, align 4
  %32 = load i32, i32* @MACB_MAN_SOF, align 4
  %33 = call i32 @MACB_BF(i32 %31, i32 %32)
  %34 = load i32, i32* @RW, align 4
  %35 = load i32, i32* @MACB_MAN_WRITE, align 4
  %36 = call i32 @MACB_BF(i32 %34, i32 %35)
  %37 = or i32 %33, %36
  %38 = load i32, i32* @PHYA, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @MACB_BF(i32 %38, i32 %39)
  %41 = or i32 %37, %40
  %42 = load i32, i32* @REGA, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @MACB_BF(i32 %42, i32 %43)
  %45 = or i32 %41, %44
  %46 = load i32, i32* @CODE, align 4
  %47 = load i32, i32* @MACB_MAN_CODE, align 4
  %48 = call i32 @MACB_BF(i32 %46, i32 %47)
  %49 = or i32 %45, %48
  %50 = load i32, i32* @DATA, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @MACB_BF(i32 %50, i32 %51)
  %53 = or i32 %49, %52
  %54 = call i32 @macb_writel(%struct.macb* %29, i32 %30, i32 %53)
  %55 = load %struct.macb*, %struct.macb** %9, align 8
  %56 = call i32 @macb_mdio_wait_for_idle(%struct.macb* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %28
  br label %61

60:                                               ; preds = %28
  br label %61

61:                                               ; preds = %60, %59, %27
  %62 = load %struct.macb*, %struct.macb** %9, align 8
  %63 = getelementptr inbounds %struct.macb, %struct.macb* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @pm_runtime_mark_last_busy(i32* %65)
  %67 = load %struct.macb*, %struct.macb** %9, align 8
  %68 = getelementptr inbounds %struct.macb, %struct.macb* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @pm_runtime_put_autosuspend(i32* %70)
  br label %72

72:                                               ; preds = %61, %21
  %73 = load i32, i32* %10, align 4
  ret i32 %73
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @macb_mdio_wait_for_idle(%struct.macb*) #1

declare dso_local i32 @macb_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @MACB_BF(i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
