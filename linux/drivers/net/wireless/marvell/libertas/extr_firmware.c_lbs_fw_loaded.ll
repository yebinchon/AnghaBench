; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_firmware.c_lbs_fw_loaded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_firmware.c_lbs_fw_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32 (%struct.lbs_private*, i32, %struct.firmware*, %struct.firmware*)* }
%struct.firmware = type opaque
%struct.firmware.0 = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"firmware load complete, code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, i32, %struct.firmware.0*, %struct.firmware.0*)* @lbs_fw_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_fw_loaded(%struct.lbs_private* %0, i32 %1, %struct.firmware.0* %2, %struct.firmware.0* %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware.0*, align 8
  %8 = alloca %struct.firmware.0*, align 8
  %9 = alloca i64, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.firmware.0* %2, %struct.firmware.0** %7, align 8
  store %struct.firmware.0* %3, %struct.firmware.0** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @lbs_deb_fw(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 2
  %14 = load i32 (%struct.lbs_private*, i32, %struct.firmware*, %struct.firmware*)*, i32 (%struct.lbs_private*, i32, %struct.firmware*, %struct.firmware*)** %13, align 8
  %15 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.firmware.0*, %struct.firmware.0** %7, align 8
  %18 = bitcast %struct.firmware.0* %17 to %struct.firmware*
  %19 = load %struct.firmware.0*, %struct.firmware.0** %8, align 8
  %20 = bitcast %struct.firmware.0* %19 to %struct.firmware*
  %21 = call i32 %14(%struct.lbs_private* %15, i32 %16, %struct.firmware* %18, %struct.firmware* %20)
  %22 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 0
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 2
  store i32 (%struct.lbs_private*, i32, %struct.firmware*, %struct.firmware*)* null, i32 (%struct.lbs_private*, i32, %struct.firmware*, %struct.firmware*)** %27, align 8
  %28 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %29 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %28, i32 0, i32 1
  %30 = call i32 @wake_up(i32* %29)
  %31 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 0
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local i32 @lbs_deb_fw(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
