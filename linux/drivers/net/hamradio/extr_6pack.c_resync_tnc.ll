; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_6pack.c_resync_tnc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_6pack.c_resync_tnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sixpack = type { i32, i32, i32, i32, %struct.TYPE_5__*, i64, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i8*, i32)* }
%struct.timer_list = type { i32 }

@resync_t = common dso_local global i32 0, align 4
@resync_tnc.resync_cmd = internal global i8 -24, align 1
@jiffies = common dso_local global i64 0, align 8
@SIXP_RESYNC_TIMEOUT = common dso_local global i64 0, align 8
@sp = common dso_local global %struct.sixpack* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @resync_tnc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resync_tnc(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sixpack*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %5 = ptrtoint %struct.sixpack* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @resync_t, align 4
  %8 = call %struct.sixpack* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.sixpack* %8, %struct.sixpack** %3, align 8
  %9 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %10 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %9, i32 0, i32 7
  store i64 0, i64* %10, align 8
  %11 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %12 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %14 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %16 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %18 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %20 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %19, i32 0, i32 2
  store i32 96, i32* %20, align 8
  %21 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %22 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %21, i32 0, i32 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_5__*, i8*, i32)*, i32 (%struct.TYPE_5__*, i8*, i32)** %26, align 8
  %28 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %29 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %28, i32 0, i32 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %32 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %31, i32 0, i32 2
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 %27(%struct.TYPE_5__* %30, i8* %33, i32 1)
  %35 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %36 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %35, i32 0, i32 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_5__*, i8*, i32)*, i32 (%struct.TYPE_5__*, i8*, i32)** %40, align 8
  %42 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %43 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %42, i32 0, i32 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 %41(%struct.TYPE_5__* %44, i8* @resync_tnc.resync_cmd, i32 1)
  %46 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %47 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %46, i32 0, i32 3
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i64, i64* @SIXP_RESYNC_TIMEOUT, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @mod_timer(i32* %47, i64 %50)
  ret void
}

declare dso_local %struct.sixpack* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
