; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_set_cbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_set_cbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_ll2_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64, i64, i64, i64 }
%struct.qed_ll2_cbs = type { i64, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_ll2_info*, %struct.qed_ll2_cbs*)* @qed_ll2_set_cbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_set_cbs(%struct.qed_ll2_info* %0, %struct.qed_ll2_cbs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_ll2_info*, align 8
  %5 = alloca %struct.qed_ll2_cbs*, align 8
  store %struct.qed_ll2_info* %0, %struct.qed_ll2_info** %4, align 8
  store %struct.qed_ll2_cbs* %1, %struct.qed_ll2_cbs** %5, align 8
  %6 = load %struct.qed_ll2_cbs*, %struct.qed_ll2_cbs** %5, align 8
  %7 = icmp ne %struct.qed_ll2_cbs* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = load %struct.qed_ll2_cbs*, %struct.qed_ll2_cbs** %5, align 8
  %10 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load %struct.qed_ll2_cbs*, %struct.qed_ll2_cbs** %5, align 8
  %15 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.qed_ll2_cbs*, %struct.qed_ll2_cbs** %5, align 8
  %20 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.qed_ll2_cbs*, %struct.qed_ll2_cbs** %5, align 8
  %25 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.qed_ll2_cbs*, %struct.qed_ll2_cbs** %5, align 8
  %30 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %23, %18, %13, %8, %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %73

36:                                               ; preds = %28
  %37 = load %struct.qed_ll2_cbs*, %struct.qed_ll2_cbs** %5, align 8
  %38 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %41 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  store i64 %39, i64* %42, align 8
  %43 = load %struct.qed_ll2_cbs*, %struct.qed_ll2_cbs** %5, align 8
  %44 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %47 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  store i64 %45, i64* %48, align 8
  %49 = load %struct.qed_ll2_cbs*, %struct.qed_ll2_cbs** %5, align 8
  %50 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %53 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i64 %51, i64* %54, align 8
  %55 = load %struct.qed_ll2_cbs*, %struct.qed_ll2_cbs** %5, align 8
  %56 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %59 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i64 %57, i64* %60, align 8
  %61 = load %struct.qed_ll2_cbs*, %struct.qed_ll2_cbs** %5, align 8
  %62 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %65 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load %struct.qed_ll2_cbs*, %struct.qed_ll2_cbs** %5, align 8
  %68 = getelementptr inbounds %struct.qed_ll2_cbs, %struct.qed_ll2_cbs* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %71 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %36, %33
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
