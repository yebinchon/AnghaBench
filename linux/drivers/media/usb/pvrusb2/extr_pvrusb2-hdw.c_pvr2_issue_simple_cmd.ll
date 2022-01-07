; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_issue_simple_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_issue_simple_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.pvr2_hdw = type { i32*, i32 }

@pvrusb2_debug = common dso_local global i32 0, align 4
@PVR2_TRACE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sending FX2 command 0x%x\00", align 1
@pvr2_fx2cmd_desc = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" (%u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c",%u\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32)* @pvr2_issue_simple_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_issue_simple_cmd(%struct.pvr2_hdw* %0, i32 %1) #0 {
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [50 x i8], align 16
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %13 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @LOCK_TAKE(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 255
  %18 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %19 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ugt i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 2, %27 ], [ %29, %28 ]
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %42 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %55

47:                                               ; preds = %34
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %48, 24
  %50 = and i32 %49, 255
  %51 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %52 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %34
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* @pvrusb2_debug, align 4
  %58 = load i32, i32* @PVR2_TRACE_INIT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %173

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, 255
  store i32 %63, i32* %4, align 4
  store i32 0, i32* %10, align 4
  %64 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = sub i64 50, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* %4, align 4
  %73 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %67, i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %111, %61
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pvr2_fx2cmd_desc, align 8
  %80 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %79)
  %81 = icmp ult i32 %78, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %77
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pvr2_fx2cmd_desc, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %82
  %92 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = sub i64 50, %97
  %99 = trunc i64 %98 to i32
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pvr2_fx2cmd_desc, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %95, i32 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %114

110:                                              ; preds = %82
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %77

114:                                              ; preds = %91, %77
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %168

117:                                              ; preds = %114
  %118 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i32, i32* %10, align 4
  %123 = zext i32 %122 to i64
  %124 = sub i64 50, %123
  %125 = trunc i64 %124 to i32
  %126 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %127 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %121, i32 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add i32 %133, %132
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ugt i32 %135, 1
  br i1 %136, label %137, label %155

137:                                              ; preds = %117
  %138 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i32, i32* %10, align 4
  %143 = zext i32 %142 to i64
  %144 = sub i64 50, %143
  %145 = trunc i64 %144 to i32
  %146 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %147 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %141, i32 %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = add i32 %153, %152
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %137, %117
  %156 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %157 = load i32, i32* %10, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i32, i32* %10, align 4
  %161 = zext i32 %160 to i64
  %162 = sub i64 50, %161
  %163 = trunc i64 %162 to i32
  %164 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %159, i32 %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = add i32 %166, %165
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %155, %114
  %169 = load i32, i32* @PVR2_TRACE_INIT, align 4
  %170 = load i32, i32* %10, align 4
  %171 = getelementptr inbounds [50 x i8], [50 x i8]* %11, i64 0, i64 0
  %172 = call i32 @pvr2_trace(i32 %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %170, i8* %171)
  br label %173

173:                                              ; preds = %168, %56
  %174 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %175 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %176 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @pvr2_send_request(%struct.pvr2_hdw* %174, i32* %177, i32 %178, i32* null, i32 0)
  store i32 %179, i32* %5, align 4
  %180 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %181 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @LOCK_GIVE(i32 %182)
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, i8*) #1

declare dso_local i32 @pvr2_send_request(%struct.pvr2_hdw*, i32*, i32, i32*, i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
