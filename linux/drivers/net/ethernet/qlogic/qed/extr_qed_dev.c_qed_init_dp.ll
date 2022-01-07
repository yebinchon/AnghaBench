; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_init_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i64, %struct.qed_hwfn*, i8* }
%struct.qed_hwfn = type { i64, i8* }

@MAX_HWFNS_PER_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_init_dp(%struct.qed_dev* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %11 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %14 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %31, %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @MAX_HWFNS_PER_DEVICE, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %21 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %20, i32 0, i32 1
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i64 %23
  store %struct.qed_hwfn* %24, %struct.qed_hwfn** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %19
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %15

34:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
