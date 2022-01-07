; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.additional_sensor_data = type { i32* }
%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32, i32 }

@__const.sd_start.t2 = private unnamed_addr constant [6 x i32] [i32 7, i32 0, i32 13, i32 96, i32 14, i32 128], align 16
@sd_start.t3 = internal constant [8 x i32] [i32 7, i32 0, i32 136, i32 2, i32 6, i32 0, i32 231, i32 1], align 16
@tas5130a_sensor_init = common dso_local global i32** null, align 8
@sensor_data = common dso_local global %struct.additional_sensor_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.additional_sensor_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  %10 = bitcast [6 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([6 x i32]* @__const.sd_start.t2 to i8*), i64 24, i1 false)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %29 [
    i32 0, label %22
    i32 1, label %23
    i32 2, label %25
    i32 3, label %27
  ]

22:                                               ; preds = %1
  br label %31

23:                                               ; preds = %1
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 64, i32* %24, align 4
  br label %31

25:                                               ; preds = %1
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 16, i32* %26, align 4
  br label %31

27:                                               ; preds = %1
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 80, i32* %28, align 4
  br label %31

29:                                               ; preds = %1
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 32, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %27, %25, %23, %22
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %68 [
    i32 129, label %35
    i32 128, label %38
  ]

35:                                               ; preds = %31
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @om6802_sensor_init(%struct.gspca_dev* %36)
  br label %68

38:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %53, %38
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = load i32**, i32*** @tas5130a_sensor_init, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @reg_w_buf(%struct.gspca_dev* %40, i32* %45, i32 8)
  %47 = load i32, i32* %5, align 4
  %48 = load i32**, i32*** @tas5130a_sensor_init, align 8
  %49 = call i32 @ARRAY_SIZE(i32** %48)
  %50 = sub nsw i32 %49, 1
  %51 = icmp sge i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %56

53:                                               ; preds = %39
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %39

56:                                               ; preds = %52
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %58 = call i32 @reg_w(%struct.gspca_dev* %57, i32 15488)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = load i32**, i32*** @tas5130a_sensor_init, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @reg_w_buf(%struct.gspca_dev* %59, i32* %64, i32 8)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = call i32 @reg_w(%struct.gspca_dev* %66, i32 15488)
  br label %68

68:                                               ; preds = %31, %56, %35
  %69 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** @sensor_data, align 8
  %70 = load %struct.sd*, %struct.sd** %3, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %69, i64 %73
  store %struct.additional_sensor_data* %74, %struct.additional_sensor_data** %4, align 8
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %76 = load %struct.sd*, %struct.sd** %3, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @v4l2_ctrl_g_ctrl(i32 %78)
  %80 = call i32 @setfreq(%struct.gspca_dev* %75, i32 %79)
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = call i32 @reg_r(%struct.gspca_dev* %81, i32 18)
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %85 = call i32 @reg_w_buf(%struct.gspca_dev* %83, i32* %84, i32 24)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %87 = call i32 @reg_w_ixbuf(%struct.gspca_dev* %86, i32 179, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @sd_start.t3, i64 0, i64 0), i32 32)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = call i32 @reg_w(%struct.gspca_dev* %88, i32 19)
  %90 = call i32 @msleep(i32 15)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %92 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %4, align 8
  %93 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @reg_w_buf(%struct.gspca_dev* %91, i32* %94, i32 8)
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %97 = load %struct.additional_sensor_data*, %struct.additional_sensor_data** %4, align 8
  %98 = getelementptr inbounds %struct.additional_sensor_data, %struct.additional_sensor_data* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @reg_w_buf(%struct.gspca_dev* %96, i32* %99, i32 8)
  %101 = load %struct.sd*, %struct.sd** %3, align 8
  %102 = getelementptr inbounds %struct.sd, %struct.sd* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 129
  br i1 %104, label %105, label %108

105:                                              ; preds = %68
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %107 = call i32 @poll_sensor(%struct.gspca_dev* %106)
  br label %108

108:                                              ; preds = %105, %68
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @om6802_sensor_init(%struct.gspca_dev*) #2

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32**) #2

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32) #2

declare dso_local i32 @setfreq(%struct.gspca_dev*, i32) #2

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #2

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #2

declare dso_local i32 @reg_w_ixbuf(%struct.gspca_dev*, i32, i32*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @poll_sensor(%struct.gspca_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
