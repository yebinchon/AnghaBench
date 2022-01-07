; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_bufs_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_bufs_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_drif_hwbuf = type { i32 }

@RCAR_DRIF_MAX_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_drif_hwbuf**, i32)* @rcar_drif_bufs_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_drif_bufs_clear(%struct.rcar_drif_hwbuf** %0, i32 %1) #0 {
  %3 = alloca %struct.rcar_drif_hwbuf**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rcar_drif_hwbuf** %0, %struct.rcar_drif_hwbuf*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %21, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @RCAR_DRIF_MAX_CHANNEL, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.rcar_drif_hwbuf**, %struct.rcar_drif_hwbuf*** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %13, i64 %15
  %17 = load %struct.rcar_drif_hwbuf*, %struct.rcar_drif_hwbuf** %16, align 8
  %18 = getelementptr inbounds %struct.rcar_drif_hwbuf, %struct.rcar_drif_hwbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %12
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %6

24:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
