; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_rx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_rx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { %struct.TYPE_3__, %struct.TYPE_4__, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdx_priv*)* @bdx_rx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_rx_free(%struct.bdx_priv* %0) #0 {
  %2 = alloca %struct.bdx_priv*, align 8
  store %struct.bdx_priv* %0, %struct.bdx_priv** %2, align 8
  %3 = load i32, i32* @ENTER, align 4
  %4 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %5 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %10 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %11 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %10, i32 0, i32 1
  %12 = call i32 @bdx_rx_free_skbs(%struct.bdx_priv* %9, %struct.TYPE_4__* %11)
  %13 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %14 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bdx_rxdb_destroy(i32* %15)
  %17 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %18 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %8, %1
  %20 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %21 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %22 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @bdx_fifo_free(%struct.bdx_priv* %20, i32* %23)
  %25 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %26 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %27 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @bdx_fifo_free(%struct.bdx_priv* %25, i32* %28)
  %30 = call i32 (...) @RET()
  ret void
}

declare dso_local i32 @bdx_rx_free_skbs(%struct.bdx_priv*, %struct.TYPE_4__*) #1

declare dso_local i32 @bdx_rxdb_destroy(i32*) #1

declare dso_local i32 @bdx_fifo_free(%struct.bdx_priv*, i32*) #1

declare dso_local i32 @RET(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
