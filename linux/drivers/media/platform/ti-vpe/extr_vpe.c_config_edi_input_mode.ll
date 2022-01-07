; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_config_edi_input_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_config_edi_input_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vpe_mmr_adb* }
%struct.vpe_mmr_adb = type { i32* }

@VPE_EDI_INP_MODE_MASK = common dso_local global i32 0, align 4
@VPE_EDI_INP_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpe_ctx*, i32)* @config_edi_input_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_edi_input_mode(%struct.vpe_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vpe_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpe_mmr_adb*, align 8
  %6 = alloca i32*, align 8
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %9, align 8
  store %struct.vpe_mmr_adb* %10, %struct.vpe_mmr_adb** %5, align 8
  %11 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %5, align 8
  %12 = getelementptr inbounds %struct.vpe_mmr_adb, %struct.vpe_mmr_adb* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  store i32* %14, i32** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 2
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @write_field(i32* %19, i32 1, i32 1, i32 2)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 3
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @write_field(i32* %26, i32 1, i32 1, i32 3)
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @VPE_EDI_INP_MODE_MASK, align 4
  %32 = load i32, i32* @VPE_EDI_INP_MODE_SHIFT, align 4
  %33 = call i32 @write_field(i32* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.vpe_ctx*, %struct.vpe_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  ret void
}

declare dso_local i32 @write_field(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
