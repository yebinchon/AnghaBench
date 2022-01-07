; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_query_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_query_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp5150 = type { i32, i32, i64 }

@TVP5150_STATUS_REG_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @query_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_lock(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.tvp5150*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %6)
  store %struct.tvp5150* %7, %struct.tvp5150** %4, align 8
  %8 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %9 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %14 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %18 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TVP5150_STATUS_REG_1, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %5)
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 14
  %24 = icmp eq i32 %23, 14
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %16, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
