; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel_cs.c_atmel_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel_cs.c_atmel_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.local_info = type { %struct.net_device* }

@.str = private unnamed_addr constant [15 x i8] c"atmel_release\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @atmel_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.local_info*
  %8 = getelementptr inbounds %struct.local_info, %struct.local_info* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 1
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @stop_atmel_card(%struct.net_device* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.local_info*
  %23 = getelementptr inbounds %struct.local_info, %struct.local_info* %22, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %23, align 8
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %25 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %24)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @stop_atmel_card(%struct.net_device*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
