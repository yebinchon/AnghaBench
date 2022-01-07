; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_dump_fw_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_dump_fw_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redrat3_dev = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"fw error code 0x%02x: \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"No Error\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Initial signal pulse not long enough to measure carrier frequency\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Not enough length values allocated for signal\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Not enough memory allocated for signal data\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Too many signal repeats\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Insufficient memory available for IR signal data memory allocation\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"Insufficient memory available for IrDa signal data memory allocation\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Insufficient memory available for bulk transfer structure\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Signal capture has been terminated\0A\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"Attempt to set/get and unknown signal I/O algorithm parameter\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Signal capture already started\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Unknown Error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.redrat3_dev*, i32)* @redrat3_dump_fw_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redrat3_dump_fw_error(%struct.redrat3_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.redrat3_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.redrat3_dev* %0, %struct.redrat3_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %6 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 64
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %14 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_info(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %12, %9, %2
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %48 [
    i32 0, label %20
    i32 32, label %22
    i32 33, label %24
    i32 34, label %26
    i32 35, label %28
    i32 40, label %30
    i32 41, label %32
    i32 48, label %34
    i32 64, label %36
    i32 65, label %44
    i32 66, label %46
  ]

20:                                               ; preds = %18
  %21 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %50

22:                                               ; preds = %18
  %23 = call i32 @pr_cont(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %50

24:                                               ; preds = %18
  %25 = call i32 @pr_cont(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %50

26:                                               ; preds = %18
  %27 = call i32 @pr_cont(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %50

28:                                               ; preds = %18
  %29 = call i32 @pr_cont(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %50

30:                                               ; preds = %18
  %31 = call i32 @pr_cont(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  br label %50

32:                                               ; preds = %18
  %33 = call i32 @pr_cont(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0))
  br label %50

34:                                               ; preds = %18
  %35 = call i32 @pr_cont(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  br label %50

36:                                               ; preds = %18
  %37 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %38 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 @pr_cont(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  br label %50

44:                                               ; preds = %18
  %45 = call i32 @pr_cont(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0))
  br label %50

46:                                               ; preds = %18
  %47 = call i32 @pr_cont(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %50

48:                                               ; preds = %18
  %49 = call i32 @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %46, %44, %43, %34, %32, %30, %28, %26, %24, %22, %20
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
