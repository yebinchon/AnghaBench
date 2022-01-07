; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_ci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.anysee_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dvb_usb_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@anysee_ci_read_attribute_mem = common dso_local global i32 0, align 4
@anysee_ci_write_attribute_mem = common dso_local global i32 0, align 4
@anysee_ci_read_cam_control = common dso_local global i32 0, align 4
@anysee_ci_write_cam_control = common dso_local global i32 0, align 4
@anysee_ci_slot_reset = common dso_local global i32 0, align 4
@anysee_ci_slot_shutdown = common dso_local global i32 0, align 4
@anysee_ci_slot_ts_enable = common dso_local global i32 0, align 4
@anysee_ci_poll_slot_status = common dso_local global i32 0, align 4
@REG_IOA = common dso_local global i32 0, align 4
@REG_IOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @anysee_ci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anysee_ci_init(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.anysee_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %6 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %7 = call %struct.anysee_state* @d_to_priv(%struct.dvb_usb_device* %6)
  store %struct.anysee_state* %7, %struct.anysee_state** %4, align 8
  %8 = load i32, i32* @THIS_MODULE, align 4
  %9 = load %struct.anysee_state*, %struct.anysee_state** %4, align 8
  %10 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 9
  store i32 %8, i32* %11, align 8
  %12 = load i32, i32* @anysee_ci_read_attribute_mem, align 4
  %13 = load %struct.anysee_state*, %struct.anysee_state** %4, align 8
  %14 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 8
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @anysee_ci_write_attribute_mem, align 4
  %17 = load %struct.anysee_state*, %struct.anysee_state** %4, align 8
  %18 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 7
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @anysee_ci_read_cam_control, align 4
  %21 = load %struct.anysee_state*, %struct.anysee_state** %4, align 8
  %22 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @anysee_ci_write_cam_control, align 4
  %25 = load %struct.anysee_state*, %struct.anysee_state** %4, align 8
  %26 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @anysee_ci_slot_reset, align 4
  %29 = load %struct.anysee_state*, %struct.anysee_state** %4, align 8
  %30 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @anysee_ci_slot_shutdown, align 4
  %33 = load %struct.anysee_state*, %struct.anysee_state** %4, align 8
  %34 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @anysee_ci_slot_ts_enable, align 4
  %37 = load %struct.anysee_state*, %struct.anysee_state** %4, align 8
  %38 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @anysee_ci_poll_slot_status, align 4
  %41 = load %struct.anysee_state*, %struct.anysee_state** %4, align 8
  %42 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %45 = load %struct.anysee_state*, %struct.anysee_state** %4, align 8
  %46 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %struct.dvb_usb_device* %44, %struct.dvb_usb_device** %47, align 8
  %48 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %49 = load i32, i32* @REG_IOA, align 4
  %50 = call i32 @anysee_wr_reg_mask(%struct.dvb_usb_device* %48, i32 %49, i32 128, i32 128)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %1
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %87

55:                                               ; preds = %1
  %56 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %57 = load i32, i32* @REG_IOD, align 4
  %58 = call i32 @anysee_wr_reg_mask(%struct.dvb_usb_device* %56, i32 %57, i32 0, i32 7)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %87

63:                                               ; preds = %55
  %64 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %65 = load i32, i32* @REG_IOD, align 4
  %66 = call i32 @anysee_wr_reg_mask(%struct.dvb_usb_device* %64, i32 %65, i32 7, i32 7)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %87

71:                                               ; preds = %63
  %72 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %73 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load %struct.anysee_state*, %struct.anysee_state** %4, align 8
  %78 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %77, i32 0, i32 1
  %79 = call i32 @dvb_ca_en50221_init(i32* %76, %struct.TYPE_4__* %78, i32 0, i32 1)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %87

84:                                               ; preds = %71
  %85 = load %struct.anysee_state*, %struct.anysee_state** %4, align 8
  %86 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %82, %69, %61, %53
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.anysee_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @anysee_wr_reg_mask(%struct.dvb_usb_device*, i32, i32, i32) #1

declare dso_local i32 @dvb_ca_en50221_init(i32*, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
