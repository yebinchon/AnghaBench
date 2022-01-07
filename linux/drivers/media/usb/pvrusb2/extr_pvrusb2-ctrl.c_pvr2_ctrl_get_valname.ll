; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_get_valname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ctrl.c_pvr2_ctrl_get_valname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8**, i32 }
%struct.TYPE_6__ = type { i8** }

@EINVAL = common dso_local global i32 0, align 4
@pvr2_ctl_enum = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@pvr2_ctl_bitmask = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_ctrl_get_valname(%struct.pvr2_ctrl* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvr2_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %20 = icmp ne %struct.pvr2_ctrl* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %131

22:                                               ; preds = %5
  %23 = load i32*, i32** %11, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %25 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @LOCK_TAKE(i32 %28)
  br label %30

30:                                               ; preds = %22
  %31 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %32 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @pvr2_ctl_enum, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %30
  %39 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %40 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  store i8** %45, i8*** %13, align 8
  %46 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @pvr2_ctrl_range_check(%struct.pvr2_ctrl* %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %38
  %51 = load i8**, i8*** %13, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i8**, i8*** %13, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @scnprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  br label %69

67:                                               ; preds = %50
  %68 = load i32*, i32** %11, align 8
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %57
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %69, %38
  br label %122

71:                                               ; preds = %30
  %72 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %73 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @pvr2_ctl_bitmask, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %121

79:                                               ; preds = %71
  %80 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %81 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  store i8** %86, i8*** %14, align 8
  %87 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %88 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %8, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %96

96:                                               ; preds = %115, %79
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %16, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i8**, i8*** %14, align 8
  %108 = load i32, i32* %15, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @scnprintf(i8* %105, i32 %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %111)
  %113 = load i32*, i32** %11, align 8
  store i32 %112, i32* %113, align 4
  store i32 0, i32* %12, align 4
  br label %120

114:                                              ; preds = %99
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %15, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = shl i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %96

120:                                              ; preds = %104, %96
  br label %121

121:                                              ; preds = %120, %71
  br label %122

122:                                              ; preds = %121, %70
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %7, align 8
  %125 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @LOCK_GIVE(i32 %128)
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %123, %21
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i64 @pvr2_ctrl_range_check(%struct.pvr2_ctrl*, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
