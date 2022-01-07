; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_do_autoexposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_do_autoexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@MIN_AVG_LUM = common dso_local global i64 0, align 8
@MAX_AVG_LUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64)* @do_autoexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_autoexposure(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %5, align 8
  %12 = load %struct.sd*, %struct.sd** %5, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i64 @v4l2_ctrl_g_ctrl(%struct.TYPE_3__* %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.sd*, %struct.sd** %5, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sd*, %struct.sd** %5, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %20, %24
  store i64 %25, i64* %7, align 8
  %26 = load %struct.sd*, %struct.sd** %5, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sd*, %struct.sd** %5, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @MIN_AVG_LUM, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %2
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %153

44:                                               ; preds = %39
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.sd*, %struct.sd** %5, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %45, %49
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %54, %44
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = load %struct.sd*, %struct.sd** %5, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_3__* %65, i64 %66)
  %68 = load %struct.sd*, %struct.sd** %5, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sd*, %struct.sd** %5, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sd*, %struct.sd** %5, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.sd*, %struct.sd** %5, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sd*, %struct.sd** %5, align 8
  %79 = getelementptr inbounds %struct.sd, %struct.sd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %62
  %84 = load %struct.sd*, %struct.sd** %5, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %85, align 8
  br label %93

88:                                               ; preds = %62
  %89 = load %struct.sd*, %struct.sd** %5, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %88, %83
  br label %94

94:                                               ; preds = %93, %2
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @MAX_AVG_LUM, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %153

98:                                               ; preds = %94
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %153

103:                                              ; preds = %98
  %104 = load i64, i64* %6, align 8
  %105 = load %struct.sd*, %struct.sd** %5, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = sub nsw i64 %104, %108
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %7, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i64, i64* %7, align 8
  store i64 %114, i64* %9, align 8
  br label %115

115:                                              ; preds = %113, %103
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %8, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i64, i64* %8, align 8
  store i64 %120, i64* %9, align 8
  br label %121

121:                                              ; preds = %119, %115
  %122 = load %struct.sd*, %struct.sd** %5, align 8
  %123 = getelementptr inbounds %struct.sd, %struct.sd* %122, i32 0, i32 3
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_3__* %124, i64 %125)
  %127 = load %struct.sd*, %struct.sd** %5, align 8
  %128 = getelementptr inbounds %struct.sd, %struct.sd* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.sd*, %struct.sd** %5, align 8
  %131 = getelementptr inbounds %struct.sd, %struct.sd* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.sd*, %struct.sd** %5, align 8
  %133 = getelementptr inbounds %struct.sd, %struct.sd* %132, i32 0, i32 2
  store i32 0, i32* %133, align 8
  %134 = load %struct.sd*, %struct.sd** %5, align 8
  %135 = getelementptr inbounds %struct.sd, %struct.sd* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.sd*, %struct.sd** %5, align 8
  %138 = getelementptr inbounds %struct.sd, %struct.sd* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %136, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %121
  %143 = load %struct.sd*, %struct.sd** %5, align 8
  %144 = getelementptr inbounds %struct.sd, %struct.sd* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sdiv i32 %145, 2
  store i32 %146, i32* %144, align 8
  br label %152

147:                                              ; preds = %121
  %148 = load %struct.sd*, %struct.sd** %5, align 8
  %149 = getelementptr inbounds %struct.sd, %struct.sd* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 2
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %147, %142
  br label %153

153:                                              ; preds = %43, %102, %152, %94
  ret void
}

declare dso_local i64 @v4l2_ctrl_g_ctrl(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
