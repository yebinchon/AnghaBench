; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_type_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_type_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"satellite\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"terrestrial\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cable\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"atsc\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"invalid dst type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"DST type: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i32)* @dst_type_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_type_print(%struct.dst_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %12 [
    i32 129, label %8
    i32 128, label %9
    i32 130, label %10
    i32 131, label %11
  ]

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %17

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %17

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %17

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %20

17:                                               ; preds = %11, %10, %9, %8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
