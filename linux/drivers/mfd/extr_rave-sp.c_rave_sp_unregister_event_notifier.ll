; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_unregister_event_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_unregister_event_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rave_sp = type { %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { i32 }
%struct.notifier_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*)* @rave_sp_unregister_event_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rave_sp_unregister_event_notifier(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rave_sp*, align 8
  %6 = alloca %struct.notifier_block*, align 8
  %7 = alloca %struct.blocking_notifier_head*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.rave_sp* @dev_get_drvdata(i32 %10)
  store %struct.rave_sp* %11, %struct.rave_sp** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.notifier_block**
  %14 = load %struct.notifier_block*, %struct.notifier_block** %13, align 8
  store %struct.notifier_block* %14, %struct.notifier_block** %6, align 8
  %15 = load %struct.rave_sp*, %struct.rave_sp** %5, align 8
  %16 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %15, i32 0, i32 0
  store %struct.blocking_notifier_head* %16, %struct.blocking_notifier_head** %7, align 8
  %17 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %7, align 8
  %18 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %19 = call i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* %17, %struct.notifier_block* %18)
  %20 = call i32 @WARN_ON(i32 %19)
  ret void
}

declare dso_local %struct.rave_sp* @dev_get_drvdata(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
