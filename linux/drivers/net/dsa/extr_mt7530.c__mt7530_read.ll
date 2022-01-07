; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c__mt7530_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c__mt7530_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_dummy_poll = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@MDIO_MUTEX_NESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7530_dummy_poll*)* @_mt7530_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mt7530_read(%struct.mt7530_dummy_poll* %0) #0 {
  %2 = alloca %struct.mt7530_dummy_poll*, align 8
  %3 = alloca %struct.mii_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.mt7530_dummy_poll* %0, %struct.mt7530_dummy_poll** %2, align 8
  %5 = load %struct.mt7530_dummy_poll*, %struct.mt7530_dummy_poll** %2, align 8
  %6 = getelementptr inbounds %struct.mt7530_dummy_poll, %struct.mt7530_dummy_poll* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  store %struct.mii_bus* %9, %struct.mii_bus** %3, align 8
  %10 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 0
  %12 = load i32, i32* @MDIO_MUTEX_NESTED, align 4
  %13 = call i32 @mutex_lock_nested(i32* %11, i32 %12)
  %14 = load %struct.mt7530_dummy_poll*, %struct.mt7530_dummy_poll** %2, align 8
  %15 = getelementptr inbounds %struct.mt7530_dummy_poll, %struct.mt7530_dummy_poll* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.mt7530_dummy_poll*, %struct.mt7530_dummy_poll** %2, align 8
  %18 = getelementptr inbounds %struct.mt7530_dummy_poll, %struct.mt7530_dummy_poll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mt7530_mii_read(%struct.TYPE_2__* %16, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %22 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @mt7530_mii_read(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
