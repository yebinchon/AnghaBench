; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_value_to_sym_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_value_to_sym_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8**, i32 }

@EINVAL = common dso_local global i32 0, align 4
@pvr2_ctl_int = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@pvr2_ctl_bool = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@pvr2_ctl_enum = common dso_local global i64 0, align 8
@pvr2_ctl_bitmask = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_ctrl_value_to_sym_internal(%struct.pvr2_ctrl* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.pvr2_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32*, i32** %12, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %19 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @pvr2_ctl_int, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %12, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %13, align 4
  br label %131

31:                                               ; preds = %6
  %32 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %33 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @pvr2_ctl_bool, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %46 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %13, align 4
  br label %130

48:                                               ; preds = %31
  %49 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %50 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @pvr2_ctl_enum, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %48
  %57 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %58 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  store i8** %63, i8*** %14, align 8
  %64 = load i32, i32* %9, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %69 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %67, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %66
  %77 = load i8**, i8*** %14, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i8**, i8*** %14, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %84, i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  %92 = load i32*, i32** %12, align 8
  store i32 %91, i32* %92, align 4
  br label %95

93:                                               ; preds = %76
  %94 = load i32*, i32** %12, align 8
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %93, %83
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %95, %66, %56
  br label %129

97:                                               ; preds = %48
  %98 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %99 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @pvr2_ctl_bitmask, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %106, %107
  %109 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %110 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %108, %115
  %117 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %118 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %10, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @gen_bitmask_string(i32 %116, i32 -1, i32 1, i32 %123, i8* %124, i32 %125)
  %127 = load i32*, i32** %12, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %105, %97
  br label %129

129:                                              ; preds = %128, %96
  br label %130

130:                                              ; preds = %129, %39
  br label %131

131:                                              ; preds = %130, %25
  %132 = load i32, i32* %13, align 4
  ret i32 %132
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @gen_bitmask_string(i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
