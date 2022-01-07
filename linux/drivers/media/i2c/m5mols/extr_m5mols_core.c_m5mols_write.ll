; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.m5mols_info = type { i64 }
%struct.i2c_msg = type { i32*, i64, i64, i32 }

@M5MOLS_I2C_MAX_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Wrong data size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M5MOLS_BYTE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"write failed: cat:%02x cmd:%02x ret:%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m5mols_write(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.m5mols_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca [1 x %struct.i2c_msg], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %20 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %8, align 8
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %22 = call %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev* %21)
  store %struct.m5mols_info* %22, %struct.m5mols_info** %9, align 8
  %23 = load i32, i32* @M5MOLS_I2C_MAX_SIZE, align 4
  %24 = add nsw i32 %23, 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @I2C_CATEGORY(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @I2C_COMMAND(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @I2C_SIZE(i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = getelementptr inbounds i32, i32* %27, i64 4
  store i32* %34, i32** %15, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %113

42:                                               ; preds = %3
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 2
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 4
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %53 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_err(%struct.v4l2_subdev* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %113

56:                                               ; preds = %48, %45, %42
  %57 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %16, i64 0, i64 0
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %16, i64 0, i64 0
  %63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i32 0, i32 2
  store i64 0, i64* %63, align 16
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, 4
  %67 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %16, i64 0, i64 0
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %16, i64 0, i64 0
  %70 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i32 0, i32 0
  store i32* %27, i32** %70, align 16
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 4
  %73 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %72, i32* %73, align 16
  %74 = load i32, i32* @M5MOLS_BYTE_WRITE, align 4
  %75 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %12, align 4
  %77 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @m5mols_swap_byte(i32* %7, i32 %80)
  %82 = load i32*, i32** %15, align 8
  store i32 %81, i32* %82, align 4
  %83 = call i32 @usleep_range(i32 200, i32 300)
  %84 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %16, i64 0, i64 0
  %88 = call i32 @i2c_transfer(i32 %86, %struct.i2c_msg* %87, i32 1)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %113

92:                                               ; preds = %56
  %93 = load %struct.m5mols_info*, %struct.m5mols_info** %9, align 8
  %94 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %17, align 4
  %102 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_err(%struct.v4l2_subdev* %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %92
  %104 = load i32, i32* %17, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* %17, align 4
  br label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  br label %111

111:                                              ; preds = %108, %106
  %112 = phi i32 [ %107, %106 ], [ %110, %108 ]
  store i32 %112, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %113

113:                                              ; preds = %111, %91, %51, %39
  %114 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @I2C_CATEGORY(i32) #1

declare dso_local i32 @I2C_COMMAND(i32) #1

declare dso_local i32 @I2C_SIZE(i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @m5mols_swap_byte(i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
