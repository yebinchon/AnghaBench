; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-i2c.c_cx18_i2c_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-i2c.c_cx18_i2c_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, %struct.TYPE_2__*, %struct.i2c_adapter* }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.i2c_adapter = type { i32 }
%struct.v4l2_subdev = type { i64 }

@hw_bus = common dso_local global i32* null, align 8
@hw_devicenames = common dso_local global i8** null, align 8
@CX18_HW_TUNER = common dso_local global i64 0, align 8
@CX18_HW_Z8F0811_IR_HAUP = common dso_local global i64 0, align 8
@hw_addrs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_i2c_register(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** @hw_bus, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.cx18*, %struct.cx18** %4, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 2
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i64 %20
  store %struct.i2c_adapter* %21, %struct.i2c_adapter** %8, align 8
  %22 = load i8**, i8*** @hw_devicenames, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @CX18_HW_TUNER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %89

33:                                               ; preds = %2
  %34 = load %struct.cx18*, %struct.cx18** %4, align 8
  %35 = getelementptr inbounds %struct.cx18, %struct.cx18* %34, i32 0, i32 0
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.cx18*, %struct.cx18** %4, align 8
  %39 = getelementptr inbounds %struct.cx18, %struct.cx18* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %35, %struct.i2c_adapter* %36, i8* %37, i32 0, i32* %42)
  store %struct.v4l2_subdev* %43, %struct.v4l2_subdev** %6, align 8
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %45 = icmp ne %struct.v4l2_subdev* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %33
  %51 = load %struct.cx18*, %struct.cx18** %4, align 8
  %52 = getelementptr inbounds %struct.cx18, %struct.cx18* %51, i32 0, i32 0
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.cx18*, %struct.cx18** %4, align 8
  %56 = getelementptr inbounds %struct.cx18, %struct.cx18* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %52, %struct.i2c_adapter* %53, i8* %54, i32 0, i32* %59)
  store %struct.v4l2_subdev* %60, %struct.v4l2_subdev** %6, align 8
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %62 = icmp ne %struct.v4l2_subdev* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %50
  %68 = load %struct.cx18*, %struct.cx18** %4, align 8
  %69 = getelementptr inbounds %struct.cx18, %struct.cx18* %68, i32 0, i32 0
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.cx18*, %struct.cx18** %4, align 8
  %73 = getelementptr inbounds %struct.cx18, %struct.cx18* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %69, %struct.i2c_adapter* %70, i8* %71, i32 0, i32* %76)
  store %struct.v4l2_subdev* %77, %struct.v4l2_subdev** %6, align 8
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %79 = icmp ne %struct.v4l2_subdev* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %83 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %80, %67
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %86 = icmp ne %struct.v4l2_subdev* %85, null
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 0, i32 -1
  store i32 %88, i32* %3, align 4
  br label %134

89:                                               ; preds = %2
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* @CX18_HW_Z8F0811_IR_HAUP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %struct.cx18*, %struct.cx18** %4, align 8
  %95 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i32*, i32** @hw_addrs, align 8
  %99 = load i32, i32* %5, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @cx18_i2c_new_ir(%struct.cx18* %94, %struct.i2c_adapter* %95, i64 %96, i8* %97, i32 %102)
  store i32 %103, i32* %3, align 4
  br label %134

104:                                              ; preds = %89
  %105 = load i32*, i32** @hw_addrs, align 8
  %106 = load i32, i32* %5, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  store i32 -1, i32* %3, align 4
  br label %134

112:                                              ; preds = %104
  %113 = load %struct.cx18*, %struct.cx18** %4, align 8
  %114 = getelementptr inbounds %struct.cx18, %struct.cx18* %113, i32 0, i32 0
  %115 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i32*, i32** @hw_addrs, align 8
  %118 = load i32, i32* %5, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %114, %struct.i2c_adapter* %115, i8* %116, i32 %121, i32* null)
  store %struct.v4l2_subdev* %122, %struct.v4l2_subdev** %6, align 8
  %123 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %124 = icmp ne %struct.v4l2_subdev* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %112
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %128 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %125, %112
  %130 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %131 = icmp ne %struct.v4l2_subdev* %130, null
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 0, i32 -1
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %129, %111, %93, %84
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32*, %struct.i2c_adapter*, i8*, i32, i32*) #1

declare dso_local i32 @cx18_i2c_new_ir(%struct.cx18*, %struct.i2c_adapter*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
