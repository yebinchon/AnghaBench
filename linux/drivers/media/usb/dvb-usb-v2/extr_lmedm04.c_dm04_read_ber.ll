; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_dm04_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_dm04_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.lme2510_state = type { i32 (%struct.dvb_frontend.0*, i64*)*, i32 }
%struct.dvb_frontend.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64*)* @dm04_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm04_read_ber(%struct.dvb_frontend* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.lme2510_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %8 = call %struct.lme2510_state* @fe_to_priv(%struct.dvb_frontend* %7)
  store %struct.lme2510_state* %8, %struct.lme2510_state** %6, align 8
  %9 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %10 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %9, i32 0, i32 0
  %11 = load i32 (%struct.dvb_frontend.0*, i64*)*, i32 (%struct.dvb_frontend.0*, i64*)** %10, align 8
  %12 = icmp ne i32 (%struct.dvb_frontend.0*, i64*)* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %15 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %20 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %19, i32 0, i32 0
  %21 = load i32 (%struct.dvb_frontend.0*, i64*)*, i32 (%struct.dvb_frontend.0*, i64*)** %20, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %23 = bitcast %struct.dvb_frontend* %22 to %struct.dvb_frontend.0*
  %24 = load i64*, i64** %5, align 8
  %25 = call i32 %21(%struct.dvb_frontend.0* %23, i64* %24)
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %13, %2
  %27 = load i64*, i64** %5, align 8
  store i64 0, i64* %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.lme2510_state* @fe_to_priv(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
