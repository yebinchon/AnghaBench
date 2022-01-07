; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_aspm_clkreq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_aspm_clkreq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64 }

@Config5 = common dso_local global i32 0, align 4
@ASPM_en = common dso_local global i32 0, align 4
@Config2 = common dso_local global i32 0, align 4
@ClkReqEn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, i32)* @rtl_hw_aspm_clkreq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %9 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %14 = load i32, i32* @Config5, align 4
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %16 = load i32, i32* @Config5, align 4
  %17 = call i32 @RTL_R8(%struct.rtl8169_private* %15, i32 %16)
  %18 = load i32, i32* @ASPM_en, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @RTL_W8(%struct.rtl8169_private* %13, i32 %14, i32 %19)
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %22 = load i32, i32* @Config2, align 4
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %24 = load i32, i32* @Config2, align 4
  %25 = call i32 @RTL_R8(%struct.rtl8169_private* %23, i32 %24)
  %26 = load i32, i32* @ClkReqEn, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @RTL_W8(%struct.rtl8169_private* %21, i32 %22, i32 %27)
  br label %48

29:                                               ; preds = %7, %2
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %31 = load i32, i32* @Config2, align 4
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %33 = load i32, i32* @Config2, align 4
  %34 = call i32 @RTL_R8(%struct.rtl8169_private* %32, i32 %33)
  %35 = load i32, i32* @ClkReqEn, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @RTL_W8(%struct.rtl8169_private* %30, i32 %31, i32 %37)
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %40 = load i32, i32* @Config5, align 4
  %41 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %42 = load i32, i32* @Config5, align 4
  %43 = call i32 @RTL_R8(%struct.rtl8169_private* %41, i32 %42)
  %44 = load i32, i32* @ASPM_en, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = call i32 @RTL_W8(%struct.rtl8169_private* %39, i32 %40, i32 %46)
  br label %48

48:                                               ; preds = %29, %12
  %49 = call i32 @udelay(i32 10)
  ret void
}

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
