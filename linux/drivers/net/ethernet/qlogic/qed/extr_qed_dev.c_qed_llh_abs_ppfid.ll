; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_abs_ppfid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_abs_ppfid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.qed_llh_info* }
%struct.qed_llh_info = type { i64, i64* }

@.str = private unnamed_addr constant [54 x i8] c"ppfid %d is not valid, available indices are 0..%hhd\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i64, i64*)* @qed_llh_abs_ppfid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_llh_abs_ppfid(%struct.qed_dev* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.qed_llh_info*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %10 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %9, i32 0, i32 0
  %11 = load %struct.qed_llh_info*, %struct.qed_llh_info** %10, align 8
  store %struct.qed_llh_info* %11, %struct.qed_llh_info** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.qed_llh_info*, %struct.qed_llh_info** %8, align 8
  %14 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.qed_llh_info*, %struct.qed_llh_info** %8, align 8
  %21 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %22, 1
  %24 = call i32 @DP_NOTICE(%struct.qed_dev* %18, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %23)
  %25 = load i64*, i64** %7, align 8
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %3
  %29 = load %struct.qed_llh_info*, %struct.qed_llh_info** %8, align 8
  %30 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
