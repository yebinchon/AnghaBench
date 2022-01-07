; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_intr_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_intr_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, %struct.alx_hw }
%struct.alx_hw = type { i32 }

@ALX_ISR = common dso_local global i32 0, align 4
@ALX_ISR_DIS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @alx_intr_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_intr_legacy(i32 %0, i8* %1) #0 {
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
  %14 = load i32, i32* @ALX_ISR, align 4
  %15 = call i32 @alx_read_mem32(%struct.alx_hw* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ALX_ISR_DIS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.alx_priv*, %struct.alx_priv** %6, align 8
  %23 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20, %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.alx_priv*, %struct.alx_priv** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @alx_intr_handle(%struct.alx_priv* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %27
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @alx_read_mem32(%struct.alx_hw*, i32) #1

declare dso_local i32 @alx_intr_handle(%struct.alx_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
