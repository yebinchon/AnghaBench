; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-std.c_pvr2_std_id_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-std.c_pvr2_std_id_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.std_name = type { i32, i8* }

@std_groups = common dso_local global %struct.std_name* null, align 8
@std_items = common dso_local global %struct.std_name* null, align 8
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s-\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_std_id_to_str(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.std_name*, align 8
  %10 = alloca %struct.std_name*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %108, %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.std_name*, %struct.std_name** @std_groups, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.std_name* %17)
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %111

20:                                               ; preds = %15
  %21 = load %struct.std_name*, %struct.std_name** @std_groups, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.std_name, %struct.std_name* %21, i64 %23
  store %struct.std_name* %24, %struct.std_name** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %104, %20
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.std_name*, %struct.std_name** @std_items, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.std_name* %27)
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %107

30:                                               ; preds = %25
  %31 = load %struct.std_name*, %struct.std_name** @std_items, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.std_name, %struct.std_name* %31, i64 %33
  store %struct.std_name* %34, %struct.std_name** %9, align 8
  %35 = load %struct.std_name*, %struct.std_name** %10, align 8
  %36 = getelementptr inbounds %struct.std_name, %struct.std_name* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.std_name*, %struct.std_name** %9, align 8
  %39 = getelementptr inbounds %struct.std_name, %struct.std_name* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %37, %40
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %30
  br label %104

46:                                               ; preds = %30
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %53, i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %4, align 8
  br label %66

66:                                               ; preds = %52, %49
  store i32 1, i32* %12, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.std_name*, %struct.std_name** %10, align 8
  %70 = getelementptr inbounds %struct.std_name, %struct.std_name* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %67, i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  store i32 %72, i32* %14, align 4
  store i32 1, i32* %11, align 4
  br label %77

73:                                               ; preds = %46
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %74, i32 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sub i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i8*, i8** %4, align 8
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %4, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.std_name*, %struct.std_name** %9, align 8
  %91 = getelementptr inbounds %struct.std_name, %struct.std_name* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %88, i32 %89, i8* %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %5, align 4
  %99 = sub i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i8*, i8** %4, align 8
  %102 = zext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %4, align 8
  br label %104

104:                                              ; preds = %77, %45
  %105 = load i32, i32* %8, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %25

107:                                              ; preds = %25
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %15

111:                                              ; preds = %15
  %112 = load i32, i32* %13, align 4
  ret i32 %112
}

declare dso_local i32 @ARRAY_SIZE(%struct.std_name*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
