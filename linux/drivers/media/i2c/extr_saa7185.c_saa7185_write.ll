; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7185.c_saa7185_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7185.c_saa7185_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.saa7185 = type { i64* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%02x set to %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, i64)* @saa7185_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7185_write(%struct.v4l2_subdev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.saa7185*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.saa7185* @to_saa7185(%struct.v4l2_subdev* %11)
  store %struct.saa7185* %12, %struct.saa7185** %8, align 8
  %13 = load i32, i32* @debug, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @v4l2_dbg(i32 1, i32 %13, %struct.v4l2_subdev* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.saa7185*, %struct.saa7185** %8, align 8
  %20 = getelementptr inbounds %struct.saa7185, %struct.saa7185* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 %18, i64* %23, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %24, i64 %25, i64 %26)
  ret i32 %27
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.saa7185* @to_saa7185(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i64, i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
