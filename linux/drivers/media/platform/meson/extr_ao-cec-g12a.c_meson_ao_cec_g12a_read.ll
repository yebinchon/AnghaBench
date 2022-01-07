; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ao_cec_g12a_device = type { i32 }

@CECB_RW_ADDR = common dso_local global i32 0, align 4
@CECB_RW_REG = common dso_local global i32 0, align 4
@CECB_RW_BUS_BUSY = common dso_local global i32 0, align 4
@CECB_RW_RD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @meson_ao_cec_g12a_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ao_cec_g12a_read(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.meson_ao_cec_g12a_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.meson_ao_cec_g12a_device*
  store %struct.meson_ao_cec_g12a_device* %12, %struct.meson_ao_cec_g12a_device** %8, align 8
  %13 = load i32, i32* @CECB_RW_ADDR, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @FIELD_PREP(i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %8, align 8
  %17 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CECB_RW_REG, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @regmap_write(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %54

26:                                               ; preds = %3
  %27 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %8, align 8
  %28 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CECB_RW_REG, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @CECB_RW_BUS_BUSY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @regmap_read_poll_timeout(i32 %29, i32 %30, i32 %31, i32 %37, i32 5, i32 1000)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %26
  %44 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %8, align 8
  %45 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CECB_RW_REG, align 4
  %48 = call i32 @regmap_read(i32 %46, i32 %47, i32* %9)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @CECB_RW_RD_DATA, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @FIELD_GET(i32 %49, i32 %50)
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %43, %41, %24
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
