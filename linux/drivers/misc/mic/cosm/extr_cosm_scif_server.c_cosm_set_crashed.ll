; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_scif_server.c_cosm_set_crashed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_scif_server.c_cosm_set_crashed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosm_device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"node alive timeout\0A\00", align 1
@MIC_CRASHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cosm_device*)* @cosm_set_crashed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cosm_set_crashed(%struct.cosm_device* %0) #0 {
  %2 = alloca %struct.cosm_device*, align 8
  store %struct.cosm_device* %0, %struct.cosm_device** %2, align 8
  %3 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %4 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %3, i32 0, i32 0
  %5 = call i32 @dev_err(i32* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %7 = load i32, i32* @MIC_CRASHED, align 4
  %8 = call i32 @cosm_shutdown_status_int(%struct.cosm_device* %6, i32 %7)
  %9 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %10 = call i32 @cosm_update_mic_status(%struct.cosm_device* %9)
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cosm_shutdown_status_int(%struct.cosm_device*, i32) #1

declare dso_local i32 @cosm_update_mic_status(%struct.cosm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
