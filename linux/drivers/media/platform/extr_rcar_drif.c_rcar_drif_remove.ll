; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rcar_drif = type { i64, %struct.rcar_drif_sdr* }
%struct.rcar_drif_sdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_drif_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_drif_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rcar_drif*, align 8
  %5 = alloca %struct.rcar_drif_sdr*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.rcar_drif* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.rcar_drif* %7, %struct.rcar_drif** %4, align 8
  %8 = load %struct.rcar_drif*, %struct.rcar_drif** %4, align 8
  %9 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %8, i32 0, i32 1
  %10 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %9, align 8
  store %struct.rcar_drif_sdr* %10, %struct.rcar_drif_sdr** %5, align 8
  %11 = load %struct.rcar_drif*, %struct.rcar_drif** %4, align 8
  %12 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %5, align 8
  %18 = call i32 @rcar_drif_sdr_remove(%struct.rcar_drif_sdr* %17)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.rcar_drif* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @rcar_drif_sdr_remove(%struct.rcar_drif_sdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
