; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_fl_pkt_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_fl_pkt_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CHELSIO_T5 = common dso_local global i64 0, align 8
@INGPADBOUNDARY_SHIFT_X = common dso_local global i32 0, align 4
@T6_INGPADBOUNDARY_SHIFT_X = common dso_local global i32 0, align 4
@INGPACKBOUNDARY_16B_X = common dso_local global i32 0, align 4
@INGPACKBOUNDARY_SHIFT_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_fl_pkt_align(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @CHELSIO_CHIP_VERSION(i32 %17)
  %19 = load i64, i64* @CHELSIO_T5, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @INGPADBOUNDARY_SHIFT_X, align 4
  store i32 %22, i32* %8, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @T6_INGPADBOUNDARY_SHIFT_X, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @INGPADBOUNDARY_G(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %27, %28
  %30 = shl i32 1, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.adapter*, %struct.adapter** %2, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @is_t4(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %25
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @INGPACKBOUNDARY_G(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @INGPACKBOUNDARY_16B_X, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 16, i32* %6, align 4
  br label %55

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @INGPACKBOUNDARY_SHIFT_X, align 4
  %53 = add i32 %51, %52
  %54 = shl i32 1, %53
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %50, %49
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @max(i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %25
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

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
