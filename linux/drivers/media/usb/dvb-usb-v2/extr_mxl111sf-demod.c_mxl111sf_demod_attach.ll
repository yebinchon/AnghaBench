; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-demod.c_mxl111sf_demod_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-demod.c_mxl111sf_demod_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl111sf_demod_state*, i32 }
%struct.mxl111sf_demod_state = type { %struct.dvb_frontend, %struct.mxl111sf_demod_config*, %struct.mxl111sf_state* }
%struct.mxl111sf_state = type { i32 }
%struct.mxl111sf_demod_config = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@mxl111sf_demod_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @mxl111sf_demod_attach(%struct.mxl111sf_state* %0, %struct.mxl111sf_demod_config* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.mxl111sf_state*, align 8
  %5 = alloca %struct.mxl111sf_demod_config*, align 8
  %6 = alloca %struct.mxl111sf_demod_state*, align 8
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %4, align 8
  store %struct.mxl111sf_demod_config* %1, %struct.mxl111sf_demod_config** %5, align 8
  store %struct.mxl111sf_demod_state* null, %struct.mxl111sf_demod_state** %6, align 8
  %7 = call i32 @mxl_dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mxl111sf_demod_state* @kzalloc(i32 32, i32 %8)
  store %struct.mxl111sf_demod_state* %9, %struct.mxl111sf_demod_state** %6, align 8
  %10 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %6, align 8
  %11 = icmp eq %struct.mxl111sf_demod_state* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %15 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %6, align 8
  %16 = getelementptr inbounds %struct.mxl111sf_demod_state, %struct.mxl111sf_demod_state* %15, i32 0, i32 2
  store %struct.mxl111sf_state* %14, %struct.mxl111sf_state** %16, align 8
  %17 = load %struct.mxl111sf_demod_config*, %struct.mxl111sf_demod_config** %5, align 8
  %18 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %6, align 8
  %19 = getelementptr inbounds %struct.mxl111sf_demod_state, %struct.mxl111sf_demod_state* %18, i32 0, i32 1
  store %struct.mxl111sf_demod_config* %17, %struct.mxl111sf_demod_config** %19, align 8
  %20 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %6, align 8
  %21 = getelementptr inbounds %struct.mxl111sf_demod_state, %struct.mxl111sf_demod_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 1
  %23 = call i32 @memcpy(i32* %22, i32* @mxl111sf_demod_ops, i32 4)
  %24 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %6, align 8
  %25 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %6, align 8
  %26 = getelementptr inbounds %struct.mxl111sf_demod_state, %struct.mxl111sf_demod_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %26, i32 0, i32 0
  store %struct.mxl111sf_demod_state* %24, %struct.mxl111sf_demod_state** %27, align 8
  %28 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %6, align 8
  %29 = getelementptr inbounds %struct.mxl111sf_demod_state, %struct.mxl111sf_demod_state* %28, i32 0, i32 0
  store %struct.dvb_frontend* %29, %struct.dvb_frontend** %3, align 8
  br label %30

30:                                               ; preds = %13, %12
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %31
}

declare dso_local i32 @mxl_dbg(i8*) #1

declare dso_local %struct.mxl111sf_demod_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
