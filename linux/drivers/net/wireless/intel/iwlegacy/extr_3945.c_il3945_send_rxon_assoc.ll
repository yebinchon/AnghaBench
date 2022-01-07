; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_send_rxon_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_send_rxon_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.il_rxon_cmd, %struct.il_rxon_cmd }
%struct.il_rxon_cmd = type { i64, i64, i64, i64 }
%struct.il_rx_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.il3945_rxon_assoc_cmd = type { i64, i64, i64, i64, i64 }
%struct.il_host_cmd = type { i32, i64, %struct.il3945_rxon_assoc_cmd*, i32, i32 }

@CMD_WANT_SKB = common dso_local global i32 0, align 4
@C_RXON_ASSOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Using current RXON_ASSOC.  Not resending.\0A\00", align 1
@IL_CMD_FAILED_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Bad return from C_RXON_ASSOC command\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il3945_send_rxon_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_send_rxon_assoc(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca %struct.il3945_rxon_assoc_cmd, align 8
  %7 = alloca %struct.il_host_cmd, align 8
  %8 = alloca %struct.il_rxon_cmd*, align 8
  %9 = alloca %struct.il_rxon_cmd*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %7, i32 0, i32 0
  store i32 40, i32* %10, align 8
  %11 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %7, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %7, i32 0, i32 2
  store %struct.il3945_rxon_assoc_cmd* %6, %struct.il3945_rxon_assoc_cmd** %12, align 8
  %13 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %7, i32 0, i32 3
  %14 = load i32, i32* @CMD_WANT_SKB, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %7, i32 0, i32 4
  %16 = load i32, i32* @C_RXON_ASSOC, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %18 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %17, i32 0, i32 0
  store %struct.il_rxon_cmd* %18, %struct.il_rxon_cmd** %8, align 8
  %19 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 1
  store %struct.il_rxon_cmd* %20, %struct.il_rxon_cmd** %9, align 8
  %21 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %8, align 8
  %22 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %9, align 8
  %25 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %1
  %29 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %8, align 8
  %30 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %9, align 8
  %33 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %28
  %37 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %8, align 8
  %38 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %9, align 8
  %41 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %8, align 8
  %46 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %9, align 8
  %49 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call i32 @D_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %103

54:                                               ; preds = %44, %36, %28, %1
  %55 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %56 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.il3945_rxon_assoc_cmd, %struct.il3945_rxon_assoc_cmd* %6, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.il3945_rxon_assoc_cmd, %struct.il3945_rxon_assoc_cmd* %6, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  %65 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %66 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.il3945_rxon_assoc_cmd, %struct.il3945_rxon_assoc_cmd* %6, i32 0, i32 2
  store i64 %68, i64* %69, align 8
  %70 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %71 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.il3945_rxon_assoc_cmd, %struct.il3945_rxon_assoc_cmd* %6, i32 0, i32 3
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds %struct.il3945_rxon_assoc_cmd, %struct.il3945_rxon_assoc_cmd* %6, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %77 = call i32 @il_send_cmd_sync(%struct.il_priv* %76, %struct.il_host_cmd* %7)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %54
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %103

82:                                               ; preds = %54
  %83 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %7, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.il_rx_pkt*
  store %struct.il_rx_pkt* %85, %struct.il_rx_pkt** %5, align 8
  %86 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %87 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IL_CMD_FAILED_MSK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = call i32 @IL_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %82
  %98 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %99 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %7, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @il_free_pages(%struct.il_priv* %98, i64 %100)
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %80, %52
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @il_send_cmd_sync(%struct.il_priv*, %struct.il_host_cmd*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @il_free_pages(%struct.il_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
