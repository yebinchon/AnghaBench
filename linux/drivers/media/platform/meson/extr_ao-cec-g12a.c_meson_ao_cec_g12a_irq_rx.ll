; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_irq_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_irq_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ao_cec_g12a_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@CECB_RX_CNT = common dso_local global i64 0, align 8
@CEC_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@CECB_RX_DATA00 = common dso_local global i64 0, align 8
@CECB_LOCK_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_ao_cec_g12a_device*)* @meson_ao_cec_g12a_irq_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_ao_cec_g12a_irq_rx(%struct.meson_ao_cec_g12a_device* %0) #0 {
  %2 = alloca %struct.meson_ao_cec_g12a_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.meson_ao_cec_g12a_device* %0, %struct.meson_ao_cec_g12a_device** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %2, align 8
  %7 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i64, i64* @CECB_RX_CNT, align 8
  %10 = call i32 @regmap_read(i32 %8, i64 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %2, align 8
  %13 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %2, align 8
  %16 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %23 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %2, align 8
  %24 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  br label %26

26:                                               ; preds = %21, %1
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %54, %26
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %2, align 8
  %30 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %27
  %35 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %2, align 8
  %36 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @CECB_RX_DATA00, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @regmap_read(i32 %37, i64 %41, i32* %5)
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 255
  %47 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %2, align 8
  %48 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %34
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %27

57:                                               ; preds = %27
  %58 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %2, align 8
  %59 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CECB_LOCK_BUF, align 4
  %62 = call i32 @regmap_write(i32 %60, i32 %61, i32 0)
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %75

68:                                               ; preds = %57
  %69 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %2, align 8
  %70 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %2, align 8
  %73 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %72, i32 0, i32 0
  %74 = call i32 @cec_received_msg(i32 %71, %struct.TYPE_2__* %73)
  br label %75

75:                                               ; preds = %68, %67
  ret void
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @cec_received_msg(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
