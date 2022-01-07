; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_6pack.c_tnc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_6pack.c_tnc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sixpack = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i8*, i32)* }

@TNC_UNSYNC_STARTUP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SIXP_RESYNC_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sixpack*)* @tnc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tnc_init(%struct.sixpack* %0) #0 {
  %2 = alloca %struct.sixpack*, align 8
  %3 = alloca i8, align 1
  store %struct.sixpack* %0, %struct.sixpack** %2, align 8
  store i8 -24, i8* %3, align 1
  %4 = load %struct.sixpack*, %struct.sixpack** %2, align 8
  %5 = load i32, i32* @TNC_UNSYNC_STARTUP, align 4
  %6 = call i32 @tnc_set_sync_state(%struct.sixpack* %4, i32 %5)
  %7 = load %struct.sixpack*, %struct.sixpack** %2, align 8
  %8 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_4__*, i8*, i32)*, i32 (%struct.TYPE_4__*, i8*, i32)** %12, align 8
  %14 = load %struct.sixpack*, %struct.sixpack** %2, align 8
  %15 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 %13(%struct.TYPE_4__* %16, i8* %3, i32 1)
  %18 = load %struct.sixpack*, %struct.sixpack** %2, align 8
  %19 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %18, i32 0, i32 0
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* @SIXP_RESYNC_TIMEOUT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @mod_timer(i32* %19, i64 %22)
  ret i32 0
}

declare dso_local i32 @tnc_set_sync_state(%struct.sixpack*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
