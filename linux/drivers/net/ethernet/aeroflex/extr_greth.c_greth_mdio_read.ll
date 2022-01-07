; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.greth_private* }
%struct.greth_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@GRETH_MII_NVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @greth_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greth_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.greth_private*, align 8
  %9 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 0
  %12 = load %struct.greth_private*, %struct.greth_private** %11, align 8
  store %struct.greth_private* %12, %struct.greth_private** %8, align 8
  %13 = load %struct.greth_private*, %struct.greth_private** %8, align 8
  %14 = call i32 @wait_for_mdio(%struct.greth_private* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  %20 = load %struct.greth_private*, %struct.greth_private** %8, align 8
  %21 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 31
  %27 = shl i32 %26, 11
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 31
  %30 = shl i32 %29, 6
  %31 = or i32 %27, %30
  %32 = or i32 %31, 2
  %33 = call i32 @GRETH_REGSAVE(i32 %24, i32 %32)
  %34 = load %struct.greth_private*, %struct.greth_private** %8, align 8
  %35 = call i32 @wait_for_mdio(%struct.greth_private* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %19
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %61

40:                                               ; preds = %19
  %41 = load %struct.greth_private*, %struct.greth_private** %8, align 8
  %42 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @GRETH_REGLOAD(i32 %45)
  %47 = load i32, i32* @GRETH_MII_NVALID, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %40
  %51 = load %struct.greth_private*, %struct.greth_private** %8, align 8
  %52 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @GRETH_REGLOAD(i32 %55)
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 65535
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %50, %37, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @wait_for_mdio(%struct.greth_private*) #1

declare dso_local i32 @GRETH_REGSAVE(i32, i32) #1

declare dso_local i32 @GRETH_REGLOAD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
