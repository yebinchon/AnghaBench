; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_channel_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_channel_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_drif = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RCAR_DRIF_BUF_DONE = common dso_local global i32 0, align 4
@RCAR_DRIF_SISTR = common dso_local global i32 0, align 4
@RCAR_DRIF_RFOVF = common dso_local global i64 0, align 8
@RCAR_DRIF_BUF_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_drif*, i64)* @rcar_drif_channel_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_drif_channel_complete(%struct.rcar_drif* %0, i64 %1) #0 {
  %3 = alloca %struct.rcar_drif*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.rcar_drif* %0, %struct.rcar_drif** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @RCAR_DRIF_BUF_DONE, align 4
  %7 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %8 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %6
  store i32 %14, i32* %12, align 4
  %15 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %16 = load i32, i32* @RCAR_DRIF_SISTR, align 4
  %17 = call i64 @rcar_drif_read(%struct.rcar_drif* %15, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @RCAR_DRIF_RFOVF, align 8
  %20 = and i64 %18, %19
  %21 = call i64 @unlikely(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %25 = load i32, i32* @RCAR_DRIF_SISTR, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @rcar_drif_write(%struct.rcar_drif* %24, i32 %25, i64 %26)
  %28 = load i32, i32* @RCAR_DRIF_BUF_OVERFLOW, align 4
  %29 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %30 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %28
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %23, %2
  ret void
}

declare dso_local i64 @rcar_drif_read(%struct.rcar_drif*, i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @rcar_drif_write(%struct.rcar_drif*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
