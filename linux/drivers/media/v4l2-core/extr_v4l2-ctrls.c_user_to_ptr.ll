; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_user_to_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_user_to_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_control = type { i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.v4l2_ctrl*, i32, i8*)* }
%union.v4l2_ctrl_ptr = type { i8* }

@EFAULT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ext_control*, %struct.v4l2_ctrl*, i8*)* @user_to_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_to_ptr(%struct.v4l2_ext_control* %0, %struct.v4l2_ctrl* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.v4l2_ctrl_ptr, align 8
  %6 = alloca %struct.v4l2_ext_control*, align 8
  %7 = alloca %struct.v4l2_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = getelementptr inbounds %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr* %5, i32 0, i32 0
  store i8* %2, i8** %12, align 8
  store %struct.v4l2_ext_control* %0, %struct.v4l2_ext_control** %6, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %7, align 8
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %79

19:                                               ; preds = %3
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %79, label %24

24:                                               ; preds = %19
  %25 = bitcast %union.v4l2_ctrl_ptr* %5 to i8**
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @copy_from_user(i8* %26, i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  br label %39

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 0, %38 ]
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %165

50:                                               ; preds = %43
  %51 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = udiv i32 %53, %56
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %75, %50
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (%struct.v4l2_ctrl*, i32, i8*)*, i32 (%struct.v4l2_ctrl*, i32, i8*)** %68, align 8
  %70 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = getelementptr inbounds %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr* %5, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 %69(%struct.v4l2_ctrl* %70, i32 %71, i8* %73)
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %58

78:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %165

79:                                               ; preds = %19, %3
  %80 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %158 [
    i32 129, label %83
    i32 128, label %89
  ]

83:                                               ; preds = %79
  %84 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = bitcast %union.v4l2_ctrl_ptr* %5 to i32**
  %88 = load i32*, i32** %87, align 8
  store i32 %86, i32* %88, align 4
  br label %164

89:                                               ; preds = %79
  %90 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %91 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @ERANGE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %165

98:                                               ; preds = %89
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  %104 = icmp ugt i32 %99, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %105, %98
  %111 = bitcast %union.v4l2_ctrl_ptr* %5 to i8**
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %114 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i64 @copy_from_user(i8* %112, i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load i32, i32* @EFAULT, align 4
  %121 = sub nsw i32 0, %120
  br label %123

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %119
  %124 = phi i32 [ %121, %119 ], [ 0, %122 ]
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %156, label %127

127:                                              ; preds = %123
  %128 = bitcast %union.v4l2_ctrl_ptr* %5 to i8**
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sub i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8, i8* %133, align 1
  store i8 %134, i8* %11, align 1
  %135 = bitcast %union.v4l2_ctrl_ptr* %5 to i8**
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sub i32 %137, 1
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8 0, i8* %140, align 1
  %141 = bitcast %union.v4l2_ctrl_ptr* %5 to i8**
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strlen(i8* %142)
  %144 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %145 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %143, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %127
  %149 = load i8, i8* %11, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* @ERANGE, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  br label %165

155:                                              ; preds = %148, %127
  br label %156

156:                                              ; preds = %155, %123
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %4, align 4
  br label %165

158:                                              ; preds = %79
  %159 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %6, align 8
  %160 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = bitcast %union.v4l2_ctrl_ptr* %5 to i32**
  %163 = load i32*, i32** %162, align 8
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %158, %83
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %156, %152, %95, %78, %48
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i64 @copy_from_user(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
