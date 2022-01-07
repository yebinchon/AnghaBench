; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_core_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_core_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_priv = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@MDIO_MUTEX_NESTED = common dso_local global i32 0, align 4
@MDIO_MMD_VEND2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7530_priv*, i32, i32)* @core_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_write(%struct.mt7530_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7530_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mii_bus*, align 8
  store %struct.mt7530_priv* %0, %struct.mt7530_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %8, i32 0, i32 0
  %10 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  store %struct.mii_bus* %10, %struct.mii_bus** %7, align 8
  %11 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load i32, i32* @MDIO_MUTEX_NESTED, align 4
  %14 = call i32 @mutex_lock_nested(i32* %12, i32 %13)
  %15 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @core_write_mmd_indirect(%struct.mt7530_priv* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %21 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  ret void
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @core_write_mmd_indirect(%struct.mt7530_priv*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
