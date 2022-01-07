; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_update_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_update_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_client = type { i32 }

@SMIAPP_REG_U8_BINNING_TYPE = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_BINNING_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vblank\09\09%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"hblank\09\09%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"real timeperframe\09100/%d\0A\00", align 1
@SMIAPP_PA_PAD_SRC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @smiapp_update_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_update_mode(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smiapp_sensor*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %3, align 8
  %8 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %9 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %8, i32 0, i32 6
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %14 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %19 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %41

23:                                               ; preds = %17, %1
  %24 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %25 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 4
  %28 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %29 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %33 = load i32, i32* @SMIAPP_REG_U8_BINNING_TYPE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @smiapp_write(%struct.smiapp_sensor* %32, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %123

40:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %43 = load i32, i32* @SMIAPP_REG_U8_BINNING_MODE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @smiapp_write(%struct.smiapp_sensor* %42, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %123

50:                                               ; preds = %41
  %51 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %52 = call i32 @smiapp_get_limits_binning(%struct.smiapp_sensor* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %123

57:                                               ; preds = %50
  %58 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %59 = call i32 @smiapp_pll_update(%struct.smiapp_sensor* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %123

64:                                               ; preds = %57
  %65 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %66 = call i32 @smiapp_update_blanking(%struct.smiapp_sensor* %65)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %70 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %69, i32 0, i32 2
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_dbg(i32* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %78 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %77, i32 0, i32 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %86 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %90 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %89, i32 0, i32 3
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i64, i64* @SMIAPP_PA_PAD_SRC, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %99 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %98, i32 0, i32 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %97, %102
  %104 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %105 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %104, i32 0, i32 3
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load i64, i64* @SMIAPP_PA_PAD_SRC, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %114 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %113, i32 0, i32 2
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %112, %117
  %119 = mul nsw i32 %103, %118
  %120 = sdiv i32 %119, 100
  %121 = sdiv i32 %88, %120
  %122 = call i32 @dev_dbg(i32* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %64, %62, %55, %48, %38
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @smiapp_write(%struct.smiapp_sensor*, i32, i32) #1

declare dso_local i32 @smiapp_get_limits_binning(%struct.smiapp_sensor*) #1

declare dso_local i32 @smiapp_pll_update(%struct.smiapp_sensor*) #1

declare dso_local i32 @smiapp_update_blanking(%struct.smiapp_sensor*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
