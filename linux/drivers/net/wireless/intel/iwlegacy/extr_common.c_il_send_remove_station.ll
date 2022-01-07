; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_send_remove_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_send_remove_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.il_rem_sta_cmd = type { i32, i32 }
%struct.il_host_cmd = type { i32, i64, i32, %struct.il_rem_sta_cmd*, i32 }

@CMD_SYNC = common dso_local global i32 0, align 4
@C_REM_STA = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@IL_CMD_FAILED_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Bad return from C_REM_STA (0x%08X)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"C_REM_STA PASSED\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"C_REM_STA failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32*, i32, i32)* @il_send_remove_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il_send_remove_station(%struct.il_priv* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.il_rx_pkt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.il_rem_sta_cmd, align 4
  %14 = alloca %struct.il_host_cmd, align 8
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %14, i32 0, i32 0
  store i32 8, i32* %15, align 8
  %16 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %14, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %14, i32 0, i32 2
  %18 = load i32, i32* @CMD_SYNC, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %14, i32 0, i32 3
  store %struct.il_rem_sta_cmd* %13, %struct.il_rem_sta_cmd** %19, align 8
  %20 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %14, i32 0, i32 4
  %21 = load i32, i32* @C_REM_STA, align 4
  store i32 %21, i32* %20, align 8
  %22 = call i32 @memset(%struct.il_rem_sta_cmd* %13, i32 0, i32 8)
  %23 = getelementptr inbounds %struct.il_rem_sta_cmd, %struct.il_rem_sta_cmd* %13, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.il_rem_sta_cmd, %struct.il_rem_sta_cmd* %13, i32 0, i32 1
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i32* %24, i32* %25, i32 %26)
  %28 = load i32, i32* @CMD_WANT_SKB, align 4
  %29 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %14, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 8
  %32 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %33 = call i32 @il_send_cmd(%struct.il_priv* %32, %struct.il_host_cmd* %14)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %94

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %14, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.il_rx_pkt*
  store %struct.il_rx_pkt* %41, %struct.il_rx_pkt** %10, align 8
  %42 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %10, align 8
  %43 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IL_CMD_FAILED_MSK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %10, align 8
  %51 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %49, %38
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %88, label %60

60:                                               ; preds = %57
  %61 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %10, align 8
  %62 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %83 [
    i32 128, label %66
  ]

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %71 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %70, i32 0, i32 0
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @il_sta_ucode_deactivate(%struct.il_priv* %74, i32 %75)
  %77 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %78 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %77, i32 0, i32 0
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %69, %66
  %82 = call i32 @D_ASSOC(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %87

83:                                               ; preds = %60
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  %86 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %81
  br label %88

88:                                               ; preds = %87, %57
  %89 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %90 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %14, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @il_free_pages(%struct.il_priv* %89, i64 %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %88, %36
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @memset(%struct.il_rem_sta_cmd*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @il_send_cmd(%struct.il_priv*, %struct.il_host_cmd*) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_sta_ucode_deactivate(%struct.il_priv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @D_ASSOC(i8*) #1

declare dso_local i32 @il_free_pages(%struct.il_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
