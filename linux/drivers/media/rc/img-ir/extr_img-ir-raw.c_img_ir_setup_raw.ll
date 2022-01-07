; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-raw.c_img_ir_setup_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-raw.c_img_ir_setup_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IMG_IR_IRQ_ENABLE = common dso_local global i32 0, align 4
@IMG_IR_IRQ_EDGE = common dso_local global i32 0, align 4
@IMG_IR_IRQ_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @img_ir_setup_raw(%struct.img_ir_priv* %0) #0 {
  %2 = alloca %struct.img_ir_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %2, align 8
  %4 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %5 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %12 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %15 = load i32, i32* @IMG_IR_IRQ_ENABLE, align 4
  %16 = call i32 @img_ir_read(%struct.img_ir_priv* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @IMG_IR_IRQ_EDGE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %21 = load i32, i32* @IMG_IR_IRQ_CLEAR, align 4
  %22 = load i32, i32* @IMG_IR_IRQ_EDGE, align 4
  %23 = call i32 @img_ir_write(%struct.img_ir_priv* %20, i32 %21, i32 %22)
  %24 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %25 = load i32, i32* @IMG_IR_IRQ_ENABLE, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @img_ir_write(%struct.img_ir_priv* %24, i32 %25, i32 %26)
  %28 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %29 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_irq(i32* %29)
  br label %31

31:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @img_ir_read(%struct.img_ir_priv*, i32) #1

declare dso_local i32 @img_ir_write(%struct.img_ir_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
