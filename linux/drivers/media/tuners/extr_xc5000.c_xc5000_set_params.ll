; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc5000_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc5000_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.xc5000_priv* }
%struct.xc5000_priv = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Unable to load firmware and init tuner\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @xc5000_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc5000_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.xc5000_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.xc5000_priv*, %struct.xc5000_priv** %6, align 8
  store %struct.xc5000_priv* %7, %struct.xc5000_priv** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = call i64 @xc_load_fw_and_init_tuner(%struct.dvb_frontend* %8, i32 0)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.xc5000_priv*, %struct.xc5000_priv** %4, align 8
  %17 = getelementptr inbounds %struct.xc5000_priv, %struct.xc5000_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %28 [
    i32 128, label %19
    i32 130, label %22
    i32 129, label %25
  ]

19:                                               ; preds = %15
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = call i32 @xc5000_set_radio_freq(%struct.dvb_frontend* %20)
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %15
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %24 = call i32 @xc5000_set_tv_freq(%struct.dvb_frontend* %23)
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %27 = call i32 @xc5000_tune_digital(%struct.dvb_frontend* %26)
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25, %22, %19, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @xc_load_fw_and_init_tuner(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @xc5000_set_radio_freq(%struct.dvb_frontend*) #1

declare dso_local i32 @xc5000_set_tv_freq(%struct.dvb_frontend*) #1

declare dso_local i32 @xc5000_tune_digital(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
