; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_set_unplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_set_unplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @rtl_set_unplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_set_unplug(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %3 = load %struct.r8152*, %struct.r8152** %2, align 8
  %4 = getelementptr inbounds %struct.r8152, %struct.r8152* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @RTL8152_UNPLUG, align 4
  %12 = load %struct.r8152*, %struct.r8152** %2, align 8
  %13 = getelementptr inbounds %struct.r8152, %struct.r8152* %12, i32 0, i32 0
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = call i32 (...) @smp_mb__after_atomic()
  br label %16

16:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
