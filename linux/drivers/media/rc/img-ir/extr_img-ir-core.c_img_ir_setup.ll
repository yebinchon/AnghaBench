; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-core.c_img_ir_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-core.c_img_ir_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { i32 }

@IMG_IR_IRQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_priv*)* @img_ir_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_setup(%struct.img_ir_priv* %0) #0 {
  %2 = alloca %struct.img_ir_priv*, align 8
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %2, align 8
  %3 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %4 = load i32, i32* @IMG_IR_IRQ_ENABLE, align 4
  %5 = call i32 @img_ir_write(%struct.img_ir_priv* %3, i32 %4, i32 0)
  %6 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %7 = call i32 @img_ir_setup_raw(%struct.img_ir_priv* %6)
  %8 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %9 = call i32 @img_ir_setup_hw(%struct.img_ir_priv* %8)
  %10 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %11 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @IS_ERR(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.img_ir_priv*, %struct.img_ir_priv** %2, align 8
  %17 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_prepare_enable(i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @img_ir_write(%struct.img_ir_priv*, i32, i32) #1

declare dso_local i32 @img_ir_setup_raw(%struct.img_ir_priv*) #1

declare dso_local i32 @img_ir_setup_hw(%struct.img_ir_priv*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
