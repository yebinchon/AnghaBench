; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.cadet = type { i64, i32, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @cadet_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cadet_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.cadet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.cadet* @video_drvdata(%struct.file* %8)
  store %struct.cadet* %9, %struct.cadet** %5, align 8
  %10 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %11 = call i32 @poll_requested_events(%struct.poll_table_struct* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %14 = call i32 @v4l2_ctrl_poll(%struct.file* %12, %struct.poll_table_struct* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = load %struct.cadet*, %struct.cadet** %5, align 8
  %17 = getelementptr inbounds %struct.cadet, %struct.cadet* %16, i32 0, i32 2
  %18 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %19 = call i32 @poll_wait(%struct.file* %15, i32* %17, %struct.poll_table_struct* %18)
  %20 = load %struct.cadet*, %struct.cadet** %5, align 8
  %21 = getelementptr inbounds %struct.cadet, %struct.cadet* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @EPOLLIN, align 4
  %27 = load i32, i32* @EPOLLRDNORM, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load %struct.cadet*, %struct.cadet** %5, align 8
  %33 = getelementptr inbounds %struct.cadet, %struct.cadet* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.cadet*, %struct.cadet** %5, align 8
  %36 = getelementptr inbounds %struct.cadet, %struct.cadet* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.cadet*, %struct.cadet** %5, align 8
  %41 = call i32 @cadet_start_rds(%struct.cadet* %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.cadet*, %struct.cadet** %5, align 8
  %44 = getelementptr inbounds %struct.cadet, %struct.cadet* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %46

46:                                               ; preds = %42, %24, %2
  %47 = load %struct.cadet*, %struct.cadet** %5, align 8
  %48 = call i64 @cadet_has_rds_data(%struct.cadet* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @EPOLLIN, align 4
  %52 = load i32, i32* @EPOLLRDNORM, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %50, %46
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local %struct.cadet* @video_drvdata(%struct.file*) #1

declare dso_local i32 @poll_requested_events(%struct.poll_table_struct*) #1

declare dso_local i32 @v4l2_ctrl_poll(%struct.file*, %struct.poll_table_struct*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cadet_start_rds(%struct.cadet*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @cadet_has_rds_data(%struct.cadet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
