; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_dst_ca_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_dst_ca_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_device = type { i32 }
%struct.dst_state = type { %struct.dvb_device* }
%struct.dvb_adapter = type { i32 }

@verbose = common dso_local global i32 0, align 4
@DST_CA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"registering DST-CA device\00", align 1
@dvbdev_ca = common dso_local global i32 0, align 4
@DVB_DEVICE_CA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_device* @dst_ca_attach(%struct.dst_state* %0, %struct.dvb_adapter* %1) #0 {
  %3 = alloca %struct.dvb_device*, align 8
  %4 = alloca %struct.dst_state*, align 8
  %5 = alloca %struct.dvb_adapter*, align 8
  %6 = alloca %struct.dvb_device*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %4, align 8
  store %struct.dvb_adapter* %1, %struct.dvb_adapter** %5, align 8
  %7 = load i32, i32* @verbose, align 4
  %8 = load i32, i32* @DST_CA_ERROR, align 4
  %9 = call i32 @dprintk(i32 %7, i32 %8, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.dvb_adapter*, %struct.dvb_adapter** %5, align 8
  %11 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %12 = load i32, i32* @DVB_DEVICE_CA, align 4
  %13 = call i64 @dvb_register_device(%struct.dvb_adapter* %10, %struct.dvb_device** %6, i32* @dvbdev_ca, %struct.dst_state* %11, i32 %12, i32 0)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.dvb_device*, %struct.dvb_device** %6, align 8
  %17 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %18 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %17, i32 0, i32 0
  store %struct.dvb_device* %16, %struct.dvb_device** %18, align 8
  %19 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %20 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %19, i32 0, i32 0
  %21 = load %struct.dvb_device*, %struct.dvb_device** %20, align 8
  store %struct.dvb_device* %21, %struct.dvb_device** %3, align 8
  br label %23

22:                                               ; preds = %2
  store %struct.dvb_device* null, %struct.dvb_device** %3, align 8
  br label %23

23:                                               ; preds = %22, %15
  %24 = load %struct.dvb_device*, %struct.dvb_device** %3, align 8
  ret %struct.dvb_device* %24
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i64 @dvb_register_device(%struct.dvb_adapter*, %struct.dvb_device**, i32*, %struct.dst_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
