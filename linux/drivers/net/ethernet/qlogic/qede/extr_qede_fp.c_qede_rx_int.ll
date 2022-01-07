; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_rx_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_rx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_fastpath = type { %struct.qede_dev*, %struct.qede_rx_queue* }
%struct.qede_dev = type { i32 }
%struct.qede_rx_queue = type { i32, i64, i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_fastpath*, i32)* @qede_rx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_rx_int(%struct.qede_fastpath* %0, i32 %1) #0 {
  %3 = alloca %struct.qede_fastpath*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_rx_queue*, align 8
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.qede_fastpath* %0, %struct.qede_fastpath** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.qede_fastpath*, %struct.qede_fastpath** %3, align 8
  %12 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %11, i32 0, i32 1
  %13 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %12, align 8
  store %struct.qede_rx_queue* %13, %struct.qede_rx_queue** %5, align 8
  %14 = load %struct.qede_fastpath*, %struct.qede_fastpath** %3, align 8
  %15 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %14, i32 0, i32 0
  %16 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  store %struct.qede_dev* %16, %struct.qede_dev** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %18 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le16_to_cpu(i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %23 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %22, i32 0, i32 3
  %24 = call i64 @qed_chain_get_cons_idx(i32* %23)
  store i64 %24, i64* %10, align 8
  %25 = call i32 (...) @rmb()
  br label %26

26:                                               ; preds = %36, %2
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %53

36:                                               ; preds = %34
  %37 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %38 = load %struct.qede_fastpath*, %struct.qede_fastpath** %3, align 8
  %39 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %40 = call i64 @qede_rx_process_cqe(%struct.qede_dev* %37, %struct.qede_fastpath* %38, %struct.qede_rx_queue* %39)
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %46 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %45, i32 0, i32 3
  %47 = call i32 @qed_chain_recycle_consumed(i32* %46)
  %48 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %49 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %48, i32 0, i32 3
  %50 = call i64 @qed_chain_get_cons_idx(i32* %49)
  store i64 %50, i64* %10, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %26

53:                                               ; preds = %34
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %56 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %73, %53
  %60 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %61 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %64 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %70 = call i64 @qede_alloc_rx_buffer(%struct.qede_rx_queue* %69, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %74

73:                                               ; preds = %68
  br label %59

74:                                               ; preds = %72, %59
  %75 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %76 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %5, align 8
  %77 = call i32 @qede_update_rx_prod(%struct.qede_dev* %75, %struct.qede_rx_queue* %76)
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @qed_chain_get_cons_idx(i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @qede_rx_process_cqe(%struct.qede_dev*, %struct.qede_fastpath*, %struct.qede_rx_queue*) #1

declare dso_local i32 @qed_chain_recycle_consumed(i32*) #1

declare dso_local i64 @qede_alloc_rx_buffer(%struct.qede_rx_queue*, i32) #1

declare dso_local i32 @qede_update_rx_prod(%struct.qede_dev*, %struct.qede_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
