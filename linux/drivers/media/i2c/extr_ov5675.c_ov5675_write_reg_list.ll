; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_write_reg_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_write_reg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5675 = type { i32 }
%struct.ov5675_reg_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to write reg 0x%4.4x. error = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5675*, %struct.ov5675_reg_list*)* @ov5675_write_reg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5675_write_reg_list(%struct.ov5675* %0, %struct.ov5675_reg_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5675*, align 8
  %5 = alloca %struct.ov5675_reg_list*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ov5675* %0, %struct.ov5675** %4, align 8
  store %struct.ov5675_reg_list* %1, %struct.ov5675_reg_list** %5, align 8
  %9 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %10 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %9, i32 0, i32 0
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %54, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ov5675_reg_list*, %struct.ov5675_reg_list** %5, align 8
  %15 = getelementptr inbounds %struct.ov5675_reg_list, %struct.ov5675_reg_list* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %12
  %19 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %20 = load %struct.ov5675_reg_list*, %struct.ov5675_reg_list** %5, align 8
  %21 = getelementptr inbounds %struct.ov5675_reg_list, %struct.ov5675_reg_list* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ov5675_reg_list*, %struct.ov5675_reg_list** %5, align 8
  %29 = getelementptr inbounds %struct.ov5675_reg_list, %struct.ov5675_reg_list* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ov5675_write_reg(%struct.ov5675* %19, i32 %27, i32 1, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %18
  %40 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load %struct.ov5675_reg_list*, %struct.ov5675_reg_list** %5, align 8
  %43 = getelementptr inbounds %struct.ov5675_reg_list, %struct.ov5675_reg_list* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_err_ratelimited(i32* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %58

53:                                               ; preds = %18
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %12

57:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %39
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @ov5675_write_reg(%struct.ov5675*, i32, i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
