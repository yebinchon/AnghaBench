; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_reset_and_read_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_reset_and_read_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosa_data = type { i32 }

@SR_RST = common dso_local global i32 0, align 4
@COSA_MAX_ID_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cosa_data*, i8*)* @cosa_reset_and_read_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cosa_reset_and_read_id(%struct.cosa_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cosa_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cosa_data* %0, %struct.cosa_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %11 = call i32 @cosa_putstatus(%struct.cosa_data* %10, i32 0)
  %12 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %13 = call i32 @cosa_getdata8(%struct.cosa_data* %12)
  %14 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %15 = load i32, i32* @SR_RST, align 4
  %16 = call i32 @cosa_putstatus(%struct.cosa_data* %14, i32 %15)
  %17 = call i32 @msleep(i32 500)
  %18 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %19 = call i32 @cosa_putstatus(%struct.cosa_data* %18, i32 0)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %57, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @COSA_MAX_ID_STRING, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  %26 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %27 = call i32 @get_wait_data(%struct.cosa_data* %26)
  store i32 %27, i32* %9, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %67

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 255
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 13
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 10
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 46
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 %43, i8* %48, align 1
  br label %49

49:                                               ; preds = %41, %38, %35, %30
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %61

56:                                               ; preds = %52, %49
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %8, align 4
  br label %20

61:                                               ; preds = %55, %20
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @cosa_putstatus(%struct.cosa_data*, i32) #1

declare dso_local i32 @cosa_getdata8(%struct.cosa_data*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @get_wait_data(%struct.cosa_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
