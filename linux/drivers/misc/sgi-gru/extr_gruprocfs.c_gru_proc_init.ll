; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_gruprocfs.c_gru_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_gruprocfs.c_gru_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"sgi_uv/gru\00", align 1
@proc_gru = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@statistics_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"mcs_statistics\00", align 1
@mcs_statistics_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"debug_options\00", align 1
@options_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"cch_status\00", align 1
@cch_seq_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"gru_status\00", align 1
@gru_seq_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gru_proc_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @proc_mkdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %2, i32* @proc_gru, align 4
  %3 = load i32, i32* @proc_gru, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %34

6:                                                ; preds = %0
  %7 = load i32, i32* @proc_gru, align 4
  %8 = call i32 @proc_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 420, i32 %7, i32* @statistics_fops)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  br label %32

11:                                               ; preds = %6
  %12 = load i32, i32* @proc_gru, align 4
  %13 = call i32 @proc_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 420, i32 %12, i32* @mcs_statistics_fops)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %32

16:                                               ; preds = %11
  %17 = load i32, i32* @proc_gru, align 4
  %18 = call i32 @proc_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 420, i32 %17, i32* @options_fops)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %32

21:                                               ; preds = %16
  %22 = load i32, i32* @proc_gru, align 4
  %23 = call i32 @proc_create_seq(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 292, i32 %22, i32* @cch_seq_ops)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @proc_gru, align 4
  %28 = call i32 @proc_create_seq(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 292, i32 %27, i32* @gru_seq_ops)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %32

31:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %34

32:                                               ; preds = %30, %25, %20, %15, %10
  %33 = call i32 @remove_proc_subtree(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 -1, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %31, %5
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @proc_mkdir(i8*, i32*) #1

declare dso_local i32 @proc_create(i8*, i32, i32, i32*) #1

declare dso_local i32 @proc_create_seq(i8*, i32, i32, i32*) #1

declare dso_local i32 @remove_proc_subtree(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
