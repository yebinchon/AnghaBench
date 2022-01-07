; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_send_ssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_send_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Invalid args\0A\00", align 1
@IPW_CMD_SSID = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i32*, i32)* @ipw_send_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_send_ssid(%struct.ipw_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %9 = icmp ne %struct.ipw_priv* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %3
  %14 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %23

15:                                               ; preds = %10
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %17 = load i32, i32* @IPW_CMD_SSID, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %20 = call i32 @min(i32 %18, i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @ipw_send_cmd_pdu(%struct.ipw_priv* %16, i32 %17, i32 %20, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %15, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @IPW_ERROR(i8*) #1

declare dso_local i32 @ipw_send_cmd_pdu(%struct.ipw_priv*, i32, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
