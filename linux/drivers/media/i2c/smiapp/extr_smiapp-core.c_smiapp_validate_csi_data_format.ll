; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_validate_csi_data_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_validate_csi_data_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_csi_data_format = type { i64 }
%struct.smiapp_sensor = type { i32, %struct.smiapp_csi_data_format* }

@smiapp_csi_data_formats = common dso_local global %struct.smiapp_csi_data_format* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smiapp_csi_data_format* (%struct.smiapp_sensor*, i64)* @smiapp_validate_csi_data_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smiapp_csi_data_format* @smiapp_validate_csi_data_format(%struct.smiapp_sensor* %0, i64 %1) #0 {
  %3 = alloca %struct.smiapp_csi_data_format*, align 8
  %4 = alloca %struct.smiapp_sensor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** @smiapp_csi_data_formats, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.smiapp_csi_data_format* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  %13 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %4, align 8
  %14 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %12
  %21 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** @smiapp_csi_data_formats, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.smiapp_csi_data_format, %struct.smiapp_csi_data_format* %21, i64 %23
  %25 = getelementptr inbounds %struct.smiapp_csi_data_format, %struct.smiapp_csi_data_format* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** @smiapp_csi_data_formats, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.smiapp_csi_data_format, %struct.smiapp_csi_data_format* %30, i64 %32
  store %struct.smiapp_csi_data_format* %33, %struct.smiapp_csi_data_format** %3, align 8
  br label %42

34:                                               ; preds = %20, %12
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %7

38:                                               ; preds = %7
  %39 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %4, align 8
  %40 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %39, i32 0, i32 1
  %41 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** %40, align 8
  store %struct.smiapp_csi_data_format* %41, %struct.smiapp_csi_data_format** %3, align 8
  br label %42

42:                                               ; preds = %38, %29
  %43 = load %struct.smiapp_csi_data_format*, %struct.smiapp_csi_data_format** %3, align 8
  ret %struct.smiapp_csi_data_format* %43
}

declare dso_local i32 @ARRAY_SIZE(%struct.smiapp_csi_data_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
