; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_st_int_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_st_int_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_data_s = type { %struct.tty_struct* }
%struct.tty_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i8*, i32)* }

@.str = private unnamed_addr constant [33 x i8] c"tty unavailable to perform write\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_int_write(%struct.st_data_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_data_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_struct*, align 8
  store %struct.st_data_s* %0, %struct.st_data_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.st_data_s*, %struct.st_data_s** %5, align 8
  %10 = icmp eq %struct.st_data_s* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.st_data_s*, %struct.st_data_s** %5, align 8
  %13 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %12, i32 0, i32 0
  %14 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  %15 = icmp eq %struct.tty_struct* %14, null
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i1 [ true, %3 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %38

25:                                               ; preds = %16
  %26 = load %struct.st_data_s*, %struct.st_data_s** %5, align 8
  %27 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %26, i32 0, i32 0
  %28 = load %struct.tty_struct*, %struct.tty_struct** %27, align 8
  store %struct.tty_struct* %28, %struct.tty_struct** %8, align 8
  %29 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %32, align 8
  %34 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 %33(%struct.tty_struct* %34, i8* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %25, %21
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
