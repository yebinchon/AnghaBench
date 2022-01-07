; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-quirk.c_smiapp_replace_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-quirk.c_smiapp_replace_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.smiapp_sensor = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"quirk: 0x%8.8x \22%s\22 = %d, 0x%x\0A\00", align 1
@smiapp_reg_limits = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smiapp_replace_limit(%struct.smiapp_sensor* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.smiapp_sensor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %4, align 8
  %9 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @smiapp_reg_limits, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @smiapp_reg_limits, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24, i64 %25, i64 %26)
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %4, align 8
  %30 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 %28, i64* %33, align 8
  ret void
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
