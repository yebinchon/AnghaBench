; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_pctv452e.c_tt3650_ci_msg_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_pctv452e.c_tt3650_ci_msg_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { i64 }
%struct.dvb_usb_device = type { i64 }
%struct.pctv452e_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32*, i32, i32)* @tt3650_ci_msg_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt3650_ci_msg_locked(%struct.dvb_ca_en50221* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dvb_ca_en50221*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dvb_usb_device*, align 8
  %12 = alloca %struct.pctv452e_state*, align 8
  %13 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %6, align 8
  %15 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.dvb_usb_device*
  store %struct.dvb_usb_device* %17, %struct.dvb_usb_device** %11, align 8
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %11, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.pctv452e_state*
  store %struct.pctv452e_state* %21, %struct.pctv452e_state** %12, align 8
  %22 = load %struct.pctv452e_state*, %struct.pctv452e_state** %12, align 8
  %23 = getelementptr inbounds %struct.pctv452e_state, %struct.pctv452e_state* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %11, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @tt3650_ci_msg(%struct.dvb_usb_device* %25, i32 %26, i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.pctv452e_state*, %struct.pctv452e_state** %12, align 8
  %32 = getelementptr inbounds %struct.pctv452e_state, %struct.pctv452e_state* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %13, align 4
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tt3650_ci_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
