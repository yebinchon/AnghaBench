; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c___qed_llh_shadow_add_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c___qed_llh_shadow_add_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.qed_llh_info* }
%struct.qed_llh_info = type { %struct.qed_llh_filter_info** }
%struct.qed_llh_filter_info = type { i32, i32, i64, i32 }
%union.qed_llh_filter = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i64, i64, i32, %union.qed_llh_filter*, i64*)* @__qed_llh_shadow_add_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qed_llh_shadow_add_filter(%struct.qed_dev* %0, i64 %1, i64 %2, i32 %3, %union.qed_llh_filter* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.qed_llh_filter*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.qed_llh_info*, align 8
  %15 = alloca %struct.qed_llh_filter_info*, align 8
  %16 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %union.qed_llh_filter* %4, %union.qed_llh_filter** %12, align 8
  store i64* %5, i64** %13, align 8
  %17 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %18 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %17, i32 0, i32 0
  %19 = load %struct.qed_llh_info*, %struct.qed_llh_info** %18, align 8
  store %struct.qed_llh_info* %19, %struct.qed_llh_info** %14, align 8
  %20 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @qed_llh_shadow_sanity(%struct.qed_dev* %20, i64 %21, i64 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %7, align 4
  br label %65

28:                                               ; preds = %6
  %29 = load %struct.qed_llh_info*, %struct.qed_llh_info** %14, align 8
  %30 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %29, i32 0, i32 0
  %31 = load %struct.qed_llh_filter_info**, %struct.qed_llh_filter_info*** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %31, i64 %32
  %34 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %33, align 8
  store %struct.qed_llh_filter_info* %34, %struct.qed_llh_filter_info** %15, align 8
  %35 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %15, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %35, i64 %36
  %38 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %28
  %42 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %15, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %42, i64 %43
  %45 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %15, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %47, i64 %48
  %50 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %15, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %51, i64 %52
  %54 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %53, i32 0, i32 3
  %55 = load %union.qed_llh_filter*, %union.qed_llh_filter** %12, align 8
  %56 = call i32 @memcpy(i32* %54, %union.qed_llh_filter* %55, i32 4)
  br label %57

57:                                               ; preds = %41, %28
  %58 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %15, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %58, i64 %59
  %61 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load i64*, i64** %13, align 8
  store i64 %63, i64* %64, align 8
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %57, %26
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @qed_llh_shadow_sanity(%struct.qed_dev*, i64, i64, i8*) #1

declare dso_local i32 @memcpy(i32*, %union.qed_llh_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
