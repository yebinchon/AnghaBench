; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_probe_hw_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_probe_hw_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { %struct.img_ir_priv_hw }
%struct.img_ir_priv_hw = type { i32* }

@IMG_IR_QUIRK_CODE_LEN_INCR = common dso_local global i32 0, align 4
@IMG_IR_CODETYPE_PULSELEN = common dso_local global i64 0, align 8
@IMG_IR_QUIRK_CODE_IRQ = common dso_local global i32 0, align 4
@IMG_IR_CODETYPE_BIPHASE = common dso_local global i64 0, align 8
@IMG_IR_QUIRK_CODE_BROKEN = common dso_local global i32 0, align 4
@IMG_IR_CODETYPE_2BITPULSEPOS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_priv*)* @img_ir_probe_hw_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_probe_hw_caps(%struct.img_ir_priv* %0) #0 {
  %2 = alloca %struct.img_ir_priv*, align 8
  %3 = alloca %struct.img_ir_priv_hw*, align 8
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %2, align 8
  %4 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %5 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %4, i32 0, i32 0
  store %struct.img_ir_priv_hw* %5, %struct.img_ir_priv_hw** %3, align 8
  %6 = load i32, i32* @IMG_IR_QUIRK_CODE_LEN_INCR, align 4
  %7 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %3, align 8
  %8 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @IMG_IR_CODETYPE_PULSELEN, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %6
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @IMG_IR_QUIRK_CODE_IRQ, align 4
  %15 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %3, align 8
  %16 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @IMG_IR_CODETYPE_BIPHASE, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %14
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @IMG_IR_QUIRK_CODE_BROKEN, align 4
  %23 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %3, align 8
  %24 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @IMG_IR_CODETYPE_2BITPULSEPOS, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %22
  store i32 %29, i32* %27, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
