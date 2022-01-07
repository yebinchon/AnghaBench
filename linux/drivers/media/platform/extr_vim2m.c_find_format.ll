; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vim2m_fmt = type { i64 }

@NUM_FORMATS = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.vim2m_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vim2m_fmt* (i64)* @find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vim2m_fmt* @find_format(i64 %0) #0 {
  %2 = alloca %struct.vim2m_fmt*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vim2m_fmt*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NUM_FORMATS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.vim2m_fmt*, %struct.vim2m_fmt** @formats, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.vim2m_fmt, %struct.vim2m_fmt* %11, i64 %13
  store %struct.vim2m_fmt* %14, %struct.vim2m_fmt** %4, align 8
  %15 = load %struct.vim2m_fmt*, %struct.vim2m_fmt** %4, align 8
  %16 = getelementptr inbounds %struct.vim2m_fmt, %struct.vim2m_fmt* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %25

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %20, %6
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @NUM_FORMATS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store %struct.vim2m_fmt* null, %struct.vim2m_fmt** %2, align 8
  br label %35

30:                                               ; preds = %25
  %31 = load %struct.vim2m_fmt*, %struct.vim2m_fmt** @formats, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vim2m_fmt, %struct.vim2m_fmt* %31, i64 %33
  store %struct.vim2m_fmt* %34, %struct.vim2m_fmt** %2, align 8
  br label %35

35:                                               ; preds = %30, %29
  %36 = load %struct.vim2m_fmt*, %struct.vim2m_fmt** %2, align 8
  ret %struct.vim2m_fmt* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
