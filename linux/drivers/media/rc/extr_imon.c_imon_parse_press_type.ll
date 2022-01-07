; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_parse_press_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_parse_press_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imon_context = type { i64, i64, i8, i32, i64 }

@KEY_RESERVED = common dso_local global i64 0, align 8
@IMON_KEY_MCE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imon_context*, i8*, i64)* @imon_parse_press_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imon_parse_press_type(%struct.imon_context* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.imon_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.imon_context* %0, %struct.imon_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %10 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %9, i32 0, i32 3
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %14 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KEY_RESERVED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %32 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %35 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %139

36:                                               ; preds = %24, %18, %3
  %37 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %38 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @KEY_RESERVED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 104
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 130
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 129
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 183
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %68 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %71 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %138

72:                                               ; preds = %60, %54, %48, %42, %36
  %73 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %74 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @KEY_RESERVED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %72
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %108

84:                                               ; preds = %78
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %84
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 129
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 3
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 183
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %104 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %107 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %137

108:                                              ; preds = %96, %90, %84, %78, %72
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @IMON_KEY_MCE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  %115 = load i8, i8* %114, align 1
  %116 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %117 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %116, i32 0, i32 2
  store i8 %115, i8* %117, align 8
  store i32 1, i32* %7, align 4
  br label %136

118:                                              ; preds = %108
  %119 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %120 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @KEY_RESERVED, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %7, align 4
  br label %135

127:                                              ; preds = %118
  %128 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %129 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 0, i32* %7, align 4
  br label %134

133:                                              ; preds = %127
  store i32 1, i32* %7, align 4
  br label %134

134:                                              ; preds = %133, %132
  br label %135

135:                                              ; preds = %134, %124
  br label %136

136:                                              ; preds = %135, %112
  br label %137

137:                                              ; preds = %136, %102
  br label %138

138:                                              ; preds = %137, %66
  br label %139

139:                                              ; preds = %138, %30
  %140 = load %struct.imon_context*, %struct.imon_context** %4, align 8
  %141 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %140, i32 0, i32 3
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
