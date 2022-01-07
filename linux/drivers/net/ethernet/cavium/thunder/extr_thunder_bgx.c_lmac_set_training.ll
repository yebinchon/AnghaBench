; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_lmac_set_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_lmac_set_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32 }
%struct.lmac = type { i64, i32 }

@BGX_MODE_10G_KR = common dso_local global i64 0, align 8
@BGX_MODE_40G_KR = common dso_local global i64 0, align 8
@BGX_SPUX_BR_PMD_CRTL = common dso_local global i32 0, align 4
@SPU_PMD_CRTL_TRAIN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgx*, %struct.lmac*, i32)* @lmac_set_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lmac_set_training(%struct.bgx* %0, %struct.lmac* %1, i32 %2) #0 {
  %4 = alloca %struct.bgx*, align 8
  %5 = alloca %struct.lmac*, align 8
  %6 = alloca i32, align 4
  store %struct.bgx* %0, %struct.bgx** %4, align 8
  store %struct.lmac* %1, %struct.lmac** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lmac*, %struct.lmac** %5, align 8
  %8 = getelementptr inbounds %struct.lmac, %struct.lmac* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BGX_MODE_10G_KR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.lmac*, %struct.lmac** %5, align 8
  %14 = getelementptr inbounds %struct.lmac, %struct.lmac* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BGX_MODE_40G_KR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.lmac*, %struct.lmac** %5, align 8
  %20 = getelementptr inbounds %struct.lmac, %struct.lmac* %19, i32 0, i32 1
  store i32 0, i32* %20, align 8
  br label %30

21:                                               ; preds = %12, %3
  %22 = load %struct.bgx*, %struct.bgx** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @BGX_SPUX_BR_PMD_CRTL, align 4
  %25 = call i32 @bgx_reg_read(%struct.bgx* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @SPU_PMD_CRTL_TRAIN_EN, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.lmac*, %struct.lmac** %5, align 8
  %29 = getelementptr inbounds %struct.lmac, %struct.lmac* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
