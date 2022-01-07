; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_mii_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_mii_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_priv = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32)*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to read mt7530 register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7530_priv*, i32)* @mt7530_mii_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_mii_read(%struct.mt7530_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7530_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mt7530_priv* %0, %struct.mt7530_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %12, i32 0, i32 0
  %14 = load %struct.mii_bus*, %struct.mii_bus** %13, align 8
  store %struct.mii_bus* %14, %struct.mii_bus** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 6
  %17 = and i32 %16, 1023
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 2
  %20 = and i32 %19, 15
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %22 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %21, i32 0, i32 0
  %23 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %22, align 8
  %24 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 %23(%struct.mii_bus* %24, i32 31, i32 31, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %31 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %30, i32 0, i32 2
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %3, align 4
  br label %51

34:                                               ; preds = %2
  %35 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %36 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %35, i32 0, i32 1
  %37 = load i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32)** %36, align 8
  %38 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 %37(%struct.mii_bus* %38, i32 31, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %42 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %41, i32 0, i32 1
  %43 = load i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32)** %42, align 8
  %44 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %45 = call i32 %43(%struct.mii_bus* %44, i32 31, i32 16)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 65535
  %50 = or i32 %47, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %34, %29
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
