; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_i2c_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_i2c_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, %struct.TYPE_2__*, %struct.i2c_adapter }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.i2c_adapter = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.cx25840_platform_data = type { i32 }
%struct.i2c_board_info = type { i8*, %struct.cx25840_platform_data*, i32 }

@hw_devicenames = common dso_local global i8** null, align 8
@IVTV_HW_TUNER = common dso_local global i32 0, align 4
@IVTV_HW_IR_ANY = common dso_local global i32 0, align 4
@hw_addrs = common dso_local global i32* null, align 8
@IVTV_HW_UPD64031A = common dso_local global i32 0, align 4
@IVTV_HW_UPD6408X = common dso_local global i32 0, align 4
@IVTV_HW_CX25840 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cx25840\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_i2c_register(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cx25840_platform_data, align 4
  %11 = alloca %struct.i2c_board_info, align 8
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 3
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %7, align 8
  %14 = load i8**, i8*** @hw_devicenames, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IVTV_HW_TUNER, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %2
  %25 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %26 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %25, i32 0, i32 0
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %30 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %26, %struct.i2c_adapter* %27, i8* %28, i32 0, i32* %33)
  store %struct.v4l2_subdev* %34, %struct.v4l2_subdev** %6, align 8
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %36 = icmp ne %struct.v4l2_subdev* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 1, %38
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %24
  %43 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %44 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %43, i32 0, i32 0
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %48 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %44, %struct.i2c_adapter* %45, i8* %46, i32 0, i32* %51)
  store %struct.v4l2_subdev* %52, %struct.v4l2_subdev** %6, align 8
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %54 = icmp ne %struct.v4l2_subdev* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = shl i32 1, %56
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %42
  %61 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %62 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %61, i32 0, i32 0
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %66 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %62, %struct.i2c_adapter* %63, i8* %64, i32 0, i32* %69)
  store %struct.v4l2_subdev* %70, %struct.v4l2_subdev** %6, align 8
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %72 = icmp ne %struct.v4l2_subdev* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %60
  %74 = load i32, i32* %5, align 4
  %75 = shl i32 1, %74
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %60
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %80 = icmp ne %struct.v4l2_subdev* %79, null
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 0, i32 -1
  store i32 %82, i32* %3, align 4
  br label %173

83:                                               ; preds = %2
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @IVTV_HW_IR_ANY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = load i32*, i32** @hw_addrs, align 8
  %93 = load i32, i32* %5, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ivtv_i2c_new_ir(%struct.ivtv* %89, i32 %90, i8* %91, i32 %96)
  store i32 %97, i32* %3, align 4
  br label %173

98:                                               ; preds = %83
  %99 = load i32*, i32** @hw_addrs, align 8
  %100 = load i32, i32* %5, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  store i32 -1, i32* %3, align 4
  br label %173

106:                                              ; preds = %98
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @IVTV_HW_UPD64031A, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @IVTV_HW_UPD6408X, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %110, %106
  %115 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %116 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %115, i32 0, i32 0
  %117 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i32*, i32** @hw_addrs, align 8
  %120 = load i32, i32* %5, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32* @I2C_ADDRS(i32 %123)
  %125 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %116, %struct.i2c_adapter* %117, i8* %118, i32 0, i32* %124)
  store %struct.v4l2_subdev* %125, %struct.v4l2_subdev** %6, align 8
  br label %160

126:                                              ; preds = %110
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @IVTV_HW_CX25840, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %131, align 8
  %132 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 1
  store %struct.cx25840_platform_data* %10, %struct.cx25840_platform_data** %132, align 8
  %133 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 2
  %134 = load i32*, i32** @hw_addrs, align 8
  %135 = load i32, i32* %5, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %133, align 8
  %139 = call i32 @memset(%struct.cx25840_platform_data* %10, i32 0, i32 4)
  %140 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %141 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.cx25840_platform_data, %struct.cx25840_platform_data* %10, i32 0, i32 0
  store i32 %142, i32* %143, align 4
  %144 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %145 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %144, i32 0, i32 0
  %146 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %147 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev_board(i32* %145, %struct.i2c_adapter* %146, %struct.i2c_board_info* %11, i32* null)
  store %struct.v4l2_subdev* %147, %struct.v4l2_subdev** %6, align 8
  br label %159

148:                                              ; preds = %126
  %149 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %150 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %149, i32 0, i32 0
  %151 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i32*, i32** @hw_addrs, align 8
  %154 = load i32, i32* %5, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %150, %struct.i2c_adapter* %151, i8* %152, i32 %157, i32* null)
  store %struct.v4l2_subdev* %158, %struct.v4l2_subdev** %6, align 8
  br label %159

159:                                              ; preds = %148, %130
  br label %160

160:                                              ; preds = %159, %114
  %161 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %162 = icmp ne %struct.v4l2_subdev* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i32, i32* %5, align 4
  %165 = shl i32 1, %164
  %166 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %167 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %163, %160
  %169 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %170 = icmp ne %struct.v4l2_subdev* %169, null
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 0, i32 -1
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %168, %105, %88, %78
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32*, %struct.i2c_adapter*, i8*, i32, i32*) #1

declare dso_local i32 @ivtv_i2c_new_ir(%struct.ivtv*, i32, i8*, i32) #1

declare dso_local i32* @I2C_ADDRS(i32) #1

declare dso_local i32 @memset(%struct.cx25840_platform_data*, i32, i32) #1

declare dso_local %struct.v4l2_subdev* @v4l2_i2c_new_subdev_board(i32*, %struct.i2c_adapter*, %struct.i2c_board_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
