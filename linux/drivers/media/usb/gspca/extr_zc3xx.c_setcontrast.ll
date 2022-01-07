; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_zc3xx.c_setcontrast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_zc3xx.c_setcontrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@setcontrast.delta_b = internal constant [16 x i32] [i32 80, i32 56, i32 45, i32 40, i32 36, i32 33, i32 30, i32 29, i32 29, i32 27, i32 27, i32 27, i32 25, i32 24, i32 24, i32 24], align 16
@setcontrast.delta_c = internal constant [16 x i32] [i32 44, i32 26, i32 18, i32 12, i32 10, i32 6, i32 6, i32 6, i32 4, i32 6, i32 4, i32 4, i32 3, i32 3, i32 2, i32 2], align 16
@setcontrast.gamma_tb = internal constant [6 x [16 x i32]] [[16 x i32] [i32 0, i32 0, i32 3, i32 13, i32 27, i32 46, i32 69, i32 95, i32 121, i32 147, i32 171, i32 193, i32 212, i32 229, i32 243, i32 255], [16 x i32] [i32 1, i32 12, i32 31, i32 58, i32 83, i32 109, i32 133, i32 156, i32 176, i32 194, i32 209, i32 222, i32 233, i32 242, i32 249, i32 255], [16 x i32] [i32 4, i32 22, i32 48, i32 78, i32 104, i32 129, i32 152, i32 172, i32 190, i32 205, i32 218, i32 228, i32 237, i32 245, i32 251, i32 255], [16 x i32] [i32 19, i32 56, i32 89, i32 121, i32 146, i32 167, i32 185, i32 200, i32 212, i32 223, i32 231, i32 238, i32 244, i32 249, i32 252, i32 255], [16 x i32] [i32 32, i32 75, i32 110, i32 141, i32 163, i32 181, i32 197, i32 210, i32 220, i32 229, i32 236, i32 242, i32 246, i32 250, i32 253, i32 255], [16 x i32] [i32 36, i32 68, i32 100, i32 132, i32 157, i32 178, i32 196, i32 211, i32 224, i32 235, i32 244, i32 255, i32 255, i32 255, i32 255, i32 255]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32, i32)* @setcontrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setcontrast(%struct.gspca_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [16 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [6 x [16 x i32]], [6 x [16 x i32]]* @setcontrast.gamma_tb, i64 0, i64 %18
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 128
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 128
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %109, %4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %112

28:                                               ; preds = %25
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* @setcontrast.delta_b, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sdiv i32 %39, 256
  %41 = add nsw i32 %33, %40
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* @setcontrast.delta_c, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sdiv i32 %47, 256
  %49 = sub nsw i32 %41, %48
  %50 = load i32, i32* %12, align 4
  %51 = sdiv i32 %50, 2
  %52 = sub nsw i32 %49, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 255
  br i1 %54, label %55, label %56

55:                                               ; preds = %28
  store i32 255, i32* %10, align 4
  br label %61

56:                                               ; preds = %28
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %61

61:                                               ; preds = %60, %55
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 288, %64
  %66 = call i32 @reg_w(%struct.gspca_dev* %62, i32 %63, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %12, align 4
  br label %79

72:                                               ; preds = %61
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %69
  %80 = load i32, i32* %11, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %14, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sdiv i32 %85, 2
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 %89
  store i32 %86, i32* %90, align 4
  br label %106

91:                                               ; preds = %79
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %102

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %99, %100
  br label %102

102:                                              ; preds = %98, %97
  %103 = phi i32 [ 0, %97 ], [ %101, %98 ]
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  store i32 %103, i32* %104, align 16
  br label %105

105:                                              ; preds = %102, %91
  br label %106

106:                                              ; preds = %105, %82
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %25

112:                                              ; preds = %25
  %113 = load i32, i32* %14, align 4
  %114 = sub nsw i32 255, %113
  %115 = sdiv i32 %114, 2
  %116 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  store i32 %115, i32* %116, align 4
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %129, %112
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 16
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 304, %126
  %128 = call i32 @reg_w(%struct.gspca_dev* %121, i32 %125, i32 %127)
  br label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %117

132:                                              ; preds = %117
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
