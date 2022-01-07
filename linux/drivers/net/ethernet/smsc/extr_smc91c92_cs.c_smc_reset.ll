; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32* }
%struct.smc_private = type { i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"smc91c92 reset called.\0A\00", align 1
@RCR_SOFTRESET = common dso_local global i32 0, align 4
@RCR = common dso_local global i64 0, align 8
@RCR_CLEAR = common dso_local global i32 0, align 4
@TCR_CLEAR = common dso_local global i32 0, align 4
@TCR = common dso_local global i64 0, align 8
@CTL_AUTO_RELEASE = common dso_local global i32 0, align 4
@CTL_TE_ENABLE = common dso_local global i32 0, align 4
@CTL_CR_ENABLE = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i64 0, align 8
@MANFID_OSITECH = common dso_local global i64 0, align 8
@PRODID_OSITECH_SEVEN = common dso_local global i64 0, align 8
@OSI_AUI_PWR = common dso_local global i32 0, align 4
@OSITECH_AUI_PWR = common dso_local global i64 0, align 8
@ADDR0 = common dso_local global i64 0, align 8
@MC_RESET = common dso_local global i32 0, align 4
@MMU_CMD = common dso_local global i64 0, align 8
@INTERRUPT = common dso_local global i64 0, align 8
@CFG_MII_SELECT = common dso_local global i32 0, align 4
@TCR_MONCSN = common dso_local global i32 0, align 4
@TCR_ENABLE = common dso_local global i32 0, align 4
@TCR_PAD_EN = common dso_local global i32 0, align 4
@IM_EPH_INT = common dso_local global i32 0, align 4
@IM_RX_OVRN_INT = common dso_local global i32 0, align 4
@IM_RCV_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.smc_private* @netdev_priv(%struct.net_device* %9)
  store %struct.smc_private* %10, %struct.smc_private** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netdev_dbg(%struct.net_device* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @SMC_SELECT_BANK(i32 0)
  %14 = load i32, i32* @RCR_SOFTRESET, align 4
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* @RCR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outw(i32 %14, i64 %18)
  %20 = call i32 @udelay(i32 10)
  %21 = load i32, i32* @RCR_CLEAR, align 4
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = load i64, i64* @RCR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outw(i32 %21, i64 %25)
  %27 = load i32, i32* @TCR_CLEAR, align 4
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* @TCR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outw(i32 %27, i64 %31)
  %33 = call i32 @SMC_SELECT_BANK(i32 1)
  %34 = load i32, i32* @CTL_AUTO_RELEASE, align 4
  %35 = load i32, i32* @CTL_TE_ENABLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CTL_CR_ENABLE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* @CONTROL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outw(i32 %38, i64 %42)
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @smc_set_xcvr(%struct.net_device* %44, i32 %47)
  %49 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %50 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MANFID_OSITECH, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %1
  %55 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %56 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PRODID_OSITECH_SEVEN, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %54
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @OSI_AUI_PWR, align 4
  br label %68

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = load i32, i32* %3, align 4
  %71 = sub i32 %70, 16
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* @OSITECH_AUI_PWR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @inw(i64 %74)
  %76 = and i32 %75, 65280
  %77 = or i32 %69, %76
  %78 = load i32, i32* %3, align 4
  %79 = sub i32 %78, 16
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* @OSITECH_AUI_PWR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outw(i32 %77, i64 %82)
  br label %84

84:                                               ; preds = %68, %54, %1
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %114, %84
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 6
  br i1 %87, label %88, label %117

88:                                               ; preds = %85
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 8
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %97, %104
  %106 = load i32, i32* %3, align 4
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* @ADDR0, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = call i32 @outw(i32 %105, i64 %112)
  br label %114

114:                                              ; preds = %88
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 2
  store i32 %116, i32* %5, align 4
  br label %85

117:                                              ; preds = %85
  %118 = call i32 @SMC_SELECT_BANK(i32 2)
  %119 = load i32, i32* @MC_RESET, align 4
  %120 = load i32, i32* %3, align 4
  %121 = zext i32 %120 to i64
  %122 = load i64, i64* @MMU_CMD, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @outw(i32 %119, i64 %123)
  %125 = load i32, i32* %3, align 4
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* @INTERRUPT, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @outw(i32 0, i64 %128)
  %130 = call i32 @SMC_SELECT_BANK(i32 0)
  %131 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %132 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @CFG_MII_SELECT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %117
  br label %140

138:                                              ; preds = %117
  %139 = load i32, i32* @TCR_MONCSN, align 4
  br label %140

140:                                              ; preds = %138, %137
  %141 = phi i32 [ 0, %137 ], [ %139, %138 ]
  %142 = load i32, i32* @TCR_ENABLE, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @TCR_PAD_EN, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %147 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %145, %148
  %150 = load i32, i32* %3, align 4
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* @TCR, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @outw(i32 %149, i64 %153)
  %155 = load %struct.net_device*, %struct.net_device** %2, align 8
  %156 = call i32 @set_rx_mode(%struct.net_device* %155)
  %157 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %158 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @CFG_MII_SELECT, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %189

163:                                              ; preds = %140
  %164 = call i32 @SMC_SELECT_BANK(i32 3)
  %165 = load %struct.net_device*, %struct.net_device** %2, align 8
  %166 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %167 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @mdio_write(%struct.net_device* %165, i32 %169, i32 0, i32 32768)
  %171 = load %struct.net_device*, %struct.net_device** %2, align 8
  %172 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %173 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @mdio_write(%struct.net_device* %171, i32 %175, i32 4, i32 481)
  %177 = load %struct.net_device*, %struct.net_device** %2, align 8
  %178 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %179 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @mdio_write(%struct.net_device* %177, i32 %181, i32 0, i32 0)
  %183 = load %struct.net_device*, %struct.net_device** %2, align 8
  %184 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %185 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @mdio_write(%struct.net_device* %183, i32 %187, i32 0, i32 4608)
  br label %189

189:                                              ; preds = %163, %140
  %190 = call i32 @SMC_SELECT_BANK(i32 2)
  %191 = load i32, i32* @IM_EPH_INT, align 4
  %192 = load i32, i32* @IM_RX_OVRN_INT, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @IM_RCV_INT, align 4
  %195 = or i32 %193, %194
  %196 = shl i32 %195, 8
  %197 = load i32, i32* %3, align 4
  %198 = zext i32 %197 to i64
  %199 = load i64, i64* @INTERRUPT, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @outw(i32 %196, i64 %200)
  ret void
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @smc_set_xcvr(%struct.net_device*, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
