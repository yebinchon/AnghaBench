; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp702x-fe.c_vp702x_fe_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp702x-fe.c_vp702x_fe_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.vp702x_fe_state*, %struct.dtv_frontend_properties }
%struct.vp702x_fe_state = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.vp702x_device_state* }
%struct.vp702x_device_state = type { i32*, i32 }
%struct.dtv_frontend_properties = type { i32, i32 }

@.str = private unnamed_addr constant [79 x i8] c"setting frontend to: %u -> %u (%x) LNB-based GHz, symbolrate: %d -> %lu (%lx)\0A\00", align 1
@SEC_VOLTAGE_18 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"tuning failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"tuning succeeded.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @vp702x_fe_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp702x_fe_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.vp702x_fe_state*, align 8
  %5 = alloca %struct.vp702x_device_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %12, align 8
  store %struct.vp702x_fe_state* %13, %struct.vp702x_fe_state** %4, align 8
  %14 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %4, align 8
  %15 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %17, align 8
  store %struct.vp702x_device_state* %18, %struct.vp702x_device_state** %5, align 8
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %20 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 1000
  store i32 %22, i32* %6, align 4
  %23 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %5, align 8
  %24 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %5, align 8
  %27 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @memset(i32* %29, i32 0, i32 10)
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 127
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 255
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32 1, i32* %41, align 4
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 1000
  %46 = shl i32 %45, 20
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @do_div(i32 %47, i32 88000)
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 12
  %51 = and i32 %50, 255
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 4
  %56 = and i32 %55, 255
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %59, 4
  %61 = and i32 %60, 240
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 (i8*, ...) @deb_fe(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68, i32 %71, i64 %73, i64 %75)
  %77 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %4, align 8
  %78 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SEC_VOLTAGE_18, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %1
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 6
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, 64
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %1
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @vp702x_chksum(i32* %88, i32 0, i32 7)
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 7
  store i32 %89, i32* %91, align 4
  %92 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %4, align 8
  %93 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %92, i32 0, i32 1
  store i32 250, i32* %93, align 8
  %94 = load i32, i32* @jiffies, align 4
  %95 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %4, align 8
  %96 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.vp702x_fe_state*, %struct.vp702x_fe_state** %4, align 8
  %98 = getelementptr inbounds %struct.vp702x_fe_state, %struct.vp702x_fe_state* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @vp702x_usb_inout_op(%struct.TYPE_2__* %99, i32* %100, i32 8, i32* %101, i32 10, i32 100)
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %87
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 (i8*, ...) @deb_fe(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %116

114:                                              ; preds = %107, %87
  %115 = call i32 (i8*, ...) @deb_fe(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %112
  %117 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %5, align 8
  %118 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %117, i32 0, i32 1
  %119 = call i32 @mutex_unlock(i32* %118)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @deb_fe(i8*, ...) #1

declare dso_local i32 @vp702x_chksum(i32*, i32, i32) #1

declare dso_local i32 @vp702x_usb_inout_op(%struct.TYPE_2__*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
