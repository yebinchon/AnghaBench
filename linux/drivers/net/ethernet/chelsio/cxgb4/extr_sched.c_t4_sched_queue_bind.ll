; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_sched_queue_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_sched_queue_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i64, i64, %struct.sched_table*, %struct.adapter* }
%struct.sched_table = type { %struct.sched_class* }
%struct.sched_class = type { i32, i32 }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sge_eth_txq* }
%struct.sge_eth_txq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ch_sched_queue = type { i64 }
%struct.sched_queue_entry = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ERANGE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCHED_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_info*, %struct.ch_sched_queue*)* @t4_sched_queue_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_sched_queue_bind(%struct.port_info* %0, %struct.ch_sched_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca %struct.ch_sched_queue*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sched_table*, align 8
  %8 = alloca %struct.sched_class*, align 8
  %9 = alloca %struct.sched_queue_entry*, align 8
  %10 = alloca %struct.sge_eth_txq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.port_info* %0, %struct.port_info** %4, align 8
  store %struct.ch_sched_queue* %1, %struct.ch_sched_queue** %5, align 8
  %13 = load %struct.port_info*, %struct.port_info** %4, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 3
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %6, align 8
  %16 = load %struct.port_info*, %struct.port_info** %4, align 8
  %17 = getelementptr inbounds %struct.port_info, %struct.port_info* %16, i32 0, i32 2
  %18 = load %struct.sched_table*, %struct.sched_table** %17, align 8
  store %struct.sched_table* %18, %struct.sched_table** %7, align 8
  store %struct.sched_queue_entry* null, %struct.sched_queue_entry** %9, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.ch_sched_queue*, %struct.ch_sched_queue** %5, align 8
  %20 = getelementptr inbounds %struct.ch_sched_queue, %struct.ch_sched_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.ch_sched_queue*, %struct.ch_sched_queue** %5, align 8
  %25 = getelementptr inbounds %struct.ch_sched_queue, %struct.ch_sched_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.port_info*, %struct.port_info** %4, align 8
  %28 = getelementptr inbounds %struct.port_info, %struct.port_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp uge i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23, %2
  %32 = load i32, i32* @ERANGE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %103

34:                                               ; preds = %23
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.sched_queue_entry* @kvzalloc(i32 16, i32 %35)
  store %struct.sched_queue_entry* %36, %struct.sched_queue_entry** %9, align 8
  %37 = load %struct.sched_queue_entry*, %struct.sched_queue_entry** %9, align 8
  %38 = icmp ne %struct.sched_queue_entry* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %103

42:                                               ; preds = %34
  %43 = load %struct.adapter*, %struct.adapter** %6, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %45, align 8
  %47 = load %struct.port_info*, %struct.port_info** %4, align 8
  %48 = getelementptr inbounds %struct.port_info, %struct.port_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ch_sched_queue*, %struct.ch_sched_queue** %5, align 8
  %51 = getelementptr inbounds %struct.ch_sched_queue, %struct.ch_sched_queue* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %49, %52
  %54 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %46, i64 %53
  store %struct.sge_eth_txq* %54, %struct.sge_eth_txq** %10, align 8
  %55 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %10, align 8
  %56 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.port_info*, %struct.port_info** %4, align 8
  %60 = load %struct.ch_sched_queue*, %struct.ch_sched_queue** %5, align 8
  %61 = call i32 @t4_sched_queue_unbind(%struct.port_info* %59, %struct.ch_sched_queue* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %42
  br label %99

65:                                               ; preds = %42
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.sched_queue_entry*, %struct.sched_queue_entry** %9, align 8
  %68 = getelementptr inbounds %struct.sched_queue_entry, %struct.sched_queue_entry* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sched_queue_entry*, %struct.sched_queue_entry** %9, align 8
  %70 = getelementptr inbounds %struct.sched_queue_entry, %struct.sched_queue_entry* %69, i32 0, i32 2
  %71 = load %struct.ch_sched_queue*, %struct.ch_sched_queue** %5, align 8
  %72 = call i32 @memcpy(%struct.TYPE_6__* %70, %struct.ch_sched_queue* %71, i32 8)
  %73 = load %struct.sched_table*, %struct.sched_table** %7, align 8
  %74 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %73, i32 0, i32 0
  %75 = load %struct.sched_class*, %struct.sched_class** %74, align 8
  %76 = load %struct.sched_queue_entry*, %struct.sched_queue_entry** %9, align 8
  %77 = getelementptr inbounds %struct.sched_queue_entry, %struct.sched_queue_entry* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %75, i64 %79
  store %struct.sched_class* %80, %struct.sched_class** %8, align 8
  %81 = load %struct.port_info*, %struct.port_info** %4, align 8
  %82 = load %struct.sched_queue_entry*, %struct.sched_queue_entry** %9, align 8
  %83 = bitcast %struct.sched_queue_entry* %82 to i8*
  %84 = load i32, i32* @SCHED_QUEUE, align 4
  %85 = call i32 @t4_sched_bind_unbind_op(%struct.port_info* %81, i8* %83, i32 %84, i32 1)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %65
  br label %99

89:                                               ; preds = %65
  %90 = load %struct.sched_queue_entry*, %struct.sched_queue_entry** %9, align 8
  %91 = getelementptr inbounds %struct.sched_queue_entry, %struct.sched_queue_entry* %90, i32 0, i32 1
  %92 = load %struct.sched_class*, %struct.sched_class** %8, align 8
  %93 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %92, i32 0, i32 1
  %94 = call i32 @list_add_tail(i32* %91, i32* %93)
  %95 = load %struct.sched_class*, %struct.sched_class** %8, align 8
  %96 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %95, i32 0, i32 0
  %97 = call i32 @atomic_inc(i32* %96)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %3, align 4
  br label %103

99:                                               ; preds = %88, %64
  %100 = load %struct.sched_queue_entry*, %struct.sched_queue_entry** %9, align 8
  %101 = call i32 @kvfree(%struct.sched_queue_entry* %100)
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %89, %39, %31
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.sched_queue_entry* @kvzalloc(i32, i32) #1

declare dso_local i32 @t4_sched_queue_unbind(%struct.port_info*, %struct.ch_sched_queue*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.ch_sched_queue*, i32) #1

declare dso_local i32 @t4_sched_bind_unbind_op(%struct.port_info*, i8*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kvfree(%struct.sched_queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
