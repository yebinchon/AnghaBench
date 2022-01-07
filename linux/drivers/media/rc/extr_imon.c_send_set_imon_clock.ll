; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_send_set_imon_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_send_set_imon_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imon_context = type { i32, i32, i32 }

@IMON_CLOCK_ENABLE_PACKETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no context for device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"send_packet failed for packet %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imon_context*, i32, i32, i32, i32, i32, i32, i32)* @send_set_imon_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_set_imon_clock(%struct.imon_context* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.imon_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.imon_context* %0, %struct.imon_context** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* @IMON_CLOCK_ENABLE_PACKETS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca [8 x i8], i64 %24, align 16
  store i64 %24, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %27 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %28 = icmp ne %struct.imon_context* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %8
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %172

33:                                               ; preds = %8
  %34 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %35 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %142 [
    i32 129, label %37
    i32 128, label %94
  ]

37:                                               ; preds = %33
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %38, i64 0, i64 0
  store i8 -128, i8* %39, align 16
  %40 = load i32, i32* %11, align 4
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %42, i64 0, i64 1
  store i8 %41, i8* %43, align 1
  %44 = load i32, i32* %12, align 4
  %45 = sub i32 %44, 1
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i64 0, i64 2
  store i8 %46, i8* %48, align 2
  %49 = load i32, i32* %13, align 4
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %51, i64 0, i64 3
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %15, align 4
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %55, i64 0, i64 4
  store i8 %54, i8* %56, align 4
  %57 = load i32, i32* %16, align 4
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %59, i64 0, i64 5
  store i8 %58, i8* %60, align 1
  %61 = load i32, i32* %17, align 4
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %63, i64 0, i64 6
  store i8 %62, i8* %64, align 2
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %65, i64 0, i64 0
  store i8 -128, i8* %66, align 8
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %67, i64 0, i64 1
  store i8 0, i8* %68, align 1
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %69, i64 0, i64 2
  store i8 0, i8* %70, align 2
  %71 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %71, i64 0, i64 3
  store i8 0, i8* %72, align 1
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %73, i64 0, i64 4
  store i8 0, i8* %74, align 4
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %75, i64 0, i64 5
  store i8 0, i8* %76, align 1
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %77, i64 0, i64 6
  store i8 0, i8* %78, align 2
  %79 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %80 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 65500
  br i1 %82, label %83, label %88

83:                                               ; preds = %37
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %84, i64 0, i64 7
  store i8 80, i8* %85, align 1
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %86, i64 0, i64 7
  store i8 81, i8* %87, align 1
  br label %93

88:                                               ; preds = %37
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %90 = getelementptr inbounds [8 x i8], [8 x i8]* %89, i64 0, i64 7
  store i8 -120, i8* %90, align 1
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %91, i64 0, i64 7
  store i8 -118, i8* %92, align 1
  br label %93

93:                                               ; preds = %88, %83
  br label %145

94:                                               ; preds = %33
  %95 = load i32, i32* %11, align 4
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %97, i64 0, i64 0
  store i8 %96, i8* %98, align 16
  %99 = load i32, i32* %12, align 4
  %100 = sub i32 %99, 1
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %103 = getelementptr inbounds [8 x i8], [8 x i8]* %102, i64 0, i64 1
  store i8 %101, i8* %103, align 1
  %104 = load i32, i32* %13, align 4
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %106, i64 0, i64 2
  store i8 %105, i8* %107, align 2
  %108 = load i32, i32* %14, align 4
  %109 = trunc i32 %108 to i8
  %110 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %111 = getelementptr inbounds [8 x i8], [8 x i8]* %110, i64 0, i64 3
  store i8 %109, i8* %111, align 1
  %112 = load i32, i32* %15, align 4
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %114, i64 0, i64 4
  store i8 %113, i8* %115, align 4
  %116 = load i32, i32* %16, align 4
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %119 = getelementptr inbounds [8 x i8], [8 x i8]* %118, i64 0, i64 5
  store i8 %117, i8* %119, align 1
  %120 = load i32, i32* %17, align 4
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %123 = getelementptr inbounds [8 x i8], [8 x i8]* %122, i64 0, i64 6
  store i8 %121, i8* %123, align 2
  %124 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0
  %125 = getelementptr inbounds [8 x i8], [8 x i8]* %124, i64 0, i64 7
  store i8 64, i8* %125, align 1
  %126 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %127 = getelementptr inbounds [8 x i8], [8 x i8]* %126, i64 0, i64 0
  store i8 0, i8* %127, align 8
  %128 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %129 = getelementptr inbounds [8 x i8], [8 x i8]* %128, i64 0, i64 1
  store i8 0, i8* %129, align 1
  %130 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %130, i64 0, i64 2
  store i8 1, i8* %131, align 2
  %132 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %133 = getelementptr inbounds [8 x i8], [8 x i8]* %132, i64 0, i64 3
  store i8 0, i8* %133, align 1
  %134 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %135 = getelementptr inbounds [8 x i8], [8 x i8]* %134, i64 0, i64 4
  store i8 0, i8* %135, align 4
  %136 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %137 = getelementptr inbounds [8 x i8], [8 x i8]* %136, i64 0, i64 5
  store i8 0, i8* %137, align 1
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %139 = getelementptr inbounds [8 x i8], [8 x i8]* %138, i64 0, i64 6
  store i8 0, i8* %139, align 2
  %140 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 1
  %141 = getelementptr inbounds [8 x i8], [8 x i8]* %140, i64 0, i64 7
  store i8 66, i8* %141, align 1
  br label %145

142:                                              ; preds = %33
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %172

145:                                              ; preds = %94, %93
  store i32 0, i32* %21, align 4
  br label %146

146:                                              ; preds = %167, %145
  %147 = load i32, i32* %21, align 4
  %148 = load i32, i32* @IMON_CLOCK_ENABLE_PACKETS, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %170

150:                                              ; preds = %146
  %151 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %152 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 %155
  %157 = getelementptr inbounds [8 x i8], [8 x i8]* %156, i64 0, i64 0
  %158 = call i32 @memcpy(i32 %153, i8* %157, i32 8)
  %159 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  %160 = call i32 @send_packet(%struct.imon_context* %159)
  store i32 %160, i32* %20, align 4
  %161 = load i32, i32* %20, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %150
  %164 = load i32, i32* %21, align 4
  %165 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  br label %170

166:                                              ; preds = %150
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %21, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %21, align 4
  br label %146

170:                                              ; preds = %163, %146
  %171 = load i32, i32* %20, align 4
  store i32 %171, i32* %9, align 4
  store i32 1, i32* %22, align 4
  br label %172

172:                                              ; preds = %170, %142, %29
  %173 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %9, align 4
  ret i32 %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @send_packet(%struct.imon_context*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
