; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_debugfs.c_scif_dev_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_debugfs.c_scif_dev_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Total Nodes %d Self Node Id %d Maxid %d\0A\00", align 1
@scif_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@scif_dev = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%-16s\09%-16s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"node_id\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%-16d\09%-16s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Running\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Offline\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @scif_dev_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scif_dev_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 2), align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 1), align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 0), align 4
  %15 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @scif_dev, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %43, %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 0), align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @scif_dev, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @scif_dev, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = call i64 @_scifdev_alive(%struct.TYPE_5__* %37)
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %42 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %33, i8* %41)
  br label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %22

46:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @_scifdev_alive(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
