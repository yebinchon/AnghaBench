; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-quirk.c_smiapp_write_8s.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-quirk.c_smiapp_write_8s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.smiapp_reg_8 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"error %d writing reg 0x%4.4x, val 0x%2.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*, %struct.smiapp_reg_8*, i32)* @smiapp_write_8s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_write_8s(%struct.smiapp_sensor* %0, %struct.smiapp_reg_8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smiapp_sensor*, align 8
  %6 = alloca %struct.smiapp_reg_8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %5, align 8
  store %struct.smiapp_reg_8* %1, %struct.smiapp_reg_8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %5, align 8
  %11 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %8, align 8
  br label %15

15:                                               ; preds = %42, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %5, align 8
  %20 = load %struct.smiapp_reg_8*, %struct.smiapp_reg_8** %6, align 8
  %21 = getelementptr inbounds %struct.smiapp_reg_8, %struct.smiapp_reg_8* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.smiapp_reg_8*, %struct.smiapp_reg_8** %6, align 8
  %24 = getelementptr inbounds %struct.smiapp_reg_8, %struct.smiapp_reg_8* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @smiapp_write_8(%struct.smiapp_sensor* %19, i32 %22, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %18
  %30 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.smiapp_reg_8*, %struct.smiapp_reg_8** %6, align 8
  %34 = getelementptr inbounds %struct.smiapp_reg_8, %struct.smiapp_reg_8* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.smiapp_reg_8*, %struct.smiapp_reg_8** %6, align 8
  %37 = getelementptr inbounds %struct.smiapp_reg_8, %struct.smiapp_reg_8* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %48

41:                                               ; preds = %18
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  %45 = load %struct.smiapp_reg_8*, %struct.smiapp_reg_8** %6, align 8
  %46 = getelementptr inbounds %struct.smiapp_reg_8, %struct.smiapp_reg_8* %45, i32 1
  store %struct.smiapp_reg_8* %46, %struct.smiapp_reg_8** %6, align 8
  br label %15

47:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @smiapp_write_8(%struct.smiapp_sensor*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
