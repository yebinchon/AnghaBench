; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_start_vga_cam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_start_vga_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_w_data = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gspca_dev = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32, i64, i32 }

@start_vga_cam.startup_string = internal constant [11 x i32] [i32 0, i32 13, i32 1, i32 0, i32 0, i32 43, i32 0, i32 0, i32 0, i32 80, i32 192], align 16
@start_vga_cam.vga_sensor0_init_data = internal constant [6 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 1, i32 0, i32 12, %struct.TYPE_4__ { i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 20, i32 0, i32 1, %struct.TYPE_4__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 32, i32 0, i32 0, %struct.TYPE_4__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 37, i32 0, i32 3, %struct.TYPE_4__ { i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 48, i32 0, i32 48, %struct.TYPE_4__ { i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data zeroinitializer], align 16
@start_vga_cam.color_adj = internal constant [1 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 2, i32 0, i32 6, %struct.TYPE_4__ { i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }], align 16
@start_vga_cam.color_no_adj = internal constant [1 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 2, i32 0, i32 6, %struct.TYPE_4__ { i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }], align 16
@start_vga_cam.vga_sensor1_init_data = internal constant [6 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 17, i32 4, i32 1, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 10, i32 0, i32 0, %struct.TYPE_4__ { i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 17, i32 4, i32 1, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 18, i32 0, i32 0, %struct.TYPE_4__ { i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 17, i32 4, i32 1, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data zeroinitializer], align 16
@start_vga_cam.vga_sensor2_init_data = internal constant [22 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 1, i32 0, i32 72, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 2, i32 0, i32 34, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 5, i32 0, i32 16, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 6, i32 0, i32 0, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 7, i32 0, i32 0, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 8, i32 0, i32 0, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 9, i32 0, i32 0, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 18, i32 0, i32 0, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 19, i32 0, i32 4, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 20, i32 0, i32 0, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 21, i32 0, i32 6, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 22, i32 0, i32 1, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 23, i32 0, i32 226, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 24, i32 0, i32 2, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 25, i32 0, i32 130, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 26, i32 0, i32 0, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 27, i32 0, i32 32, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 29, i32 0, i32 128, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 30, i32 0, i32 8, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 31, i32 0, i32 12, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 32, i32 0, i32 0, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data zeroinitializer], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @start_vga_cam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_vga_cam(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %4, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @memcpy(i32* %12, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @start_vga_cam.startup_string, i64 0, i64 0), i32 11)
  %14 = load %struct.sd*, %struct.sd** %4, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 5
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 10
  store i32 145, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.sd*, %struct.sd** %4, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 10
  store i32 24, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %49 [
    i32 160, label %38
    i32 320, label %43
    i32 640, label %48
    i32 176, label %76
    i32 352, label %81
  ]

38:                                               ; preds = %33
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 9
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, 12
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %33, %38
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 9
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, 4
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %33, %43
  br label %49

49:                                               ; preds = %33, %48
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 80, i32* %51, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 120, i32* %53, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  store i32 4, i32* %55, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  store i32 3, i32* %57, align 4
  %58 = load %struct.sd*, %struct.sd** %4, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  store i32 2, i32* %64, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 8
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %49
  %68 = load %struct.sd*, %struct.sd** %4, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 8
  store i32 4, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %67
  br label %98

76:                                               ; preds = %33
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 9
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, 4
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %33, %76
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  store i32 44, i32* %83, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32 72, i32* %85, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 6
  store i32 148, i32* %87, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  store i32 99, i32* %89, align 4
  %90 = load %struct.sd*, %struct.sd** %4, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %81
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 8
  store i32 100, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %81
  br label %98

98:                                               ; preds = %97, %75
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %100 = call i32 @mr_write(%struct.gspca_dev* %99, i32 11)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %148

105:                                              ; preds = %98
  %106 = load %struct.sd*, %struct.sd** %4, align 8
  %107 = getelementptr inbounds %struct.sd, %struct.sd* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %112 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([6 x %struct.sensor_w_data], [6 x %struct.sensor_w_data]* @start_vga_cam.vga_sensor0_init_data, i64 0, i64 0))
  %113 = call i32 @sensor_write_regs(%struct.gspca_dev* %111, %struct.sensor_w_data* getelementptr inbounds ([6 x %struct.sensor_w_data], [6 x %struct.sensor_w_data]* @start_vga_cam.vga_sensor0_init_data, i64 0, i64 0), i32 %112)
  store i32 %113, i32* %6, align 4
  br label %146

114:                                              ; preds = %105
  %115 = load %struct.sd*, %struct.sd** %4, align 8
  %116 = getelementptr inbounds %struct.sd, %struct.sd* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %141

119:                                              ; preds = %114
  %120 = load %struct.sd*, %struct.sd** %4, align 8
  %121 = getelementptr inbounds %struct.sd, %struct.sd* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %126 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([1 x %struct.sensor_w_data], [1 x %struct.sensor_w_data]* @start_vga_cam.color_adj, i64 0, i64 0))
  %127 = call i32 @sensor_write_regs(%struct.gspca_dev* %125, %struct.sensor_w_data* getelementptr inbounds ([1 x %struct.sensor_w_data], [1 x %struct.sensor_w_data]* @start_vga_cam.color_adj, i64 0, i64 0), i32 %126)
  store i32 %127, i32* %6, align 4
  br label %132

128:                                              ; preds = %119
  %129 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %130 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([1 x %struct.sensor_w_data], [1 x %struct.sensor_w_data]* @start_vga_cam.color_no_adj, i64 0, i64 0))
  %131 = call i32 @sensor_write_regs(%struct.gspca_dev* %129, %struct.sensor_w_data* getelementptr inbounds ([1 x %struct.sensor_w_data], [1 x %struct.sensor_w_data]* @start_vga_cam.color_no_adj, i64 0, i64 0), i32 %130)
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %148

137:                                              ; preds = %132
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %139 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([6 x %struct.sensor_w_data], [6 x %struct.sensor_w_data]* @start_vga_cam.vga_sensor1_init_data, i64 0, i64 0))
  %140 = call i32 @sensor_write_regs(%struct.gspca_dev* %138, %struct.sensor_w_data* getelementptr inbounds ([6 x %struct.sensor_w_data], [6 x %struct.sensor_w_data]* @start_vga_cam.vga_sensor1_init_data, i64 0, i64 0), i32 %139)
  store i32 %140, i32* %6, align 4
  br label %145

141:                                              ; preds = %114
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %143 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([22 x %struct.sensor_w_data], [22 x %struct.sensor_w_data]* @start_vga_cam.vga_sensor2_init_data, i64 0, i64 0))
  %144 = call i32 @sensor_write_regs(%struct.gspca_dev* %142, %struct.sensor_w_data* getelementptr inbounds ([22 x %struct.sensor_w_data], [22 x %struct.sensor_w_data]* @start_vga_cam.vga_sensor2_init_data, i64 0, i64 0), i32 %143)
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %141, %137
  br label %146

146:                                              ; preds = %145, %110
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %135, %103
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mr_write(%struct.gspca_dev*, i32) #1

declare dso_local i32 @sensor_write_regs(%struct.gspca_dev*, %struct.sensor_w_data*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sensor_w_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
