; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_get_ether_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_get_ether_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.clk* }
%struct.clk = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ether_clk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get clk: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to enable clk: %d\0A\00", align 1
@rtl_disable_clk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*)* @rtl_get_ether_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_get_ether_clk(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %7 = call %struct.device* @tp_to_dev(%struct.rtl8169_private* %6)
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.clk* @devm_clk_get(%struct.device* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %9, %struct.clk** %4, align 8
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = call i64 @IS_ERR(%struct.clk* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load %struct.clk*, %struct.clk** %4, align 8
  %15 = call i32 @PTR_ERR(%struct.clk* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %31

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EPROBE_DEFER, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %21
  br label %31

31:                                               ; preds = %30, %20
  br label %50

32:                                               ; preds = %1
  %33 = load %struct.clk*, %struct.clk** %4, align 8
  %34 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %35 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %34, i32 0, i32 0
  store %struct.clk* %33, %struct.clk** %35, align 8
  %36 = load %struct.clk*, %struct.clk** %4, align 8
  %37 = call i32 @clk_prepare_enable(%struct.clk* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %49

44:                                               ; preds = %32
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load i32, i32* @rtl_disable_clk, align 4
  %47 = load %struct.clk*, %struct.clk** %4, align 8
  %48 = call i32 @devm_add_action_or_reset(%struct.device* %45, i32 %46, %struct.clk* %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %40
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.device* @tp_to_dev(%struct.rtl8169_private*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
