; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_read_reg_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_read_reg_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.af9015_state = type { i64* }
%struct.req_t = type { i64, i32, i32, i64*, i32, i32, i32, i32 }

@READ_I2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i64, i32, i64*)* @af9015_read_reg_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_read_reg_i2c(%struct.dvb_usb_device* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.af9015_state*, align 8
  %10 = alloca %struct.req_t, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %12 = call %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device* %11)
  store %struct.af9015_state* %12, %struct.af9015_state** %9, align 8
  %13 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 0
  %14 = load i32, i32* @READ_I2C, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %13, align 8
  %16 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 1
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %16, align 8
  %19 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i64* null, i64** %21, align 8
  %22 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 4
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 5
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 6
  %25 = load i64*, i64** %8, align 8
  %26 = ptrtoint i64* %25 to i32
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 7
  store i32 0, i32* %27, align 4
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.af9015_state*, %struct.af9015_state** %9, align 8
  %30 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %4
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.af9015_state*, %struct.af9015_state** %9, align 8
  %38 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %36, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35, %4
  %44 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 4
  store i32 3, i32* %44, align 8
  br label %45

45:                                               ; preds = %43, %35
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %47 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %46, %struct.req_t* %10)
  ret i32 %47
}

declare dso_local %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @af9015_ctrl_msg(%struct.dvb_usb_device*, %struct.req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
