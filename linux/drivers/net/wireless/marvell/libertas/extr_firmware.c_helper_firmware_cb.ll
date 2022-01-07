; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_firmware.c_helper_firmware_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_firmware.c_helper_firmware_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.lbs_private = type { %struct.TYPE_2__*, %struct.firmware* }
%struct.TYPE_2__ = type { i64 }

@main_firmware_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @helper_firmware_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @helper_firmware_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lbs_private*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.lbs_private*
  store %struct.lbs_private* %7, %struct.lbs_private** %5, align 8
  %8 = load %struct.firmware*, %struct.firmware** %3, align 8
  %9 = icmp ne %struct.firmware* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %12 = call i32 @load_next_firmware_from_table(%struct.lbs_private* %11)
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %15 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load %struct.firmware*, %struct.firmware** %3, align 8
  %22 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 1
  store %struct.firmware* %21, %struct.firmware** %23, align 8
  %24 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %25 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @main_firmware_cb, align 4
  %31 = call i32 @do_load_firmware(%struct.lbs_private* %24, i64 %29, i32 %30)
  br label %36

32:                                               ; preds = %13
  %33 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %34 = load %struct.firmware*, %struct.firmware** %3, align 8
  %35 = call i32 @lbs_fw_loaded(%struct.lbs_private* %33, i32 0, %struct.firmware* %34, i32* null)
  br label %36

36:                                               ; preds = %10, %32, %20
  ret void
}

declare dso_local i32 @load_next_firmware_from_table(%struct.lbs_private*) #1

declare dso_local i32 @do_load_firmware(%struct.lbs_private*, i64, i32) #1

declare dso_local i32 @lbs_fw_loaded(%struct.lbs_private*, i32, %struct.firmware*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
