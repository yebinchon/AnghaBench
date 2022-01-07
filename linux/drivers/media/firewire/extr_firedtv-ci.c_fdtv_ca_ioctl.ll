; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-ci.c_fdtv_ca_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-ci.c_fdtv_ca_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dvb_device* }
%struct.dvb_device = type { %struct.firedtv* }
%struct.firedtv = type { i32 }
%struct.firedtv_tuner_status = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"unhandled CA ioctl %u\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*)* @fdtv_ca_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdtv_ca_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dvb_device*, align 8
  %8 = alloca %struct.firedtv*, align 8
  %9 = alloca %struct.firedtv_tuner_status, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.dvb_device*, %struct.dvb_device** %12, align 8
  store %struct.dvb_device* %13, %struct.dvb_device** %7, align 8
  %14 = load %struct.dvb_device*, %struct.dvb_device** %7, align 8
  %15 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %14, i32 0, i32 0
  %16 = load %struct.firedtv*, %struct.firedtv** %15, align 8
  store %struct.firedtv* %16, %struct.firedtv** %8, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %36 [
    i32 129, label %18
    i32 132, label %21
    i32 130, label %24
    i32 131, label %28
    i32 128, label %32
  ]

18:                                               ; preds = %3
  %19 = load %struct.firedtv*, %struct.firedtv** %8, align 8
  %20 = call i32 @avc_ca_reset(%struct.firedtv* %19)
  store i32 %20, i32* %10, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @fdtv_ca_get_caps(i8* %22)
  store i32 %23, i32* %10, align 4
  br label %44

24:                                               ; preds = %3
  %25 = load %struct.firedtv*, %struct.firedtv** %8, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @fdtv_ca_get_slot_info(%struct.firedtv* %25, i8* %26)
  store i32 %27, i32* %10, align 4
  br label %44

28:                                               ; preds = %3
  %29 = load %struct.firedtv*, %struct.firedtv** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @fdtv_ca_get_msg(%struct.firedtv* %29, i8* %30)
  store i32 %31, i32* %10, align 4
  br label %44

32:                                               ; preds = %3
  %33 = load %struct.firedtv*, %struct.firedtv** %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @fdtv_ca_send_msg(%struct.firedtv* %33, i8* %34)
  store i32 %35, i32* %10, align 4
  br label %44

36:                                               ; preds = %3
  %37 = load %struct.firedtv*, %struct.firedtv** %8, align 8
  %38 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_info(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %36, %32, %28, %24, %21, %18
  %45 = load %struct.firedtv*, %struct.firedtv** %8, align 8
  %46 = call i32 @avc_tuner_status(%struct.firedtv* %45, %struct.firedtv_tuner_status* %9)
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

declare dso_local i32 @avc_ca_reset(%struct.firedtv*) #1

declare dso_local i32 @fdtv_ca_get_caps(i8*) #1

declare dso_local i32 @fdtv_ca_get_slot_info(%struct.firedtv*, i8*) #1

declare dso_local i32 @fdtv_ca_get_msg(%struct.firedtv*, i8*) #1

declare dso_local i32 @fdtv_ca_send_msg(%struct.firedtv*, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @avc_tuner_status(%struct.firedtv*, %struct.firedtv_tuner_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
