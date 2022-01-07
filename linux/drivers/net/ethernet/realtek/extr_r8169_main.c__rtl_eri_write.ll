; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c__rtl_eri_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c__rtl_eri_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@ERIDR = common dso_local global i32 0, align 4
@ERIAR = common dso_local global i32 0, align 4
@ERIAR_WRITE_CMD = common dso_local global i32 0, align 4
@rtl_eriar_cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, i32, i32, i32, i32)* @_rtl_eri_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_eri_write(%struct.rtl8169_private* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rtl8169_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %14, %5
  %18 = phi i1 [ true, %5 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %22 = load i32, i32* @ERIDR, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @RTL_W32(%struct.rtl8169_private* %21, i32 %22, i32 %23)
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %26 = load i32, i32* @ERIAR, align 4
  %27 = load i32, i32* @ERIAR_WRITE_CMD, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @RTL_W32(%struct.rtl8169_private* %25, i32 %26, i32 %33)
  %35 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %36 = call i32 @rtl_udelay_loop_wait_low(%struct.rtl8169_private* %35, i32* @rtl_eriar_cond, i32 100, i32 100)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_udelay_loop_wait_low(%struct.rtl8169_private*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
