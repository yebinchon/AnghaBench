; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-ci.c_fdtv_ca_get_slot_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-ci.c_fdtv_ca_get_slot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32 }
%struct.firedtv_tuner_status = type { i32 }
%struct.ca_slot_info = type { i64, i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@CA_CI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, i8*)* @fdtv_ca_get_slot_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdtv_ca_get_slot_info(%struct.firedtv* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.firedtv_tuner_status, align 4
  %7 = alloca %struct.ca_slot_info*, align 8
  %8 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ca_slot_info*
  store %struct.ca_slot_info* %10, %struct.ca_slot_info** %7, align 8
  %11 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %12 = call i32 @avc_tuner_status(%struct.firedtv* %11, %struct.firedtv_tuner_status* %6)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.ca_slot_info*, %struct.ca_slot_info** %7, align 8
  %19 = getelementptr inbounds %struct.ca_slot_info, %struct.ca_slot_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %17
  %26 = load i32, i32* @CA_CI, align 4
  %27 = load %struct.ca_slot_info*, %struct.ca_slot_info** %7, align 8
  %28 = getelementptr inbounds %struct.ca_slot_info, %struct.ca_slot_info* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = call i32 @fdtv_get_ca_flags(%struct.firedtv_tuner_status* %6)
  %30 = load %struct.ca_slot_info*, %struct.ca_slot_info** %7, align 8
  %31 = getelementptr inbounds %struct.ca_slot_info, %struct.ca_slot_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %25, %22, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @avc_tuner_status(%struct.firedtv*, %struct.firedtv_tuner_status*) #1

declare dso_local i32 @fdtv_get_ca_flags(%struct.firedtv_tuner_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
