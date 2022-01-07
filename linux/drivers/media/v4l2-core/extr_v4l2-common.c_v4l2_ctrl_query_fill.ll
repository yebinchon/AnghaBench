; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-common.c_v4l2_ctrl_query_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-common.c_v4l2_ctrl_query_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_queryctrl = type { i32, i64*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.v4l2_queryctrl* %0, %struct.v4l2_queryctrl** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %10, align 8
  store i8* %19, i8** %15, align 8
  %20 = load i8*, i8** %11, align 8
  store i8* %20, i8** %16, align 8
  %21 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %24, i32 0, i32 7
  %26 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %26, i32 0, i32 6
  %28 = call i32 @v4l2_ctrl_fill(i32 %23, i8** %12, i32* %25, i8** %13, i8** %14, i8** %15, i8** %16, i32* %27)
  %29 = load i8*, i8** %12, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %60

34:                                               ; preds = %5
  %35 = load i8*, i8** %13, align 8
  %36 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @strscpy(i32 %57, i8* %58, i32 4)
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %34, %31
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @v4l2_ctrl_fill(i32, i8**, i32*, i8**, i8**, i8**, i8**, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
