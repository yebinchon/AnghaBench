; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, i64, %struct.TYPE_2__**, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_port_remove(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %4 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %5 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @unregister_netdev(i32 %6)
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %14 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @phylink_destroy(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %19 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @free_percpu(i32 %20)
  %22 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %23 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @free_percpu(i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %43, %17
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %29 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %34 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @free_percpu(i32 %41)
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %48 = call i32 @mvpp2_queue_vectors_deinit(%struct.mvpp2_port* %47)
  %49 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %50 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %55 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @irq_dispose_mapping(i64 %56)
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %60 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @free_netdev(i32 %61)
  ret void
}

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @phylink_destroy(i64) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @mvpp2_queue_vectors_deinit(%struct.mvpp2_port*) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
