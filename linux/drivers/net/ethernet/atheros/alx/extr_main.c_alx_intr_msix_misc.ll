; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_intr_msix_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_intr_msix_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, %struct.alx_hw }
%struct.alx_hw = type { i32 }

@ALX_ISR = common dso_local global i32 0, align 4
@ALX_ISR_ALL_QUEUES = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @alx_intr_msix_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_intr_msix_misc(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.alx_priv*, align 8
  %7 = alloca %struct.alx_hw*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.alx_priv*
  store %struct.alx_priv* %10, %struct.alx_priv** %6, align 8
  %11 = load %struct.alx_priv*, %struct.alx_priv** %6, align 8
  %12 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %11, i32 0, i32 1
  store %struct.alx_hw* %12, %struct.alx_hw** %7, align 8
  %13 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %14 = call i32 @alx_mask_msix(%struct.alx_hw* %13, i32 0, i32 1)
  %15 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %16 = load i32, i32* @ALX_ISR, align 4
  %17 = call i32 @alx_read_mem32(%struct.alx_hw* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.alx_priv*, %struct.alx_priv** %6, align 8
  %19 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ALX_ISR_ALL_QUEUES, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.alx_priv*, %struct.alx_priv** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @alx_intr_handle_misc(%struct.alx_priv* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %34 = load i32, i32* @ALX_ISR, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @alx_write_mem32(%struct.alx_hw* %33, i32 %34, i32 %35)
  %37 = load %struct.alx_hw*, %struct.alx_hw** %7, align 8
  %38 = call i32 @alx_mask_msix(%struct.alx_hw* %37, i32 0, i32 0)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %32, %30
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @alx_mask_msix(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_read_mem32(%struct.alx_hw*, i32) #1

declare dso_local i64 @alx_intr_handle_misc(%struct.alx_priv*, i32) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
