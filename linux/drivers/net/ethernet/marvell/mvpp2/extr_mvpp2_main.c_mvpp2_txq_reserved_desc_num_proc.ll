; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txq_reserved_desc_num_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txq_reserved_desc_num_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mvpp2_tx_queue = type { i32, i32 }
%struct.mvpp2_txq_pcpu = type { i32, i64 }

@MVPP2_CPU_DESC_CHUNK = common dso_local global i32 0, align 4
@MVPP2_MAX_THREADS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, %struct.mvpp2_txq_pcpu*, i32)* @mvpp2_txq_reserved_desc_num_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_txq_reserved_desc_num_proc(%struct.mvpp2_port* %0, %struct.mvpp2_tx_queue* %1, %struct.mvpp2_txq_pcpu* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvpp2_port*, align 8
  %7 = alloca %struct.mvpp2_tx_queue*, align 8
  %8 = alloca %struct.mvpp2_txq_pcpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mvpp2_txq_pcpu*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %6, align 8
  store %struct.mvpp2_tx_queue* %1, %struct.mvpp2_tx_queue** %7, align 8
  store %struct.mvpp2_txq_pcpu* %2, %struct.mvpp2_txq_pcpu** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %15 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

20:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %24 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %22, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %21
  %30 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %31 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call %struct.mvpp2_txq_pcpu* @per_cpu_ptr(i32 %32, i32 %33)
  store %struct.mvpp2_txq_pcpu* %34, %struct.mvpp2_txq_pcpu** %13, align 8
  %35 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %13, align 8
  %36 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %13, align 8
  %43 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %12, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %21

50:                                               ; preds = %21
  %51 = load i32, i32* @MVPP2_CPU_DESC_CHUNK, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %54 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %52, %55
  %57 = call i32 @max(i32 %51, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %63 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MVPP2_MAX_THREADS, align 4
  %66 = load i32, i32* @MVPP2_CPU_DESC_CHUNK, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sub nsw i32 %64, %67
  %69 = icmp sgt i32 %61, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %50
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %93

73:                                               ; preds = %50
  %74 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %75 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @mvpp2_txq_alloc_reserved_desc(%struct.mvpp2_port* %74, %struct.mvpp2_tx_queue* %75, i32 %76)
  %78 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %79 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 8
  %84 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %85 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %73
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %93

92:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %89, %70, %19
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.mvpp2_txq_pcpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @mvpp2_txq_alloc_reserved_desc(%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
