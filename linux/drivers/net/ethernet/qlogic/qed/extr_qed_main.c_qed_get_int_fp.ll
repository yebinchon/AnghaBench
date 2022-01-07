; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_get_int_fp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_get_int_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.qed_int_info = type { i32*, i32 }

@.str = private unnamed_addr constant [88 x i8] c"Protocol driver requested interrupt information, but its support is not yet configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_INT_MODE_MSIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_int_info*)* @qed_get_int_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_get_int_fp(%struct.qed_dev* %0, %struct.qed_int_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca %struct.qed_int_info*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store %struct.qed_int_info* %1, %struct.qed_int_info** %5, align 8
  %7 = load %struct.qed_int_info*, %struct.qed_int_info** %5, align 8
  %8 = call i32 @memset(%struct.qed_int_info* %7, i32 0, i32 16)
  %9 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %10 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %16 = call i32 @DP_INFO(%struct.qed_dev* %15, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %21 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QED_INT_MODE_MSIX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %19
  %28 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %29 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %33 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.qed_int_info*, %struct.qed_int_info** %5, align 8
  %37 = getelementptr inbounds %struct.qed_int_info, %struct.qed_int_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %39 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.qed_int_info*, %struct.qed_int_info** %5, align 8
  %46 = getelementptr inbounds %struct.qed_int_info, %struct.qed_int_info* %45, i32 0, i32 0
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %27, %19
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.qed_int_info*, i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.qed_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
