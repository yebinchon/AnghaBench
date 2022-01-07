; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_puthexnumber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_puthexnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosa_data = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"cosa%d: puthexnumber failed to write byte %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"cosa%d: puthexhumber failed to read echo of byte %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cosa_data*, i32)* @puthexnumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puthexnumber(%struct.cosa_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cosa_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.cosa_data* %0, %struct.cosa_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %51, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @put_wait_data(%struct.cosa_data* %15, i8 signext %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %24 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pr_notice(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 2, %28
  %30 = sub nsw i32 -1, %29
  store i32 %30, i32* %3, align 4
  br label %55

31:                                               ; preds = %14
  %32 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %33 = call signext i8 @get_wait_data(%struct.cosa_data* %32)
  %34 = sext i8 %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %34, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %43 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @pr_notice(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 2, %47
  %49 = sub nsw i32 -2, %48
  store i32 %49, i32* %3, align 4
  br label %55

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %11

54:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %41, %22
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @put_wait_data(%struct.cosa_data*, i8 signext) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

declare dso_local signext i8 @get_wait_data(%struct.cosa_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
