; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-core.c_img_ir_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-core.c_img_ir_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { i32, i32, i32 }

@IMG_IR_IRQ_STATUS = common dso_local global i32 0, align 4
@IMG_IR_IRQ_CLEAR = common dso_local global i32 0, align 4
@IMG_IR_IRQ_ENABLE = common dso_local global i32 0, align 4
@IMG_IR_IRQ_EDGE = common dso_local global i32 0, align 4
@IMG_IR_IRQ_DATA_MATCH = common dso_local global i32 0, align 4
@IMG_IR_IRQ_DATA_VALID = common dso_local global i32 0, align 4
@IMG_IR_IRQ_DATA2_VALID = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @img_ir_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.img_ir_priv*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.img_ir_priv*
  store %struct.img_ir_priv* %8, %struct.img_ir_priv** %5, align 8
  %9 = load %struct.img_ir_priv*, %struct.img_ir_priv** %5, align 8
  %10 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.img_ir_priv*, %struct.img_ir_priv** %5, align 8
  %13 = load i32, i32* @IMG_IR_IRQ_STATUS, align 4
  %14 = call i32 @img_ir_read(%struct.img_ir_priv* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.img_ir_priv*, %struct.img_ir_priv** %5, align 8
  %16 = load i32, i32* @IMG_IR_IRQ_CLEAR, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @img_ir_write(%struct.img_ir_priv* %15, i32 %16, i32 %17)
  %19 = load %struct.img_ir_priv*, %struct.img_ir_priv** %5, align 8
  %20 = load i32, i32* @IMG_IR_IRQ_ENABLE, align 4
  %21 = call i32 @img_ir_read(%struct.img_ir_priv* %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @IMG_IR_IRQ_EDGE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.img_ir_priv*, %struct.img_ir_priv** %5, align 8
  %30 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %29, i32 0, i32 2
  %31 = call i64 @img_ir_raw_enabled(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.img_ir_priv*, %struct.img_ir_priv** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @img_ir_isr_raw(%struct.img_ir_priv* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %28, %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @IMG_IR_IRQ_DATA_MATCH, align 4
  %40 = load i32, i32* @IMG_IR_IRQ_DATA_VALID, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @IMG_IR_IRQ_DATA2_VALID, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %38, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load %struct.img_ir_priv*, %struct.img_ir_priv** %5, align 8
  %48 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %47, i32 0, i32 1
  %49 = call i64 @img_ir_hw_enabled(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.img_ir_priv*, %struct.img_ir_priv** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @img_ir_isr_hw(%struct.img_ir_priv* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %46, %37
  %56 = load %struct.img_ir_priv*, %struct.img_ir_priv** %5, align 8
  %57 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @img_ir_read(%struct.img_ir_priv*, i32) #1

declare dso_local i32 @img_ir_write(%struct.img_ir_priv*, i32, i32) #1

declare dso_local i64 @img_ir_raw_enabled(i32*) #1

declare dso_local i32 @img_ir_isr_raw(%struct.img_ir_priv*, i32) #1

declare dso_local i64 @img_ir_hw_enabled(i32*) #1

declare dso_local i32 @img_ir_isr_hw(%struct.img_ir_priv*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
