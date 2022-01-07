; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_meson-ir.c_meson_ir_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_meson-ir.c_meson_ir_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.meson_ir = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"amlogic,meson6-ir\00", align 1
@IR_DEC_REG1 = common dso_local global i32 0, align 4
@REG1_MODE_MASK = common dso_local global i32 0, align 4
@DECODE_MODE_NEC = common dso_local global i32 0, align 4
@REG1_MODE_SHIFT = common dso_local global i32 0, align 4
@IR_DEC_REG2 = common dso_local global i32 0, align 4
@REG2_MODE_MASK = common dso_local global i32 0, align 4
@REG2_MODE_SHIFT = common dso_local global i32 0, align 4
@IR_DEC_REG0 = common dso_local global i32 0, align 4
@REG0_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @meson_ir_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_ir_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.meson_ir*, align 8
  %6 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = call %struct.meson_ir* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.meson_ir* %13, %struct.meson_ir** %5, align 8
  %14 = load %struct.meson_ir*, %struct.meson_ir** %5, align 8
  %15 = getelementptr inbounds %struct.meson_ir, %struct.meson_ir* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i64 @of_device_is_compatible(%struct.device_node* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.meson_ir*, %struct.meson_ir** %5, align 8
  %23 = load i32, i32* @IR_DEC_REG1, align 4
  %24 = load i32, i32* @REG1_MODE_MASK, align 4
  %25 = load i32, i32* @DECODE_MODE_NEC, align 4
  %26 = load i32, i32* @REG1_MODE_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = call i32 @meson_ir_set_mask(%struct.meson_ir* %22, i32 %23, i32 %24, i32 %27)
  br label %37

29:                                               ; preds = %1
  %30 = load %struct.meson_ir*, %struct.meson_ir** %5, align 8
  %31 = load i32, i32* @IR_DEC_REG2, align 4
  %32 = load i32, i32* @REG2_MODE_MASK, align 4
  %33 = load i32, i32* @DECODE_MODE_NEC, align 4
  %34 = load i32, i32* @REG2_MODE_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = call i32 @meson_ir_set_mask(%struct.meson_ir* %30, i32 %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.meson_ir*, %struct.meson_ir** %5, align 8
  %39 = load i32, i32* @IR_DEC_REG0, align 4
  %40 = load i32, i32* @REG0_RATE_MASK, align 4
  %41 = call i32 @meson_ir_set_mask(%struct.meson_ir* %38, i32 %39, i32 %40, i32 19)
  %42 = load %struct.meson_ir*, %struct.meson_ir** %5, align 8
  %43 = getelementptr inbounds %struct.meson_ir, %struct.meson_ir* %42, i32 0, i32 0
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
}

declare dso_local %struct.meson_ir* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @meson_ir_set_mask(%struct.meson_ir*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
