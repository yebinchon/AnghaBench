; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-raw.c_img_ir_remove_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-raw.c_img_ir_remove_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { i32, %struct.img_ir_priv_raw }
%struct.img_ir_priv_raw = type { i32, %struct.rc_dev* }
%struct.rc_dev = type { i32 }

@IMG_IR_IRQ_ENABLE = common dso_local global i32 0, align 4
@IMG_IR_IRQ_EDGE = common dso_local global i32 0, align 4
@IMG_IR_IRQ_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @img_ir_remove_raw(%struct.img_ir_priv* %0) #0 {
  %2 = alloca %struct.img_ir_priv*, align 8
  %3 = alloca %struct.img_ir_priv_raw*, align 8
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %2, align 8
  %6 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %7 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %6, i32 0, i32 1
  store %struct.img_ir_priv_raw* %7, %struct.img_ir_priv_raw** %3, align 8
  %8 = load %struct.img_ir_priv_raw*, %struct.img_ir_priv_raw** %3, align 8
  %9 = getelementptr inbounds %struct.img_ir_priv_raw, %struct.img_ir_priv_raw* %8, i32 0, i32 1
  %10 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  store %struct.rc_dev* %10, %struct.rc_dev** %4, align 8
  %11 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %12 = icmp ne %struct.rc_dev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %16 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.img_ir_priv_raw*, %struct.img_ir_priv_raw** %3, align 8
  %19 = getelementptr inbounds %struct.img_ir_priv_raw, %struct.img_ir_priv_raw* %18, i32 0, i32 1
  store %struct.rc_dev* null, %struct.rc_dev** %19, align 8
  %20 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %21 = load i32, i32* @IMG_IR_IRQ_ENABLE, align 4
  %22 = call i32 @img_ir_read(%struct.img_ir_priv* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @IMG_IR_IRQ_EDGE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %28 = load i32, i32* @IMG_IR_IRQ_ENABLE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @img_ir_write(%struct.img_ir_priv* %27, i32 %28, i32 %29)
  %31 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %32 = load i32, i32* @IMG_IR_IRQ_CLEAR, align 4
  %33 = load i32, i32* @IMG_IR_IRQ_EDGE, align 4
  %34 = call i32 @img_ir_write(%struct.img_ir_priv* %31, i32 %32, i32 %33)
  %35 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %36 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %39 = call i32 @rc_unregister_device(%struct.rc_dev* %38)
  %40 = load %struct.img_ir_priv_raw*, %struct.img_ir_priv_raw** %3, align 8
  %41 = getelementptr inbounds %struct.img_ir_priv_raw, %struct.img_ir_priv_raw* %40, i32 0, i32 0
  %42 = call i32 @del_timer_sync(i32* %41)
  br label %43

43:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @img_ir_read(%struct.img_ir_priv*, i32) #1

declare dso_local i32 @img_ir_write(%struct.img_ir_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rc_unregister_device(%struct.rc_dev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
