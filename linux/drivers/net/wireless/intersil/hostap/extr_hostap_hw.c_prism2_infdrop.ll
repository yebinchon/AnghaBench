; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_hw.c_prism2_infdrop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_hw.c_prism2_infdrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@prism2_infdrop.last_inquire = internal global i64 0, align 8
@DEBUG_EXTRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: INFDROP event\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@HFA384X_CMDCODE_INQUIRE = common dso_local global i32 0, align 4
@HFA384X_INFO_COMMTALLIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @prism2_infdrop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2_infdrop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load i32, i32* @DEBUG_EXTRA, align 4
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @PDEBUG(i32 %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i64, i64* @prism2_infdrop.last_inquire, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* @prism2_infdrop.last_inquire, align 8
  %13 = load i64, i64* @HZ, align 8
  %14 = add i64 %12, %13
  %15 = call i64 @time_after(i64 %11, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10, %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load i32, i32* @HFA384X_CMDCODE_INQUIRE, align 4
  %20 = load i32, i32* @HFA384X_INFO_COMMTALLIES, align 4
  %21 = call i32 @hfa384x_cmd_callback(%struct.net_device* %18, i32 %19, i32 %20, i32* null, i32 0)
  %22 = load i64, i64* @jiffies, align 8
  store i64 %22, i64* @prism2_infdrop.last_inquire, align 8
  br label %23

23:                                               ; preds = %17, %10
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @hfa384x_cmd_callback(%struct.net_device*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
