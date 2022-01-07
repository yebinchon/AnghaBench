; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_dsa_loop.c_dsa_loop_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_dsa_loop.c_dsa_loop_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.dsa_loop_priv* }
%struct.dsa_loop_priv = type { %struct.TYPE_3__*, i64, %struct.mii_bus* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mii_bus = type { i32 }

@DSA_LOOP_PHY_READ_ERR = common dso_local global i64 0, align 8
@DSA_LOOP_PHY_READ_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i32)* @dsa_loop_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_loop_phy_read(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsa_loop_priv*, align 8
  %8 = alloca %struct.mii_bus*, align 8
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.dsa_loop_priv*, %struct.dsa_loop_priv** %11, align 8
  store %struct.dsa_loop_priv* %12, %struct.dsa_loop_priv** %7, align 8
  %13 = load %struct.dsa_loop_priv*, %struct.dsa_loop_priv** %7, align 8
  %14 = getelementptr inbounds %struct.dsa_loop_priv, %struct.dsa_loop_priv* %13, i32 0, i32 2
  %15 = load %struct.mii_bus*, %struct.mii_bus** %14, align 8
  store %struct.mii_bus* %15, %struct.mii_bus** %8, align 8
  %16 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  %17 = load %struct.dsa_loop_priv*, %struct.dsa_loop_priv** %7, align 8
  %18 = getelementptr inbounds %struct.dsa_loop_priv, %struct.dsa_loop_priv* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @mdiobus_read_nested(%struct.mii_bus* %16, i64 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %3
  %28 = load %struct.dsa_loop_priv*, %struct.dsa_loop_priv** %7, align 8
  %29 = getelementptr inbounds %struct.dsa_loop_priv, %struct.dsa_loop_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* @DSA_LOOP_PHY_READ_ERR, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %55

41:                                               ; preds = %3
  %42 = load %struct.dsa_loop_priv*, %struct.dsa_loop_priv** %7, align 8
  %43 = getelementptr inbounds %struct.dsa_loop_priv, %struct.dsa_loop_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* @DSA_LOOP_PHY_READ_OK, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %41, %27
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @mdiobus_read_nested(%struct.mii_bus*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
