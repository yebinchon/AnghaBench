; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_ocp_reg_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_ocp_reg_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid ocp reg %x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, i32)* @rtl_ocp_reg_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_ocp_reg_failure(%struct.rtl8169_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, -65535
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %11 = load i32, i32* @drv, align 4
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %13 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @netif_err(%struct.rtl8169_private* %10, i32 %11, i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 1, i32* %3, align 4
  br label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %9
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @netif_err(%struct.rtl8169_private*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
