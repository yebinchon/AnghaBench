; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo_cs.c_airo_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo_cs.c_airo_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, i32 }
%struct.local_info = type { i32* }

@.str = private unnamed_addr constant [13 x i8] c"airo_detach\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @airo_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airo_detach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %3 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %4 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %3, i32 0, i32 1
  %5 = call i32 @dev_dbg(i32* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %7 = call i32 @airo_release(%struct.pcmcia_device* %6)
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.local_info*
  %12 = getelementptr inbounds %struct.local_info, %struct.local_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %17 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.local_info*
  %20 = getelementptr inbounds %struct.local_info, %struct.local_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @stop_airo_card(i32* %21, i32 0)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.local_info*
  %28 = getelementptr inbounds %struct.local_info, %struct.local_info* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @kfree(i64 %31)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @airo_release(%struct.pcmcia_device*) #1

declare dso_local i32 @stop_airo_card(i32*, i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
