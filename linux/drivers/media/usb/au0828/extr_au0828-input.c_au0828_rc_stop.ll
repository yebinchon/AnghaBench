; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au0828_rc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au0828_rc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.au0828_rc* }
%struct.au0828_rc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_dev*)* @au0828_rc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au0828_rc_stop(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.au0828_rc*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %4 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %4, i32 0, i32 0
  %6 = load %struct.au0828_rc*, %struct.au0828_rc** %5, align 8
  store %struct.au0828_rc* %6, %struct.au0828_rc** %3, align 8
  %7 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %8 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %7, i32 0, i32 1
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load i32, i32* @DEV_DISCONNECTED, align 4
  %11 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %12 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %10, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.au0828_rc*, %struct.au0828_rc** %3, align 8
  %19 = call i32 @au8522_rc_clear(%struct.au0828_rc* %18, i32 224, i32 16)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @au8522_rc_clear(%struct.au0828_rc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
