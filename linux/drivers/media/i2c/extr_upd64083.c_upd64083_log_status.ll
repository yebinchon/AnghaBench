; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_upd64083.c_upd64083_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_upd64083.c_upd64083_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [79 x i8] c"Status: SA00=%02x SA01=%02x SA02=%02x SA03=%02x SA04=%02x SA05=%02x SA06=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @upd64083_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upd64083_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca [7 x i32], align 16
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0
  %9 = call i32 @i2c_master_recv(%struct.i2c_client* %7, i32* %8, i32 7)
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %11 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0
  %12 = load i32, i32* %11, align 16
  %13 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 2
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 4
  %20 = load i32, i32* %19, align 16
  %21 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 5
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @v4l2_info(%struct.v4l2_subdev* %10, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14, i32 %16, i32 %18, i32 %20, i32 %22, i32 %24)
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
