; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_mii_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_priv = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 (%struct.mii_bus*, i32, i32, i32)*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to write mt7530 register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7530_priv*, i32, i32)* @mt7530_mii_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_mii_write(%struct.mt7530_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7530_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mt7530_priv* %0, %struct.mt7530_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %13, i32 0, i32 0
  %15 = load %struct.mii_bus*, %struct.mii_bus** %14, align 8
  store %struct.mii_bus* %15, %struct.mii_bus** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 6
  %18 = and i32 %17, 1023
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 2
  %21 = and i32 %20, 15
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 65535
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 16
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %27 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %26, i32 0, i32 0
  %28 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %27, align 8
  %29 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 %28(%struct.mii_bus* %29, i32 31, i32 31, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %53

35:                                               ; preds = %3
  %36 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %37 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %36, i32 0, i32 0
  %38 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %37, align 8
  %39 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 %38(%struct.mii_bus* %39, i32 31, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %53

46:                                               ; preds = %35
  %47 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %48 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %47, i32 0, i32 0
  %49 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %48, align 8
  %50 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 %49(%struct.mii_bus* %50, i32 31, i32 16, i32 %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %46, %45, %34
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %58 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %57, i32 0, i32 1
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %12, align 4
  ret i32 %61
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
