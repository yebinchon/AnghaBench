; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-fe.c_af9005_fe_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-fe.c_af9005_fe_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.af9005_fe_state* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.af9005_fe_state = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@xd_r_reg_aagc_rf_gain = common dso_local global i32 0, align 4
@xd_r_reg_aagc_if_gain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @af9005_fe_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_fe_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.af9005_fe_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %11, align 8
  store %struct.af9005_fe_state* %12, %struct.af9005_fe_state** %6, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %24 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @xd_r_reg_aagc_rf_gain, align 4
  %27 = call i32 @af9005_read_ofdm_register(i32 %25, i32 %26, i32* %9)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %22
  %33 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %34 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @xd_r_reg_aagc_if_gain, align 4
  %37 = call i32 @af9005_read_ofdm_register(i32 %35, i32 %36, i32* %8)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 512, %43
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %44, %45
  %47 = shl i32 %46, 7
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %40, %30, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @af9005_read_ofdm_register(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
