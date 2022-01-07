; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9m111 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"mt9m111 init failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9m111*)* @mt9m111_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_init(%struct.mt9m111* %0) #0 {
  %2 = alloca %struct.mt9m111*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.mt9m111* %0, %struct.mt9m111** %2, align 8
  %5 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %6 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %5, i32 0, i32 1
  %7 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %9 = call i32 @mt9m111_enable(%struct.mt9m111* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %14 = call i32 @mt9m111_reset(%struct.mt9m111* %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %20 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %21 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mt9m111_set_context(%struct.mt9m111* %19, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @mt9m111_enable(%struct.mt9m111*) #1

declare dso_local i32 @mt9m111_reset(%struct.mt9m111*) #1

declare dso_local i32 @mt9m111_set_context(%struct.mt9m111*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
