; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp7045-fe.c_vp7045_fe_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp7045-fe.c_vp7045_fe_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.vp7045_fe_state*, %struct.dtv_frontend_properties }
%struct.vp7045_fe_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOCK_TUNER_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @vp7045_fe_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp7045_fe_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.vp7045_fe_state*, align 8
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  store %struct.dtv_frontend_properties* %9, %struct.dtv_frontend_properties** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.vp7045_fe_state*, %struct.vp7045_fe_state** %11, align 8
  store %struct.vp7045_fe_state* %12, %struct.vp7045_fe_state** %5, align 8
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %15, 1000
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 255
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %38 [
    i32 8000000, label %32
    i32 7000000, label %34
    i32 6000000, label %36
  ]

32:                                               ; preds = %1
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 8, i32* %33, align 16
  br label %41

34:                                               ; preds = %1
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 7, i32* %35, align 16
  br label %41

36:                                               ; preds = %1
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 6, i32* %37, align 16
  br label %41

38:                                               ; preds = %1
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %36, %34, %32
  %42 = load %struct.vp7045_fe_state*, %struct.vp7045_fe_state** %5, align 8
  %43 = getelementptr inbounds %struct.vp7045_fe_state, %struct.vp7045_fe_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LOCK_TUNER_COMMAND, align 4
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %47 = call i32 @vp7045_usb_op(i32 %44, i32 %45, i32* %46, i32 5, i32* null, i32 0, i32 200)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %38
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @vp7045_usb_op(i32, i32, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
