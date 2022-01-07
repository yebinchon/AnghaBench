; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-core.c_img_ir_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-core.c_img_ir_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.img_ir_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @img_ir_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.img_ir_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.img_ir_priv* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.img_ir_priv* %5, %struct.img_ir_priv** %3, align 8
  %6 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %7 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %10 = call i32 @free_irq(i32 %8, %struct.img_ir_priv* %9)
  %11 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %12 = call i32 @img_ir_remove_hw(%struct.img_ir_priv* %11)
  %13 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %14 = call i32 @img_ir_remove_raw(%struct.img_ir_priv* %13)
  %15 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %16 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IS_ERR(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %22 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %27 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IS_ERR(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %33 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_disable_unprepare(i32 %34)
  br label %36

36:                                               ; preds = %31, %25
  ret i32 0
}

declare dso_local %struct.img_ir_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @free_irq(i32, %struct.img_ir_priv*) #1

declare dso_local i32 @img_ir_remove_hw(%struct.img_ir_priv*) #1

declare dso_local i32 @img_ir_remove_raw(%struct.img_ir_priv*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
