; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, %struct.qed_hwfn* }
%struct.qed_hwfn = type { i64, i32, %struct.TYPE_2__, %struct.qed_dev* }
%struct.TYPE_2__ = type { i32 }

@MAX_HWFNS_PER_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_init_struct(%struct.qed_dev* %0) #0 {
  %2 = alloca %struct.qed_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qed_hwfn*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @MAX_HWFNS_PER_DEVICE, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %11 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %10, i32 0, i32 1
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i64 %13
  store %struct.qed_hwfn* %14, %struct.qed_hwfn** %4, align 8
  %15 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 3
  store %struct.qed_dev* %15, %struct.qed_dev** %17, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %22 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %21, i32 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @mutex_init(i32* %25)
  br label %27

27:                                               ; preds = %9
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %5

30:                                               ; preds = %5
  %31 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %32 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %31, i32 0, i32 1
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %32, align 8
  %34 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %33, i64 0
  %35 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  %36 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %37 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %36, i32 0, i32 0
  store i32 7, i32* %37, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
