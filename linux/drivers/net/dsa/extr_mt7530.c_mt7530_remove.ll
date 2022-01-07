; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { i32 }
%struct.mt7530_priv = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to disable core power: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to disable io pwr: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdio_device*)* @mt7530_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_remove(%struct.mdio_device* %0) #0 {
  %2 = alloca %struct.mdio_device*, align 8
  %3 = alloca %struct.mt7530_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mdio_device* %0, %struct.mdio_device** %2, align 8
  %5 = load %struct.mdio_device*, %struct.mdio_device** %2, align 8
  %6 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %5, i32 0, i32 0
  %7 = call %struct.mt7530_priv* @dev_get_drvdata(i32* %6)
  store %struct.mt7530_priv* %7, %struct.mt7530_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @regulator_disable(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regulator_disable(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %35 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dsa_unregister_switch(i32 %36)
  %38 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %39 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %38, i32 0, i32 0
  %40 = call i32 @mutex_destroy(i32* %39)
  ret void
}

declare dso_local %struct.mt7530_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dsa_unregister_switch(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
