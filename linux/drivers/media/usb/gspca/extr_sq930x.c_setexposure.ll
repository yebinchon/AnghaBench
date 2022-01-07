; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_setexposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_setexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_s = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@SQ930_CTRL_SET_EXPOSURE = common dso_local global i32 0, align 4
@sensor_tb = common dso_local global %struct.sensor_s* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32)* @setexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setexposure(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sensor_s*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [15 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %17 = bitcast %struct.gspca_dev* %16 to %struct.sd*
  store %struct.sd* %17, %struct.sd** %7, align 8
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* @SQ930_CTRL_SET_EXPOSURE, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.sd*, %struct.sd** %7, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %68 [
    i32 129, label %23
    i32 128, label %23
  ]

23:                                               ; preds = %3, %3
  %24 = load %struct.sd*, %struct.sd** %7, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 129
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 528, i32 623
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %11, align 4
  br label %40

35:                                               ; preds = %23
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %35, %33
  %41 = load i32, i32* %10, align 4
  %42 = ashr i32 %41, 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  %53 = ashr i32 %52, 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %66
  store i32 %63, i32* %67, align 4
  br label %152

68:                                               ; preds = %3
  %69 = load i32, i32* %14, align 4
  %70 = or i32 %69, 256
  store i32 %70, i32* %14, align 4
  %71 = load %struct.sensor_s*, %struct.sensor_s** @sensor_tb, align 8
  %72 = load %struct.sd*, %struct.sd** %7, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sensor_s, %struct.sensor_s* %71, i64 %75
  store %struct.sensor_s* %76, %struct.sensor_s** %13, align 8
  %77 = load %struct.sensor_s*, %struct.sensor_s** %13, align 8
  %78 = getelementptr inbounds %struct.sensor_s, %struct.sensor_s* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %82
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %86
  store i32 8, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %90
  store i32 9, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %92, 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load %struct.sensor_s*, %struct.sensor_s** %13, align 8
  %99 = getelementptr inbounds %struct.sensor_s, %struct.sensor_s* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %103
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %108
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %112
  store i32 53, i32* %113, align 4
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %116
  store i32 0, i32* %117, align 4
  %118 = load %struct.sensor_s*, %struct.sensor_s** %13, align 8
  %119 = getelementptr inbounds %struct.sensor_s, %struct.sensor_s* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %6, align 4
  %126 = sdiv i32 %125, 2
  %127 = add nsw i32 128, %126
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %130
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %134
  store i32 0, i32* %135, align 4
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %138
  store i32 0, i32* %139, align 4
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %142
  store i32 0, i32* %143, align 4
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %146
  store i32 0, i32* %147, align 4
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 %150
  store i32 131, i32* %151, align 4
  br label %152

152:                                              ; preds = %68, %40
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %154 = load i32, i32* %14, align 4
  %155 = getelementptr inbounds [15 x i32], [15 x i32]* %15, i64 0, i64 0
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @reg_wb(%struct.gspca_dev* %153, i32 %154, i32 0, i32* %155, i32 %156)
  ret void
}

declare dso_local i32 @reg_wb(%struct.gspca_dev*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
