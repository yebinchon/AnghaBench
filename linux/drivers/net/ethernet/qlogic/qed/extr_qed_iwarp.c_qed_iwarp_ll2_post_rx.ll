; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_ll2_post_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_ll2_post_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qed_iwarp_ll2_buff = type { i32, i32, i64 }

@.str = private unnamed_addr constant [54 x i8] c"Failed to repost rx buffer to ll2 rc = %d, handle=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_iwarp_ll2_buff*, i32)* @qed_iwarp_ll2_post_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iwarp_ll2_post_rx(%struct.qed_hwfn* %0, %struct.qed_iwarp_ll2_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_iwarp_ll2_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_iwarp_ll2_buff* %1, %struct.qed_iwarp_ll2_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %5, align 8
  %11 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %5, align 8
  %14 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %5, align 8
  %18 = call i32 @qed_ll2_post_rx_buffer(%struct.qed_hwfn* %8, i32 %9, i32 %12, i32 %16, %struct.qed_iwarp_ll2_buff* %17, i32 1)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %3
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DP_NOTICE(%struct.qed_hwfn* %22, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %5, align 8
  %33 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %5, align 8
  %36 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %5, align 8
  %39 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dma_free_coherent(i32* %31, i64 %34, i32 %37, i32 %40)
  %42 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %5, align 8
  %43 = call i32 @kfree(%struct.qed_iwarp_ll2_buff* %42)
  br label %44

44:                                               ; preds = %21, %3
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @qed_ll2_post_rx_buffer(%struct.qed_hwfn*, i32, i32, i32, %struct.qed_iwarp_ll2_buff*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.qed_iwarp_ll2_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
