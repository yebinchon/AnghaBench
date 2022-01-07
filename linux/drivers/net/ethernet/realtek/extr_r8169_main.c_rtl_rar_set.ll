; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_rar_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_rar_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64 }

@MAC4 = common dso_local global i32 0, align 4
@MAC0 = common dso_local global i32 0, align 4
@RTL_GIGA_MAC_VER_34 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, i32*)* @rtl_rar_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_rar_set(%struct.rtl8169_private* %0, i32* %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca i32*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %6 = call i32 @rtl_lock_work(%struct.rtl8169_private* %5)
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %8 = call i32 @rtl_unlock_config_regs(%struct.rtl8169_private* %7)
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %10 = load i32, i32* @MAC4, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 5
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = or i32 %13, %17
  %19 = call i32 @RTL_W32(%struct.rtl8169_private* %9, i32 %10, i32 %18)
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %21 = load i32, i32* @MAC4, align 4
  %22 = call i32 @RTL_R32(%struct.rtl8169_private* %20, i32 %21)
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %24 = load i32, i32* @MAC0, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = or i32 %27, %31
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 %32, %36
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 24
  %42 = or i32 %37, %41
  %43 = call i32 @RTL_W32(%struct.rtl8169_private* %23, i32 %24, i32 %42)
  %44 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %45 = load i32, i32* @MAC0, align 4
  %46 = call i32 @RTL_R32(%struct.rtl8169_private* %44, i32 %45)
  %47 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %48 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RTL_GIGA_MAC_VER_34, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @rtl_rar_exgmac_set(%struct.rtl8169_private* %53, i32* %54)
  br label %56

56:                                               ; preds = %52, %2
  %57 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %58 = call i32 @rtl_lock_config_regs(%struct.rtl8169_private* %57)
  %59 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %60 = call i32 @rtl_unlock_work(%struct.rtl8169_private* %59)
  ret void
}

declare dso_local i32 @rtl_lock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_unlock_config_regs(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_rar_exgmac_set(%struct.rtl8169_private*, i32*) #1

declare dso_local i32 @rtl_lock_config_regs(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_unlock_work(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
