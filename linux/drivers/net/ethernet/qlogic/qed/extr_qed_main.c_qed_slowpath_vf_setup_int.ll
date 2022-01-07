; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_slowpath_vf_setup_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_slowpath_vf_setup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }

@QED_INT_MODE_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*)* @qed_slowpath_vf_setup_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_slowpath_vf_setup_int(%struct.qed_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  %6 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %7 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %6, i32 0, i32 1
  %8 = call i32 @memset(%struct.TYPE_6__* %7, i32 0, i32 4)
  %9 = load i32, i32* @QED_INT_MODE_MSIX, align 4
  %10 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %11 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i32 %9, i32* %13, align 8
  %14 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %15 = call i32* @QED_LEADING_HWFN(%struct.qed_dev* %14)
  %16 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %17 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i32 @qed_vf_get_num_rxqs(i32* %15, i64* %19)
  %21 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %22 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  %26 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %27 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = call i32 @qed_vf_get_num_rxqs(i32* %29, i64* %5)
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %33 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %31
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %25, %1
  %39 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %40 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %43 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %47 = call i32 @qed_set_int_mode(%struct.qed_dev* %46, i32 1)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %64

52:                                               ; preds = %38
  %53 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %54 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %57 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %62 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %52, %50
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @qed_vf_get_num_rxqs(i32*, i64*) #1

declare dso_local i32* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @qed_set_int_mode(%struct.qed_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
