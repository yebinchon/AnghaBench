; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_set_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_set_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.meson_ao_cec_g12a_device* }
%struct.meson_ao_cec_g12a_device = type { i32 }

@CEC_LOG_ADDR_INVALID = common dso_local global i32 0, align 4
@CECB_LADD_LOW = common dso_local global i32 0, align 4
@CECB_LADD_HIGH = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_UNREGISTERED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @meson_ao_cec_g12a_set_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ao_cec_g12a_set_log_addr(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.meson_ao_cec_g12a_device*, align 8
  %7 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %8, i32 0, i32 0
  %10 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %9, align 8
  store %struct.meson_ao_cec_g12a_device* %10, %struct.meson_ao_cec_g12a_device** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %16 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CECB_LADD_LOW, align 4
  %19 = call i32 @regmap_write(i32 %17, i32 %18, i32 0)
  %20 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %21 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CECB_LADD_HIGH, align 4
  %24 = call i32 @regmap_write(i32 %22, i32 %23, i32 0)
  store i32 0, i32* %3, align 4
  br label %73

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %30 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CECB_LADD_LOW, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %34, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %50

38:                                               ; preds = %25
  %39 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %40 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CECB_LADD_HIGH, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 8
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 8
  %48 = call i32 @BIT(i32 %47)
  %49 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %45, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %38, %28
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %53 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CECB_LADD_HIGH, align 4
  %56 = load i32, i32* @CEC_LOG_ADDR_UNREGISTERED, align 4
  %57 = sub nsw i32 %56, 8
  %58 = call i32 @BIT(i32 %57)
  %59 = load i32, i32* @CEC_LOG_ADDR_UNREGISTERED, align 4
  %60 = sub nsw i32 %59, 8
  %61 = call i32 @BIT(i32 %60)
  %62 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %58, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  br label %71

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i32 [ %69, %67 ], [ 0, %70 ]
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
