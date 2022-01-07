; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_vpx3220.c_vpx3220_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_vpx3220.c_vpx3220_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@__const.vpx3220_s_routing.input_vals = private unnamed_addr constant [3 x [2 x i32]] [[2 x i32] [i32 12, i32 0], [2 x i32] [i32 13, i32 0], [2 x i32] [i32 14, i32 1]], align 16
@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"input switched to %s\0A\00", align 1
@inputs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @vpx3220_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpx3220_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x [2 x i32]], align 16
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = bitcast [3 x [2 x i32]]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([3 x [2 x i32]]* @__const.vpx3220_s_routing.input_vals to i8*), i64 24, i1 false)
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %54

18:                                               ; preds = %4
  %19 = load i32, i32* @debug, align 4
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = load i32*, i32** @inputs, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @v4l2_dbg(i32 1, i32 %19, %struct.v4l2_subdev* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %11, i64 0, i64 %29
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vpx3220_write(%struct.v4l2_subdev* %27, i32 51, i32 %32)
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %35 = call i32 @vpx3220_fp_read(%struct.v4l2_subdev* %34, i32 242)
  %36 = and i32 %35, -33
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %18
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %54

41:                                               ; preds = %18
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %11, i64 0, i64 %45
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 5
  %50 = or i32 %43, %49
  %51 = or i32 %50, 16
  %52 = call i32 @vpx3220_fp_write(%struct.v4l2_subdev* %42, i32 242, i32 %51)
  %53 = call i32 @udelay(i32 10)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %41, %39, %15
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #2

declare dso_local i32 @vpx3220_write(%struct.v4l2_subdev*, i32, i32) #2

declare dso_local i32 @vpx3220_fp_read(%struct.v4l2_subdev*, i32) #2

declare dso_local i32 @vpx3220_fp_write(%struct.v4l2_subdev*, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
