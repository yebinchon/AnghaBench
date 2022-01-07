; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ao_cec_g12a_device = type { i32 }

@CECB_RW_ADDR = common dso_local global i32 0, align 4
@CECB_RW_WR_DATA = common dso_local global i32 0, align 4
@CECB_RW_WRITE_EN = common dso_local global i32 0, align 4
@CECB_RW_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @meson_ao_cec_g12a_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ao_cec_g12a_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.meson_ao_cec_g12a_device*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.meson_ao_cec_g12a_device*
  store %struct.meson_ao_cec_g12a_device* %10, %struct.meson_ao_cec_g12a_device** %7, align 8
  %11 = load i32, i32* @CECB_RW_ADDR, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @FIELD_PREP(i32 %11, i32 %12)
  %14 = load i32, i32* @CECB_RW_WR_DATA, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @FIELD_PREP(i32 %14, i32 %15)
  %17 = or i32 %13, %16
  %18 = load i32, i32* @CECB_RW_WRITE_EN, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %7, align 8
  %21 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CECB_RW_REG, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @regmap_write(i32 %22, i32 %23, i32 %24)
  ret i32 %25
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
