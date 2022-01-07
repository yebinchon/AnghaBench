; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c___rtl_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c___rtl_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_CONFIG34 = common dso_local global i32 0, align 4
@LINK_ON_WAKE_EN = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@PLA_CONFIG5 = common dso_local global i32 0, align 4
@UWF_EN = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@BWF_EN = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@MWF_EN = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@PLA_CFG_WOL = common dso_local global i32 0, align 4
@MAGIC_EN = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*)* @__rtl_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rtl_get_wol(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.r8152*, %struct.r8152** %2, align 8
  %6 = load i32, i32* @MCU_TYPE_PLA, align 4
  %7 = load i32, i32* @PLA_CONFIG34, align 4
  %8 = call i32 @ocp_read_word(%struct.r8152* %5, i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @LINK_ON_WAKE_EN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @WAKE_PHY, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.r8152*, %struct.r8152** %2, align 8
  %19 = load i32, i32* @MCU_TYPE_PLA, align 4
  %20 = load i32, i32* @PLA_CONFIG5, align 4
  %21 = call i32 @ocp_read_word(%struct.r8152* %18, i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @UWF_EN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32, i32* @WAKE_UCAST, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %17
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @BWF_EN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @WAKE_BCAST, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @MWF_EN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @WAKE_MCAST, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.r8152*, %struct.r8152** %2, align 8
  %50 = load i32, i32* @MCU_TYPE_PLA, align 4
  %51 = load i32, i32* @PLA_CFG_WOL, align 4
  %52 = call i32 @ocp_read_word(%struct.r8152* %49, i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @MAGIC_EN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32, i32* @WAKE_MAGIC, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %48
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
