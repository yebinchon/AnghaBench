; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_int_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_int_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32 }
%struct.dvb_usb_device = type { i32 }
%struct.lme2510_state = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_host_endpoint = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lme2510_int_response = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_BULK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"INT Interrupt Service Started\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @lme2510_int_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_int_read(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.lme2510_state*, align 8
  %6 = alloca %struct.usb_host_endpoint*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %8 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %7)
  store %struct.dvb_usb_device* %8, %struct.dvb_usb_device** %4, align 8
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %10 = call %struct.lme2510_state* @adap_to_priv(%struct.dvb_usb_adapter* %9)
  store %struct.lme2510_state* %10, %struct.lme2510_state** %5, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.TYPE_4__* @usb_alloc_urb(i32 0, i32 %11)
  %13 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %14 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %13, i32 0, i32 0
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %16 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %69

22:                                               ; preds = %1
  %23 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %24 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_rcvintpipe(i32 %31, i32 10)
  %33 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %34 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @lme2510_int_response, align 4
  %37 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %38 = call i32 @usb_fill_int_urb(%struct.TYPE_4__* %25, i32 %28, i32 %32, i32 %35, i32 4, i32 %36, %struct.dvb_usb_adapter* %37, i32 8)
  %39 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %43 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.usb_host_endpoint* @usb_pipe_endpoint(i32 %41, i32 %46)
  store %struct.usb_host_endpoint* %47, %struct.usb_host_endpoint** %6, align 8
  %48 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %49 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %48, i32 0, i32 0
  %50 = call i64 @usb_endpoint_type(i32* %49)
  %51 = load i64, i64* @USB_ENDPOINT_XFER_BULK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %22
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usb_rcvbulkpipe(i32 %56, i32 10)
  %58 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %59 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.lme2510_state*, %struct.lme2510_state** %5, align 8
  %63 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call i32 @usb_submit_urb(%struct.TYPE_4__* %64, i32 %65)
  br label %67

67:                                               ; preds = %53, %22
  %68 = call i32 @info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %19
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.lme2510_state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.TYPE_4__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.dvb_usb_adapter*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local %struct.usb_host_endpoint* @usb_pipe_endpoint(i32, i32) #1

declare dso_local i64 @usb_endpoint_type(i32*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
