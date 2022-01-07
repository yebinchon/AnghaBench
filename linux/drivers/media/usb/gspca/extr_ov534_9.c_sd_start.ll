; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32 }
%struct.sd = type { i64 }

@SENSOR_OV971x = common dso_local global i64 0, align 8
@SENSOR_OV562x = common dso_local global i64 0, align 8
@SENSOR_OV361x = common dso_local global i64 0, align 8
@ov965x_start_1_vga = common dso_local global i32 0, align 4
@bridge_start_qvga = common dso_local global i32 0, align 4
@ov965x_start_2_qvga = common dso_local global i32 0, align 4
@bridge_start_vga = common dso_local global i32 0, align 4
@ov965x_start_2_vga = common dso_local global i32 0, align 4
@ov965x_start_1_svga = common dso_local global i32 0, align 4
@bridge_start_svga = common dso_local global i32 0, align 4
@ov965x_start_2_svga = common dso_local global i32 0, align 4
@ov965x_start_1_xga = common dso_local global i32 0, align 4
@bridge_start_xga = common dso_local global i32 0, align 4
@ov965x_start_1_sxga = common dso_local global i32 0, align 4
@bridge_start_sxga = common dso_local global i32 0, align 4
@ov965x_start_2_sxga = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %4, align 8
  %7 = load %struct.sd*, %struct.sd** %4, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SENSOR_OV971x, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  br label %129

16:                                               ; preds = %1
  %17 = load %struct.sd*, %struct.sd** %4, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SENSOR_OV562x, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %2, align 4
  br label %129

26:                                               ; preds = %16
  %27 = load %struct.sd*, %struct.sd** %4, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SENSOR_OV361x, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = call i32 @sd_start_ov361x(%struct.gspca_dev* %33)
  store i32 %34, i32* %2, align 4
  br label %129

35:                                               ; preds = %26
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %103 [
    i32 131, label %39
    i32 129, label %55
    i32 130, label %71
    i32 128, label %87
  ]

39:                                               ; preds = %35
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = load i32, i32* @ov965x_start_1_vga, align 4
  %42 = load i32, i32* @ov965x_start_1_vga, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = call i32 @sccb_w_array(%struct.gspca_dev* %40, i32 %41, i32 %43)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %46 = load i32, i32* @bridge_start_qvga, align 4
  %47 = load i32, i32* @bridge_start_qvga, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = call i32 @reg_w_array(%struct.gspca_dev* %45, i32 %46, i32 %48)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = load i32, i32* @ov965x_start_2_qvga, align 4
  %52 = load i32, i32* @ov965x_start_2_qvga, align 4
  %53 = call i32 @ARRAY_SIZE(i32 %52)
  %54 = call i32 @sccb_w_array(%struct.gspca_dev* %50, i32 %51, i32 %53)
  br label %119

55:                                               ; preds = %35
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %57 = load i32, i32* @ov965x_start_1_vga, align 4
  %58 = load i32, i32* @ov965x_start_1_vga, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @sccb_w_array(%struct.gspca_dev* %56, i32 %57, i32 %59)
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %62 = load i32, i32* @bridge_start_vga, align 4
  %63 = load i32, i32* @bridge_start_vga, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = call i32 @reg_w_array(%struct.gspca_dev* %61, i32 %62, i32 %64)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %67 = load i32, i32* @ov965x_start_2_vga, align 4
  %68 = load i32, i32* @ov965x_start_2_vga, align 4
  %69 = call i32 @ARRAY_SIZE(i32 %68)
  %70 = call i32 @sccb_w_array(%struct.gspca_dev* %66, i32 %67, i32 %69)
  br label %119

71:                                               ; preds = %35
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %73 = load i32, i32* @ov965x_start_1_svga, align 4
  %74 = load i32, i32* @ov965x_start_1_svga, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = call i32 @sccb_w_array(%struct.gspca_dev* %72, i32 %73, i32 %75)
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %78 = load i32, i32* @bridge_start_svga, align 4
  %79 = load i32, i32* @bridge_start_svga, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = call i32 @reg_w_array(%struct.gspca_dev* %77, i32 %78, i32 %80)
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %83 = load i32, i32* @ov965x_start_2_svga, align 4
  %84 = load i32, i32* @ov965x_start_2_svga, align 4
  %85 = call i32 @ARRAY_SIZE(i32 %84)
  %86 = call i32 @sccb_w_array(%struct.gspca_dev* %82, i32 %83, i32 %85)
  br label %119

87:                                               ; preds = %35
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %89 = load i32, i32* @ov965x_start_1_xga, align 4
  %90 = load i32, i32* @ov965x_start_1_xga, align 4
  %91 = call i32 @ARRAY_SIZE(i32 %90)
  %92 = call i32 @sccb_w_array(%struct.gspca_dev* %88, i32 %89, i32 %91)
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %94 = load i32, i32* @bridge_start_xga, align 4
  %95 = load i32, i32* @bridge_start_xga, align 4
  %96 = call i32 @ARRAY_SIZE(i32 %95)
  %97 = call i32 @reg_w_array(%struct.gspca_dev* %93, i32 %94, i32 %96)
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %99 = load i32, i32* @ov965x_start_2_svga, align 4
  %100 = load i32, i32* @ov965x_start_2_svga, align 4
  %101 = call i32 @ARRAY_SIZE(i32 %100)
  %102 = call i32 @sccb_w_array(%struct.gspca_dev* %98, i32 %99, i32 %101)
  br label %119

103:                                              ; preds = %35
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %105 = load i32, i32* @ov965x_start_1_sxga, align 4
  %106 = load i32, i32* @ov965x_start_1_sxga, align 4
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = call i32 @sccb_w_array(%struct.gspca_dev* %104, i32 %105, i32 %107)
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %110 = load i32, i32* @bridge_start_sxga, align 4
  %111 = load i32, i32* @bridge_start_sxga, align 4
  %112 = call i32 @ARRAY_SIZE(i32 %111)
  %113 = call i32 @reg_w_array(%struct.gspca_dev* %109, i32 %110, i32 %112)
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %115 = load i32, i32* @ov965x_start_2_sxga, align 4
  %116 = load i32, i32* @ov965x_start_2_sxga, align 4
  %117 = call i32 @ARRAY_SIZE(i32 %116)
  %118 = call i32 @sccb_w_array(%struct.gspca_dev* %114, i32 %115, i32 %117)
  br label %119

119:                                              ; preds = %103, %87, %71, %55, %39
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %121 = call i32 @reg_w(%struct.gspca_dev* %120, i32 224, i32 0)
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %123 = call i32 @reg_w(%struct.gspca_dev* %122, i32 224, i32 0)
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %125 = call i32 @set_led(%struct.gspca_dev* %124, i32 1)
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %127 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %119, %32, %22, %12
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @sd_start_ov361x(%struct.gspca_dev*) #1

declare dso_local i32 @sccb_w_array(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @reg_w_array(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @set_led(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
