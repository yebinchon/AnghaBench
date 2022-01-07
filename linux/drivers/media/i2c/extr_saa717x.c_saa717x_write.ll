; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa717x.c_saa717x_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa717x.c_saa717x_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i8*, i32, i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"wrote:  reg 0x%03x=%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32)* @saa717x_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa717x_write(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 1108
  br i1 %18, label %31, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 1124
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 1144
  br i1 %24, label %31, label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 1152
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 1160
  br label %31

31:                                               ; preds = %28, %25, %22, %3
  %32 = phi i1 [ true, %25 ], [ true, %22 ], [ true, %3 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  store i8 %42, i8* %43, align 1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 255
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %31
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 4
  store i8 %54, i8* %55, align 1
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 3
  store i8 %59, i8* %60, align 1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  store i8 %63, i8* %64, align 1
  br label %70

65:                                               ; preds = %31
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  store i8 %68, i8* %69, align 1
  br label %70

70:                                               ; preds = %65, %50
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 5, i32 3
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  %78 = load i32, i32* @debug, align 4
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @v4l2_dbg(i32 2, i32 %78, %struct.v4l2_subdev* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %84 = call i32 @i2c_transfer(%struct.i2c_adapter* %83, %struct.i2c_msg* %11, i32 1)
  %85 = icmp eq i32 %84, 1
  %86 = zext i1 %85 to i32
  ret i32 %86
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
