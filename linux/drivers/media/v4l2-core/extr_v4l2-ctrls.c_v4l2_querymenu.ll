; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_querymenu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_querymenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_querymenu = type { i64, i32, i32, i64, i32 }
%struct.v4l2_ctrl = type { i32, i8**, i64, i64, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_querymenu(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_querymenu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.v4l2_querymenu*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i64, align 8
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %4, align 8
  store %struct.v4l2_querymenu* %1, %struct.v4l2_querymenu** %5, align 8
  %8 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %12 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(%struct.v4l2_ctrl_handler* %11, i32 %14)
  store %struct.v4l2_ctrl* %15, %struct.v4l2_ctrl** %6, align 8
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %17 = icmp ne %struct.v4l2_ctrl* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %122

21:                                               ; preds = %2
  %22 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %45 [
    i32 128, label %27
    i32 129, label %36
  ]

27:                                               ; preds = %21
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = icmp eq i8** %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %122

35:                                               ; preds = %27
  br label %48

36:                                               ; preds = %21
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %122

44:                                               ; preds = %36
  br label %48

45:                                               ; preds = %21
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %122

48:                                               ; preds = %44, %35
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ugt i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %48
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %122

63:                                               ; preds = %54
  %64 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %65 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = shl i64 1, %67
  %69 = and i64 %66, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %122

74:                                               ; preds = %63
  %75 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 128
  br i1 %78, label %79, label %112

79:                                               ; preds = %74
  %80 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %81 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %79
  %88 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %89 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %88, i32 0, i32 1
  %90 = load i8**, i8*** %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %87, %79
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %122

101:                                              ; preds = %87
  %102 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %103 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %106 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strscpy(i32 %104, i8* %110, i32 4)
  br label %121

112:                                              ; preds = %74
  %113 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %114 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %120 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %112, %101
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %98, %71, %60, %45, %41, %32, %18
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
