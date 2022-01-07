; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.skge_port = type { i32, %struct.skge_hw* }
%struct.skge_hw = type { i32 }

@GM_TXO_OK_HI = common dso_local global i32 0, align 4
@GM_TXO_OK_LO = common dso_local global i32 0, align 4
@GM_RXO_OK_HI = common dso_local global i32 0, align 4
@GM_RXO_OK_LO = common dso_local global i32 0, align 4
@skge_stats = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*, i32*)* @yukon_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yukon_get_stats(%struct.skge_port* %0, i32* %1) #0 {
  %3 = alloca %struct.skge_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %9 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %8, i32 0, i32 1
  %10 = load %struct.skge_hw*, %struct.skge_hw** %9, align 8
  store %struct.skge_hw* %10, %struct.skge_hw** %5, align 8
  %11 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %12 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GM_TXO_OK_HI, align 4
  %17 = call i32 @gma_read32(%struct.skge_hw* %14, i32 %15, i32 %16)
  %18 = shl i32 %17, 32
  %19 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GM_TXO_OK_LO, align 4
  %22 = call i32 @gma_read32(%struct.skge_hw* %19, i32 %20, i32 %21)
  %23 = or i32 %18, %22
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @GM_RXO_OK_HI, align 4
  %29 = call i32 @gma_read32(%struct.skge_hw* %26, i32 %27, i32 %28)
  %30 = shl i32 %29, 32
  %31 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @GM_RXO_OK_LO, align 4
  %34 = call i32 @gma_read32(%struct.skge_hw* %31, i32 %32, i32 %33)
  %35 = or i32 %30, %34
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %37, align 4
  store i32 2, i32* %7, align 4
  br label %38

38:                                               ; preds = %57, %2
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @skge_stats, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @skge_stats, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gma_read32(%struct.skge_hw* %44, i32 %45, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %38

60:                                               ; preds = %38
  ret void
}

declare dso_local i32 @gma_read32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
