; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_sunxi-cir.c_sunxi_ir_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_sunxi-cir.c_sunxi_ir_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sunxi_ir = type { i32, i32, i64, i32, i32, i32 }

@SUNXI_IR_RXINT_REG = common dso_local global i64 0, align 8
@REG_RXSTA_CLEARALL = common dso_local global i32 0, align 4
@SUNXI_IR_RXSTA_REG = common dso_local global i64 0, align 8
@SUNXI_IR_CTL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sunxi_ir_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_ir_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sunxi_ir*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sunxi_ir* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sunxi_ir* %6, %struct.sunxi_ir** %4, align 8
  %7 = load %struct.sunxi_ir*, %struct.sunxi_ir** %4, align 8
  %8 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @clk_disable_unprepare(i32 %9)
  %11 = load %struct.sunxi_ir*, %struct.sunxi_ir** %4, align 8
  %12 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_disable_unprepare(i32 %13)
  %15 = load %struct.sunxi_ir*, %struct.sunxi_ir** %4, align 8
  %16 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @reset_control_assert(i32 %17)
  %19 = load %struct.sunxi_ir*, %struct.sunxi_ir** %4, align 8
  %20 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %19, i32 0, i32 1
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.sunxi_ir*, %struct.sunxi_ir** %4, align 8
  %24 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SUNXI_IR_RXINT_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 0, i64 %27)
  %29 = load i32, i32* @REG_RXSTA_CLEARALL, align 4
  %30 = load %struct.sunxi_ir*, %struct.sunxi_ir** %4, align 8
  %31 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SUNXI_IR_RXSTA_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.sunxi_ir*, %struct.sunxi_ir** %4, align 8
  %37 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SUNXI_IR_CTL_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 0, i64 %40)
  %42 = load %struct.sunxi_ir*, %struct.sunxi_ir** %4, align 8
  %43 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %42, i32 0, i32 1
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.sunxi_ir*, %struct.sunxi_ir** %4, align 8
  %47 = getelementptr inbounds %struct.sunxi_ir, %struct.sunxi_ir* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @rc_unregister_device(i32 %48)
  ret i32 0
}

declare dso_local %struct.sunxi_ir* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rc_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
