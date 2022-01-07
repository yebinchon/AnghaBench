; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fl_pkt_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fl_pkt_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SGE_CONTROL_A = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@INGPADBOUNDARY_SHIFT_X = common dso_local global i32 0, align 4
@T6_INGPADBOUNDARY_SHIFT_X = common dso_local global i32 0, align 4
@SGE_CONTROL2_A = common dso_local global i32 0, align 4
@INGPACKBOUNDARY_16B_X = common dso_local global i32 0, align 4
@INGPACKBOUNDARY_SHIFT_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_fl_pkt_align(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = load i32, i32* @SGE_CONTROL_A, align 4
  %11 = call i32 @t4_read_reg(%struct.adapter* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @CHELSIO_CHIP_VERSION(i32 %15)
  %17 = load i64, i64* @CHELSIO_T5, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @INGPADBOUNDARY_SHIFT_X, align 4
  store i32 %20, i32* %8, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @T6_INGPADBOUNDARY_SHIFT_X, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @INGPADBOUNDARY_G(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %25, %26
  %28 = shl i32 1, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @is_t4(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %23
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = load i32, i32* @SGE_CONTROL2_A, align 4
  %39 = call i32 @t4_read_reg(%struct.adapter* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @INGPACKBOUNDARY_G(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @INGPACKBOUNDARY_16B_X, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 16, i32* %6, align 4
  br label %51

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @INGPACKBOUNDARY_SHIFT_X, align 4
  %49 = add i32 %47, %48
  %50 = shl i32 1, %49
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @max(i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %23
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i32 @INGPADBOUNDARY_G(i32) #1

declare dso_local i32 @is_t4(i32) #1

declare dso_local i32 @INGPACKBOUNDARY_G(i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
