; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_setup_txqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_setup_txqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.mvpp2_tx_queue**, i64, i32 }
%struct.mvpp2_tx_queue = type { i32 }

@mvpp2_txq_sent_counter_clear = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*)* @mvpp2_setup_txqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_setup_txqs(%struct.mvpp2_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.mvpp2_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %39, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %11 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %8
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %16 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %15, i32 0, i32 1
  %17 = load %struct.mvpp2_tx_queue**, %struct.mvpp2_tx_queue*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %17, i64 %19
  %21 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %20, align 8
  store %struct.mvpp2_tx_queue* %21, %struct.mvpp2_tx_queue** %4, align 8
  %22 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %23 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %24 = call i32 @mvpp2_txq_init(%struct.mvpp2_port* %22, %struct.mvpp2_tx_queue* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %75

28:                                               ; preds = %14
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (...) @num_present_cpus()
  %31 = srem i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %33 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @cpumask_of(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @netif_set_xps_queue(i32 %34, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %8

42:                                               ; preds = %8
  %43 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %44 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %49 = call i32 @mvpp2_tx_time_coal_set(%struct.mvpp2_port* %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %67, %47
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %53 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %58 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %57, i32 0, i32 1
  %59 = load %struct.mvpp2_tx_queue**, %struct.mvpp2_tx_queue*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %59, i64 %61
  %63 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %62, align 8
  store %struct.mvpp2_tx_queue* %63, %struct.mvpp2_tx_queue** %4, align 8
  %64 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %65 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %4, align 8
  %66 = call i32 @mvpp2_tx_pkts_coal_set(%struct.mvpp2_port* %64, %struct.mvpp2_tx_queue* %65)
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %50

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70, %42
  %72 = load i32, i32* @mvpp2_txq_sent_counter_clear, align 4
  %73 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %74 = call i32 @on_each_cpu(i32 %72, %struct.mvpp2_port* %73, i32 1)
  store i32 0, i32* %2, align 4
  br label %79

75:                                               ; preds = %27
  %76 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %77 = call i32 @mvpp2_cleanup_txqs(%struct.mvpp2_port* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @mvpp2_txq_init(%struct.mvpp2_port*, %struct.mvpp2_tx_queue*) #1

declare dso_local i32 @num_present_cpus(...) #1

declare dso_local i32 @netif_set_xps_queue(i32, i32, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @mvpp2_tx_time_coal_set(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_tx_pkts_coal_set(%struct.mvpp2_port*, %struct.mvpp2_tx_queue*) #1

declare dso_local i32 @on_each_cpu(i32, %struct.mvpp2_port*, i32) #1

declare dso_local i32 @mvpp2_cleanup_txqs(%struct.mvpp2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
