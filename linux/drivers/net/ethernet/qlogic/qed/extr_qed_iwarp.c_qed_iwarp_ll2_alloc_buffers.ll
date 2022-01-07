; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_ll2_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_ll2_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qed_iwarp_ll2_buff = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, i32, i32)* @qed_iwarp_ll2_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iwarp_ll2_alloc_buffers(%struct.qed_hwfn* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_iwarp_ll2_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %59, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %12
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.qed_iwarp_ll2_buff* @kzalloc(i32 12, i32 %17)
  store %struct.qed_iwarp_ll2_buff* %18, %struct.qed_iwarp_ll2_buff** %9, align 8
  %19 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %9, align 8
  %20 = icmp ne %struct.qed_iwarp_ll2_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  br label %62

24:                                               ; preds = %16
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %26 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %9, align 8
  %33 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %32, i32 0, i32 2
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @dma_alloc_coherent(i32* %30, i32 %31, i32* %33, i32 %34)
  %36 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %9, align 8
  %37 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %9, align 8
  %39 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %24
  %43 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %9, align 8
  %44 = call i32 @kfree(%struct.qed_iwarp_ll2_buff* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %62

47:                                               ; preds = %24
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %9, align 8
  %50 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %52 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @qed_iwarp_ll2_post_rx(%struct.qed_hwfn* %51, %struct.qed_iwarp_ll2_buff* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %62

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %12

62:                                               ; preds = %57, %42, %21, %12
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local %struct.qed_iwarp_ll2_buff* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.qed_iwarp_ll2_buff*) #1

declare dso_local i32 @qed_iwarp_ll2_post_rx(%struct.qed_hwfn*, %struct.qed_iwarp_ll2_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
