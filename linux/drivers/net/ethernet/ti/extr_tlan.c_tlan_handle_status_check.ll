; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_handle_status_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_handle_status_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.tlan_priv = type { i32*, i64, i32 }

@TLAN_HI_IV_MASK = common dso_local global i32 0, align 4
@TLAN_CH_PARM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Adaptor Error = 0x%x\0A\00", align 1
@TLAN_RECORD = common dso_local global i32 0, align 4
@TLAN_HC_AD_RST = common dso_local global i32 0, align 4
@TLAN_HOST_CMD = common dso_local global i64 0, align 8
@TLAN_DEBUG_GNRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: Status Check\0A\00", align 1
@TLAN_NET_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s:    Net_Sts = %x\0A\00", align 1
@TLAN_NET_STS_MIRQ = common dso_local global i32 0, align 4
@TLAN_TLPHY_STS = common dso_local global i32 0, align 4
@TLAN_TLPHY_CTL = common dso_local global i32 0, align 4
@TLAN_TS_POLOK = common dso_local global i32 0, align 4
@TLAN_TC_SWAPOL = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @tlan_handle_status_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlan_handle_status_check(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlan_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.tlan_priv* %13, %struct.tlan_priv** %5, align 8
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TLAN_HI_IV_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @netif_stop_queue(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TLAN_CH_PARM, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @inl(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @netdev_info(%struct.net_device* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load i32, i32* @TLAN_RECORD, align 4
  %32 = call i32 @tlan_read_and_clear_stats(%struct.net_device* %30, i32 %31)
  %33 = load i32, i32* @TLAN_HC_AD_RST, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TLAN_HOST_CMD, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outl(i32 %33, i64 %38)
  %40 = load %struct.tlan_priv*, %struct.tlan_priv** %5, align 8
  %41 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %40, i32 0, i32 2
  %42 = call i32 @schedule_work(i32* %41)
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @netif_wake_queue(%struct.net_device* %43)
  store i32 0, i32* %6, align 4
  br label %145

45:                                               ; preds = %2
  %46 = load i32, i32* @TLAN_DEBUG_GNRL, align 4
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, i32, ...) @TLAN_DBG(i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.tlan_priv*, %struct.tlan_priv** %5, align 8
  %52 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.tlan_priv*, %struct.tlan_priv** %5, align 8
  %55 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @TLAN_NET_STS, align 4
  %63 = call i32 @tlan_dio_read8(i64 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %45
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @TLAN_NET_STS, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @tlan_dio_write8(i64 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @TLAN_DEBUG_GNRL, align 4
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i32, i8*, i32, ...) @TLAN_DBG(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %66, %45
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @TLAN_NET_STS_MIRQ, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %144

84:                                               ; preds = %79
  %85 = load %struct.tlan_priv*, %struct.tlan_priv** %5, align 8
  %86 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %144

89:                                               ; preds = %84
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @TLAN_TLPHY_STS, align 4
  %93 = call i32 @tlan_mii_read_reg(%struct.net_device* %90, i32 %91, i32 %92, i32* %11)
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %97 = call i32 @tlan_mii_read_reg(%struct.net_device* %94, i32 %95, i32 %96, i32* %10)
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @TLAN_TS_POLOK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @TLAN_TC_SWAPOL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @TLAN_TC_SWAPOL, align 4
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @tlan_mii_write_reg(%struct.net_device* %111, i32 %112, i32 %113, i32 %114)
  br label %137

116:                                              ; preds = %102, %89
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @TLAN_TS_POLOK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @TLAN_TC_SWAPOL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load i32, i32* @TLAN_TC_SWAPOL, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %10, align 4
  %131 = load %struct.net_device*, %struct.net_device** %3, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @tlan_mii_write_reg(%struct.net_device* %131, i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %126, %121, %116
  br label %137

137:                                              ; preds = %136, %107
  %138 = load i64, i64* @debug, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.net_device*, %struct.net_device** %3, align 8
  %142 = call i32 @tlan_phy_print(%struct.net_device* %141)
  br label %143

143:                                              ; preds = %140, %137
  br label %144

144:                                              ; preds = %143, %84, %79
  br label %145

145:                                              ; preds = %144, %18
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @tlan_read_and_clear_stats(%struct.net_device*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @TLAN_DBG(i32, i8*, i32, ...) #1

declare dso_local i32 @tlan_dio_read8(i64, i32) #1

declare dso_local i32 @tlan_dio_write8(i64, i32, i32) #1

declare dso_local i32 @tlan_mii_read_reg(%struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @tlan_mii_write_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @tlan_phy_print(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
