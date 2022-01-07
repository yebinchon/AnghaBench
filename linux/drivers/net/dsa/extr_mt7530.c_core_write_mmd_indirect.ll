; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_core_write_mmd_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_core_write_mmd_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_priv = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 (%struct.mii_bus*, i32, i32, i32)*, i32 }

@MII_MMD_CTRL = common dso_local global i32 0, align 4
@MII_MMD_DATA = common dso_local global i32 0, align 4
@MII_MMD_CTRL_NOINCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to write mmd register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7530_priv*, i32, i32, i32)* @core_write_mmd_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_write_mmd_indirect(%struct.mt7530_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mt7530_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mii_bus*, align 8
  %10 = alloca i32, align 4
  store %struct.mt7530_priv* %0, %struct.mt7530_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %11, i32 0, i32 0
  %13 = load %struct.mii_bus*, %struct.mii_bus** %12, align 8
  store %struct.mii_bus* %13, %struct.mii_bus** %9, align 8
  %14 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 0
  %16 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %15, align 8
  %17 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %18 = load i32, i32* @MII_MMD_CTRL, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 %16(%struct.mii_bus* %17, i32 0, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %56

24:                                               ; preds = %4
  %25 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %26 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %25, i32 0, i32 0
  %27 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %26, align 8
  %28 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %29 = load i32, i32* @MII_MMD_DATA, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 %27(%struct.mii_bus* %28, i32 0, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %56

35:                                               ; preds = %24
  %36 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %37 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %36, i32 0, i32 0
  %38 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %37, align 8
  %39 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %40 = load i32, i32* @MII_MMD_CTRL, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MII_MMD_CTRL_NOINCR, align 4
  %43 = or i32 %41, %42
  %44 = call i32 %38(%struct.mii_bus* %39, i32 0, i32 %40, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %56

48:                                               ; preds = %35
  %49 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %50 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %49, i32 0, i32 0
  %51 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %50, align 8
  %52 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %53 = load i32, i32* @MII_MMD_DATA, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 %51(%struct.mii_bus* %52, i32 0, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %48, %47, %34, %23
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %61 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %60, i32 0, i32 1
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
