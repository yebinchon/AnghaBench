; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_adminq.c_gve_adminq_parse_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_adminq.c_gve_adminq_parse_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"AQ command failed with status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"parse_aq_err: err and status both unset, this should not be possible.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"parse_aq_err: unknown status code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @gve_adminq_parse_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_adminq_parse_err(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 129
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 128
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %8, %2
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %41 [
    i32 129, label %17
    i32 128, label %18
    i32 145, label %23
    i32 143, label %23
    i32 142, label %23
    i32 140, label %23
    i32 132, label %23
    i32 144, label %26
    i32 139, label %26
    i32 138, label %26
    i32 137, label %26
    i32 136, label %26
    i32 130, label %26
    i32 141, label %29
    i32 135, label %32
    i32 133, label %32
    i32 134, label %35
    i32 131, label %38
  ]

17:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %47

18:                                               ; preds = %15
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %15, %15, %15, %15, %15
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %15, %15, %15, %15, %15, %15
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %47

29:                                               ; preds = %15
  %30 = load i32, i32* @ETIME, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %15, %15
  %33 = load i32, i32* @EACCES, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %47

35:                                               ; preds = %15
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %15
  %39 = load i32, i32* @ENOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %47

41:                                               ; preds = %15
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %18, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
