; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_intr_handle_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_intr_handle_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, i32, %struct.alx_hw }
%struct.alx_hw = type { i32 }

@ALX_ISR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fatal interrupt 0x%x, resetting\0A\00", align 1
@ALX_ISR_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"alert interrupt: 0x%x\0A\00", align 1
@ALX_ISR_PHY = common dso_local global i32 0, align 4
@ALX_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_priv*, i32)* @alx_intr_handle_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_intr_handle_misc(%struct.alx_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.alx_hw*, align 8
  store %struct.alx_priv* %0, %struct.alx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %8 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %7, i32 0, i32 2
  store %struct.alx_hw* %8, %struct.alx_hw** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ALX_ISR_FATAL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %15 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %16 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %17 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @netif_warn(%struct.alx_priv* %14, %struct.alx_hw* %15, i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %22 = call i32 @alx_schedule_reset(%struct.alx_priv* %21)
  store i32 1, i32* %3, align 4
  br label %55

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ALX_ISR_ALERT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %30 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @netdev_warn(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ALX_ISR_PHY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load i32, i32* @ALX_ISR_PHY, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %43 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.alx_hw*, %struct.alx_hw** %6, align 8
  %47 = load i32, i32* @ALX_IMR, align 4
  %48 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %49 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @alx_write_mem32(%struct.alx_hw* %46, i32 %47, i32 %50)
  %52 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %53 = call i32 @alx_schedule_link_check(%struct.alx_priv* %52)
  br label %54

54:                                               ; preds = %39, %34
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @netif_warn(%struct.alx_priv*, %struct.alx_hw*, i32, i8*, i32) #1

declare dso_local i32 @alx_schedule_reset(%struct.alx_priv*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_schedule_link_check(%struct.alx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
