; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_read_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_read_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i8*, i8*, i32, i64, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@S5C73M3_SENSOR_FW_LEN = common dso_local global i32 0, align 4
@S5C73M3_SENSOR_TYPE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Sensor type: %s, FW version: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*)* @s5c73m3_read_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_read_fw_version(%struct.s5c73m3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5c73m3*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %3, align 8
  %9 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %10 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %9, i32 0, i32 4
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %4, align 8
  %11 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %12 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 96, i32 0
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %58, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @S5C73M3_SENSOR_FW_LEN, align 4
  %20 = sdiv i32 %19, 2
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %17
  %23 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 2
  %27 = add nsw i32 %24, %26
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %29 = call i32 @s5c73m3_read(%struct.s5c73m3* %23, i32 %27, i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %156

34:                                               ; preds = %22
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %40 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 %38, i8* %45, align 1
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 8
  %49 = trunc i32 %48 to i8
  %50 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %51 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 %53, 2
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  store i8 %49, i8* %57, align 1
  br label %58

58:                                               ; preds = %34
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %17

61:                                               ; preds = %17
  %62 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %63 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* @S5C73M3_SENSOR_FW_LEN, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 0, i8* %67, align 1
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %110, %61
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @S5C73M3_SENSOR_TYPE_LEN, align 4
  %71 = sdiv i32 %70, 2
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %113

73:                                               ; preds = %68
  %74 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 6
  %77 = load i32, i32* %5, align 4
  %78 = mul nsw i32 %77, 2
  %79 = add nsw i32 %76, %78
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %81 = call i32 @s5c73m3_read(%struct.s5c73m3* %74, i32 %79, i32* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %156

86:                                               ; preds = %73
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 255
  %90 = trunc i32 %89 to i8
  %91 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %92 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = mul nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 %90, i8* %97, align 1
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 8
  %101 = trunc i32 %100 to i8
  %102 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %103 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = mul nsw i32 %105, 2
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %104, i64 %108
  store i8 %101, i8* %109, align 1
  br label %110

110:                                              ; preds = %86
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %68

113:                                              ; preds = %68
  %114 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %115 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @S5C73M3_SENSOR_TYPE_LEN, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8 0, i8* %119, align 1
  %120 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 20
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %124 = call i32 @s5c73m3_read(%struct.s5c73m3* %120, i32 %122, i32* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %113
  %128 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 22
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = call i32 @s5c73m3_read(%struct.s5c73m3* %128, i32 %130, i32* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %127
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 16
  %142 = add nsw i32 %138, %141
  %143 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %144 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %136, %127
  br label %146

146:                                              ; preds = %145, %113
  %147 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %148 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %149 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %152 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @v4l2_info(%struct.v4l2_subdev* %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %150, i8* %153)
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %146, %84, %32
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @s5c73m3_read(%struct.s5c73m3*, i32, i32*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
