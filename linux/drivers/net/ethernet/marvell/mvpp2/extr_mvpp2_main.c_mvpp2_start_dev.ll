; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_start_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_start_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.phylink_link_state = type { i32 }

@MVPP22 = common dso_local global i64 0, align 8
@MLO_AN_INBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_start_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_start_dev(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.phylink_link_state, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %5 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %6 = call i32 @mvpp2_txp_max_tx_size_set(%struct.mvpp2_port* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %10 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %15 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %14, i32 0, i32 6
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @napi_enable(i32* %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %27 = call i32 @mvpp2_interrupts_enable(%struct.mvpp2_port* %26)
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %29 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %28, i32 0, i32 5
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MVPP22, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %37 = call i32 @mvpp22_mode_reconfigure(%struct.mvpp2_port* %36)
  br label %38

38:                                               ; preds = %35, %25
  %39 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %40 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %45 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @phylink_start(i64 %46)
  br label %64

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %4, i32 0, i32 0
  %50 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %51 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %49, align 4
  %53 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %54 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %53, i32 0, i32 3
  %55 = load i32, i32* @MLO_AN_INBAND, align 4
  %56 = call i32 @mvpp2_mac_config(i32* %54, i32 %55, %struct.phylink_link_state* %4)
  %57 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %58 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %57, i32 0, i32 3
  %59 = load i32, i32* @MLO_AN_INBAND, align 4
  %60 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %61 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @mvpp2_mac_link_up(i32* %58, i32 %59, i32 %62, i32* null)
  br label %64

64:                                               ; preds = %48, %43
  %65 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %66 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @netif_tx_start_all_queues(i32 %67)
  ret void
}

declare dso_local i32 @mvpp2_txp_max_tx_size_set(%struct.mvpp2_port*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @mvpp2_interrupts_enable(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp22_mode_reconfigure(%struct.mvpp2_port*) #1

declare dso_local i32 @phylink_start(i64) #1

declare dso_local i32 @mvpp2_mac_config(i32*, i32, %struct.phylink_link_state*) #1

declare dso_local i32 @mvpp2_mac_link_up(i32*, i32, i32, i32*) #1

declare dso_local i32 @netif_tx_start_all_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
