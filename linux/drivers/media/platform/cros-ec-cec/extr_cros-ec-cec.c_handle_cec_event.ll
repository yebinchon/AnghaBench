; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cros-ec-cec/extr_cros-ec-cec.c_handle_cec_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cros-ec-cec/extr_cros-ec-cec.c_handle_cec_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_cec = type { i32, %struct.cros_ec_device* }
%struct.cros_ec_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EC_MKBP_CEC_SEND_OK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@EC_MKBP_CEC_SEND_FAILED = common dso_local global i32 0, align 4
@CEC_TX_STATUS_MAX_RETRIES = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cros_ec_cec*)* @handle_cec_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cec_event(%struct.cros_ec_cec* %0) #0 {
  %2 = alloca %struct.cros_ec_cec*, align 8
  %3 = alloca %struct.cros_ec_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cros_ec_cec* %0, %struct.cros_ec_cec** %2, align 8
  %5 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %2, align 8
  %6 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %5, i32 0, i32 1
  %7 = load %struct.cros_ec_device*, %struct.cros_ec_device** %6, align 8
  store %struct.cros_ec_device* %7, %struct.cros_ec_device** %3, align 8
  %8 = load %struct.cros_ec_device*, %struct.cros_ec_device** %3, align 8
  %9 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EC_MKBP_CEC_SEND_OK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %2, align 8
  %19 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %22 = call i32 @cec_transmit_attempt_done(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EC_MKBP_CEC_SEND_FAILED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.cros_ec_cec*, %struct.cros_ec_cec** %2, align 8
  %30 = getelementptr inbounds %struct.cros_ec_cec, %struct.cros_ec_cec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CEC_TX_STATUS_MAX_RETRIES, align 4
  %33 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cec_transmit_attempt_done(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @cec_transmit_attempt_done(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
