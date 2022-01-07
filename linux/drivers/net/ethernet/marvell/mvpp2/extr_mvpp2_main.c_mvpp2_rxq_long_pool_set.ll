; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rxq_long_pool_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rxq_long_pool_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.TYPE_5__*, %struct.TYPE_4__** }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MVPP21 = common dso_local global i64 0, align 8
@MVPP21_RXQ_POOL_LONG_MASK = common dso_local global i32 0, align 4
@MVPP22_RXQ_POOL_LONG_MASK = common dso_local global i32 0, align 4
@MVPP2_RXQ_POOL_LONG_OFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, i32, i32)* @mvpp2_rxq_long_pool_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_rxq_long_pool_set(%struct.mvpp2_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %11 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %20 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MVPP21, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @MVPP21_RXQ_POOL_LONG_MASK, align 4
  store i32 %27, i32* %8, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @MVPP22_RXQ_POOL_LONG_MASK, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %32 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @MVPP2_RXQ_CONFIG_REG(i32 %34)
  %36 = call i32 @mvpp2_read(%struct.TYPE_5__* %33, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MVPP2_RXQ_POOL_LONG_OFFS, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %49 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @MVPP2_RXQ_CONFIG_REG(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @mvpp2_write(%struct.TYPE_5__* %50, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @mvpp2_read(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @MVPP2_RXQ_CONFIG_REG(i32) #1

declare dso_local i32 @mvpp2_write(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
