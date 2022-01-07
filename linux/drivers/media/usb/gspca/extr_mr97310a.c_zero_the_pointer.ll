; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_zero_the_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_zero_the_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"status is %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @zero_the_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zero_the_pointer(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = call i32 @cam_get_response16(%struct.gspca_dev* %11, i32 33, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %156

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 25, i32* %19, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 81, i32* %21, align 4
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = call i32 @mr_write(%struct.gspca_dev* %22, i32 2)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %156

28:                                               ; preds = %17
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = call i32 @cam_get_response16(%struct.gspca_dev* %29, i32 33, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %156

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 25, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 186, i32* %39, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = call i32 @mr_write(%struct.gspca_dev* %40, i32 2)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %156

46:                                               ; preds = %35
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %48 = call i32 @cam_get_response16(%struct.gspca_dev* %47, i32 33, i32 0)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %156

53:                                               ; preds = %46
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 25, i32* %55, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %59 = call i32 @mr_write(%struct.gspca_dev* %58, i32 2)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %156

64:                                               ; preds = %53
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %66 = call i32 @cam_get_response16(%struct.gspca_dev* %65, i32 33, i32 0)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %156

71:                                               ; preds = %64
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 25, i32* %73, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %77 = call i32 @mr_write(%struct.gspca_dev* %76, i32 2)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %156

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %103, %82
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 10
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 256
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i1 [ false, %83 ], [ %88, %86 ]
  br i1 %90, label %91, label %104

91:                                               ; preds = %89
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %93 = call i32 @cam_get_response16(%struct.gspca_dev* %92, i32 33, i32 0)
  store i32 %93, i32* %5, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %156

103:                                              ; preds = %91
  br label %83

104:                                              ; preds = %89
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 10
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @gspca_err(%struct.gspca_dev* %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %104
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %138, %111
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %139

115:                                              ; preds = %112
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 25, i32* %117, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 0, i32* %119, align 4
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %121 = call i32 @mr_write(%struct.gspca_dev* %120, i32 2)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %2, align 4
  br label %156

126:                                              ; preds = %115
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %128 = call i32 @cam_get_response16(%struct.gspca_dev* %127, i32 33, i32 0)
  store i32 %128, i32* %5, align 4
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %2, align 4
  br label %156

138:                                              ; preds = %126
  br label %112

139:                                              ; preds = %112
  %140 = load i32*, i32** %4, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 25, i32* %141, align 4
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %143 = call i32 @mr_write(%struct.gspca_dev* %142, i32 1)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* %5, align 4
  store i32 %147, i32* %2, align 4
  br label %156

148:                                              ; preds = %139
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %150 = call i32 @mr_read(%struct.gspca_dev* %149, i32 16)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %5, align 4
  store i32 %154, i32* %2, align 4
  br label %156

155:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %153, %146, %136, %124, %101, %80, %69, %62, %51, %44, %33, %26, %15
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @cam_get_response16(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @mr_write(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32) #1

declare dso_local i32 @mr_read(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
