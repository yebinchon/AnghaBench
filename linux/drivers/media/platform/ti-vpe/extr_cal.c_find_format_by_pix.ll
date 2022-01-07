; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_find_format_by_pix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_find_format_by_pix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_fmt = type { i64 }
%struct.cal_ctx = type { i32, %struct.cal_fmt** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cal_fmt* (%struct.cal_ctx*, i64)* @find_format_by_pix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cal_fmt* @find_format_by_pix(%struct.cal_ctx* %0, i64 %1) #0 {
  %3 = alloca %struct.cal_fmt*, align 8
  %4 = alloca %struct.cal_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cal_fmt*, align 8
  %7 = alloca i32, align 4
  store %struct.cal_ctx* %0, %struct.cal_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.cal_ctx*, %struct.cal_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %15, i32 0, i32 1
  %17 = load %struct.cal_fmt**, %struct.cal_fmt*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cal_fmt*, %struct.cal_fmt** %17, i64 %19
  %21 = load %struct.cal_fmt*, %struct.cal_fmt** %20, align 8
  store %struct.cal_fmt* %21, %struct.cal_fmt** %6, align 8
  %22 = load %struct.cal_fmt*, %struct.cal_fmt** %6, align 8
  %23 = getelementptr inbounds %struct.cal_fmt, %struct.cal_fmt* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load %struct.cal_fmt*, %struct.cal_fmt** %6, align 8
  store %struct.cal_fmt* %28, %struct.cal_fmt** %3, align 8
  br label %34

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %8

33:                                               ; preds = %8
  store %struct.cal_fmt* null, %struct.cal_fmt** %3, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.cal_fmt*, %struct.cal_fmt** %3, align 8
  ret %struct.cal_fmt* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
