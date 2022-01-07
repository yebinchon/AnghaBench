; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_csi2 = type { i32 }

@INTSTATE_REG = common dso_local global i32 0, align 4
@INTERRSTATE_REG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Transfer error, restarting CSI-2 receiver\0A\00", align 1
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rcsi2_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcsi2_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rcar_csi2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.rcar_csi2*
  store %struct.rcar_csi2* %10, %struct.rcar_csi2** %6, align 8
  %11 = load %struct.rcar_csi2*, %struct.rcar_csi2** %6, align 8
  %12 = load i32, i32* @INTSTATE_REG, align 4
  %13 = call i32 @rcsi2_read(%struct.rcar_csi2* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.rcar_csi2*, %struct.rcar_csi2** %6, align 8
  %15 = load i32, i32* @INTERRSTATE_REG, align 4
  %16 = call i32 @rcsi2_read(%struct.rcar_csi2* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load %struct.rcar_csi2*, %struct.rcar_csi2** %6, align 8
  %23 = load i32, i32* @INTSTATE_REG, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @rcsi2_write(%struct.rcar_csi2* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %21
  %31 = load %struct.rcar_csi2*, %struct.rcar_csi2** %6, align 8
  %32 = load i32, i32* @INTERRSTATE_REG, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @rcsi2_write(%struct.rcar_csi2* %31, i32 %32, i32 %33)
  %35 = load %struct.rcar_csi2*, %struct.rcar_csi2** %6, align 8
  %36 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_info(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %28, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @rcsi2_read(%struct.rcar_csi2*, i32) #1

declare dso_local i32 @rcsi2_write(%struct.rcar_csi2*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
