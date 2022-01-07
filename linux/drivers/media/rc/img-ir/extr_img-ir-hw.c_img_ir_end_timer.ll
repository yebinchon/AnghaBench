; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_end_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_end_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.img_ir_priv = type { i32 }
%struct.timer_list = type { i32 }

@hw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@priv = common dso_local global %struct.img_ir_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @img_ir_end_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_end_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.img_ir_priv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %5 = ptrtoint %struct.img_ir_priv* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hw, i32 0, i32 0), align 4
  %8 = call %struct.img_ir_priv* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.img_ir_priv* %8, %struct.img_ir_priv** %3, align 8
  %9 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %10 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %13 = call i32 @img_ir_end_repeat(%struct.img_ir_priv* %12)
  %14 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %15 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock_irq(i32* %15)
  ret void
}

declare dso_local %struct.img_ir_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @img_ir_end_repeat(%struct.img_ir_priv*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
