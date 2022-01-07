; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_capture_event_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_capture_event_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }
%struct.ipw_event = type { i32 }

@IPW_EVENT_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, i32, %struct.ipw_event*)* @ipw_capture_event_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_capture_event_log(%struct.ipw_priv* %0, i32 %1, %struct.ipw_event* %2) #0 {
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipw_event*, align 8
  %7 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ipw_event* %2, %struct.ipw_event** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %12 = load i32, i32* @IPW_EVENT_LOG, align 4
  %13 = call i32 @ipw_read32(%struct.ipw_priv* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 4
  %18 = add i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = load %struct.ipw_event*, %struct.ipw_event** %6, align 8
  %21 = bitcast %struct.ipw_event* %20 to i32*
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @ipw_read_indirect(%struct.ipw_priv* %14, i32 %19, i32* %21, i32 %25)
  br label %27

27:                                               ; preds = %10, %3
  ret void
}

declare dso_local i32 @ipw_read32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_read_indirect(%struct.ipw_priv*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
