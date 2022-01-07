; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i32 }

@SLIC_ISR_ERR = common dso_local global i32 0, align 4
@SLIC_ISR_LEVENT = common dso_local global i32 0, align 4
@SLIC_ISR_UPC_MASK = common dso_local global i32 0, align 4
@SLIC_ISR_RCV = common dso_local global i32 0, align 4
@SLIC_ISR_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*, i32, i32, i32*)* @slic_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_handle_irq(%struct.slic_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.slic_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.slic_device* %0, %struct.slic_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SLIC_ISR_ERR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.slic_device*, %struct.slic_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @slic_handle_err_irq(%struct.slic_device* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SLIC_ISR_LEVENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.slic_device*, %struct.slic_device** %5, align 8
  %24 = call i32 @slic_handle_link_change(%struct.slic_device* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SLIC_ISR_UPC_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.slic_device*, %struct.slic_device** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @slic_handle_upr_irq(%struct.slic_device* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SLIC_ISR_RCV, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.slic_device*, %struct.slic_device** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @slic_handle_receive(%struct.slic_device* %40, i32 %41, i32* %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SLIC_ISR_CMD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.slic_device*, %struct.slic_device** %5, align 8
  %51 = call i32 @slic_xmit_complete(%struct.slic_device* %50)
  br label %52

52:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @slic_handle_err_irq(%struct.slic_device*, i32) #1

declare dso_local i32 @slic_handle_link_change(%struct.slic_device*) #1

declare dso_local i32 @slic_handle_upr_irq(%struct.slic_device*, i32) #1

declare dso_local i32 @slic_handle_receive(%struct.slic_device*, i32, i32*) #1

declare dso_local i32 @slic_xmit_complete(%struct.slic_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
