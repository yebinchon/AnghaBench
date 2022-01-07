; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.m5mols_info = type { i64 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@M5MOLS_I2C_MAX_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@M5MOLS_BYTE_READ = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"read failed: size:%d cat:%02x cmd:%02x. %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32*)* @m5mols_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_read(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.m5mols_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x %struct.i2c_msg], align 16
  %17 = alloca [5 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %20)
  store %struct.i2c_client* %21, %struct.i2c_client** %10, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %23 = call %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev* %22)
  store %struct.m5mols_info* %23, %struct.m5mols_info** %11, align 8
  %24 = load i32, i32* @M5MOLS_I2C_MAX_SIZE, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @I2C_CATEGORY(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @I2C_COMMAND(i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %111

40:                                               ; preds = %4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %16, i64 0, i64 0
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %16, i64 0, i64 0
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 2
  store i64 0, i64* %47, align 16
  %48 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %16, i64 0, i64 0
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 0
  store i32 5, i32* %49, align 16
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  %51 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %16, i64 0, i64 0
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  store i32 5, i32* %53, align 16
  %54 = load i32, i32* @M5MOLS_BYTE_READ, align 4
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %14, align 4
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 2
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* %15, align 4
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 3
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 4
  store i32 %60, i32* %61, align 16
  %62 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %16, i64 0, i64 1
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* @I2C_M_RD, align 8
  %68 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %16, i64 0, i64 1
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 16
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  %72 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %16, i64 0, i64 1
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 16
  %74 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %16, i64 0, i64 1
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 1
  store i32* %28, i32** %75, align 8
  %76 = call i32 @usleep_range(i32 200, i32 300)
  %77 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %16, i64 0, i64 0
  %81 = call i32 @i2c_transfer(i32 %79, %struct.i2c_msg* %80, i32 2)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %89

84:                                               ; preds = %40
  %85 = getelementptr inbounds i32, i32* %28, i64 1
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @m5mols_swap_byte(i32* %85, i32 %86)
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %111

89:                                               ; preds = %40
  %90 = load %struct.m5mols_info*, %struct.m5mols_info** %11, align 8
  %91 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @v4l2_err(%struct.v4l2_subdev* %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %94, %89
  %102 = load i32, i32* %18, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %18, align 4
  br label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  br label %109

109:                                              ; preds = %106, %104
  %110 = phi i32 [ %105, %104 ], [ %108, %106 ]
  store i32 %110, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %111

111:                                              ; preds = %109, %84, %37
  %112 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @I2C_CATEGORY(i32) #1

declare dso_local i32 @I2C_COMMAND(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @m5mols_swap_byte(i32*, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
