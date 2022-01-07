; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { i64, i64, %struct.TYPE_6__*, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.pt1_buffer_page* }
%struct.pt1_buffer_page = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PT1_NR_ADAPS = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@PT1_NR_BUFS = common dso_local global i64 0, align 8
@pt1_nr_tables = common dso_local global i64 0, align 8
@PT1_FETCH_DELAY = common dso_local global i32 0, align 4
@PT1_FETCH_DELAY_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pt1_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca %struct.pt1_buffer_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.pt1*
  store %struct.pt1* %9, %struct.pt1** %3, align 8
  %10 = call i32 (...) @set_freezable()
  br label %11

11:                                               ; preds = %96, %64, %1
  %12 = call i32 @kthread_freezable_should_stop(i32* %5)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %97

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PT1_NR_ADAPS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load %struct.pt1*, %struct.pt1** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.pt1*, %struct.pt1** %3, align 8
  %27 = getelementptr inbounds %struct.pt1, %struct.pt1* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @pt1_set_stream(%struct.pt1* %24, i32 %25, i32 %38)
  br label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %19

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43, %15
  %45 = load %struct.pt1*, %struct.pt1** %3, align 8
  %46 = getelementptr inbounds %struct.pt1, %struct.pt1* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.pt1*, %struct.pt1** %3, align 8
  %49 = getelementptr inbounds %struct.pt1, %struct.pt1* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load %struct.pt1*, %struct.pt1** %3, align 8
  %55 = getelementptr inbounds %struct.pt1, %struct.pt1* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.pt1_buffer_page*, %struct.pt1_buffer_page** %58, align 8
  store %struct.pt1_buffer_page* %59, %struct.pt1_buffer_page** %4, align 8
  %60 = load %struct.pt1*, %struct.pt1** %3, align 8
  %61 = load %struct.pt1_buffer_page*, %struct.pt1_buffer_page** %4, align 8
  %62 = call i32 @pt1_filter(%struct.pt1* %60, %struct.pt1_buffer_page* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %44
  %65 = load i32, i32* @NSEC_PER_MSEC, align 4
  %66 = mul nsw i32 10, %65
  %67 = call i32 @ktime_set(i32 0, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %69 = call i32 @set_current_state(i32 %68)
  %70 = load i32, i32* @NSEC_PER_MSEC, align 4
  %71 = mul nsw i32 2, %70
  %72 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %73 = call i32 @schedule_hrtimeout_range(i32* %7, i32 %71, i32 %72)
  br label %11

74:                                               ; preds = %44
  %75 = load %struct.pt1*, %struct.pt1** %3, align 8
  %76 = getelementptr inbounds %struct.pt1, %struct.pt1* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load i64, i64* @PT1_NR_BUFS, align 8
  %80 = icmp uge i64 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %74
  %82 = load %struct.pt1*, %struct.pt1** %3, align 8
  %83 = call i32 @pt1_increment_table_count(%struct.pt1* %82)
  %84 = load %struct.pt1*, %struct.pt1** %3, align 8
  %85 = getelementptr inbounds %struct.pt1, %struct.pt1* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.pt1*, %struct.pt1** %3, align 8
  %87 = getelementptr inbounds %struct.pt1, %struct.pt1* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load i64, i64* @pt1_nr_tables, align 8
  %91 = icmp uge i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load %struct.pt1*, %struct.pt1** %3, align 8
  %94 = getelementptr inbounds %struct.pt1, %struct.pt1* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %92, %81
  br label %96

96:                                               ; preds = %95, %74
  br label %11

97:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @kthread_freezable_should_stop(i32*) #1

declare dso_local i32 @pt1_set_stream(%struct.pt1*, i32, i32) #1

declare dso_local i32 @pt1_filter(%struct.pt1*, %struct.pt1_buffer_page*) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_hrtimeout_range(i32*, i32, i32) #1

declare dso_local i32 @pt1_increment_table_count(%struct.pt1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
