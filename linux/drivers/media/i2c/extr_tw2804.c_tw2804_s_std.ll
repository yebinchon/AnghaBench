; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw2804.c_tw2804_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw2804.c_tw2804_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tw2804 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tw2804_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw2804_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tw2804*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [22 x i32], align 16
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.tw2804* @to_state(%struct.v4l2_subdev* %9)
  store %struct.tw2804* %10, %struct.tw2804** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @V4L2_STD_525_60, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = getelementptr inbounds [22 x i32], [22 x i32]* %8, i64 0, i64 0
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 196, i32 132
  store i32 %21, i32* %17, align 4
  %22 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 9, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 7, i32 4
  store i32 %27, i32* %23, align 4
  %28 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 10, i32* %28, align 4
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 240, i32 32
  store i32 %33, i32* %29, align 4
  %34 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 11, i32* %34, align 4
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 7, i32 4
  store i32 %39, i32* %35, align 4
  %40 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 12, i32* %40, align 4
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 240, i32 32
  store i32 %45, i32* %41, align 4
  %46 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 13, i32* %46, align 4
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 64, i32 74
  store i32 %51, i32* %47, align 4
  %52 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 22, i32* %52, align 4
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 64
  store i32 %57, i32* %53, align 4
  %58 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 23, i32* %58, align 4
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 0, i32 64
  store i32 %63, i32* %59, align 4
  %64 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 32, i32* %64, align 4
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 7, i32 15
  store i32 %69, i32* %65, align 4
  %70 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 33, i32* %70, align 4
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 7, i32 15
  store i32 %75, i32* %71, align 4
  %76 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 255, i32* %76, align 4
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 255, i32* %77, align 4
  %78 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %79 = getelementptr inbounds [22 x i32], [22 x i32]* %8, i64 0, i64 0
  %80 = load %struct.tw2804*, %struct.tw2804** %5, align 8
  %81 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @write_regs(%struct.i2c_client* %78, i32* %79, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.tw2804*, %struct.tw2804** %5, align 8
  %86 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  ret i32 0
}

declare dso_local %struct.tw2804* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @write_regs(%struct.i2c_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
