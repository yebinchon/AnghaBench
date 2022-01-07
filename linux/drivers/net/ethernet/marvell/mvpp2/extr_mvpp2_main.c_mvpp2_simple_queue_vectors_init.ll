; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_simple_queue_vectors_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_simple_queue_vectors_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, i32, %struct.mvpp2_queue_vector* }
%struct.mvpp2_queue_vector = type { i64, i32, %struct.mvpp2_port*, i32, i64, i32, i32, i64 }
%struct.device_node = type { i32 }

@MVPP2_QUEUE_VECTOR_SHARED = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mvpp2_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, %struct.device_node*)* @mvpp2_simple_queue_vectors_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_simple_queue_vectors_init(%struct.mvpp2_port* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.mvpp2_queue_vector*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %8 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %7, i32 0, i32 3
  %9 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %8, align 8
  %10 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %9, i64 0
  store %struct.mvpp2_queue_vector* %10, %struct.mvpp2_queue_vector** %6, align 8
  %11 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %12 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %11, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %14 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %17 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @MVPP2_QUEUE_VECTOR_SHARED, align 4
  %19 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %20 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %22 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @cpu_online_mask, align 4
  %24 = call i32* @cpumask_bits(i32 %23)
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %27 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %29 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %30 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %29, i32 0, i32 2
  store %struct.mvpp2_port* %28, %struct.mvpp2_port** %30, align 8
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = call i64 @irq_of_parse_and_map(%struct.device_node* %31, i32 0)
  %33 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %34 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %36 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %53

42:                                               ; preds = %2
  %43 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %44 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %47 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %46, i32 0, i32 1
  %48 = load i32, i32* @mvpp2_poll, align 4
  %49 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %50 = call i32 @netif_napi_add(i32 %45, i32* %47, i32 %48, i32 %49)
  %51 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %52 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %42, %39
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32* @cpumask_bits(i32) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
