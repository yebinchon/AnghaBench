; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mvpp2 = type { i64, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mbus_dram_target_info = type { i32 }

@MVPP22 = common dso_local global i64 0, align 8
@MVPP21 = common dso_local global i64 0, align 8
@MVPP2_PHY_AN_CFG0_REG = common dso_local global i64 0, align 8
@MVPP2_PHY_AN_STOP_SMI0_MASK = common dso_local global i32 0, align 4
@MVPP22_SMI_MISC_CFG_REG = common dso_local global i64 0, align 8
@MVPP22_SMI_POLLING_EN = common dso_local global i32 0, align 4
@MVPP2_MAX_THREADS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MVPP2_AGGR_TXQ_SIZE = common dso_local global i32 0, align 4
@MVPP2_EXT_GLOBAL_CTRL_DEFAULT = common dso_local global i32 0, align 4
@MVPP2_MNG_EXTENDED_GLOBAL_CTRL_REG = common dso_local global i64 0, align 8
@MVPP2_TX_SNOOP_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.mvpp2*)* @mvpp2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_init(%struct.platform_device* %0, %struct.mvpp2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mvpp2*, align 8
  %6 = alloca %struct.mbus_dram_target_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.mvpp2* %1, %struct.mvpp2** %5, align 8
  %10 = call %struct.mbus_dram_target_info* (...) @mv_mbus_dram_info()
  store %struct.mbus_dram_target_info* %10, %struct.mbus_dram_target_info** %6, align 8
  %11 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %6, align 8
  %12 = icmp ne %struct.mbus_dram_target_info* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.mbus_dram_target_info*, %struct.mbus_dram_target_info** %6, align 8
  %15 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %16 = call i32 @mvpp2_conf_mbus_windows(%struct.mbus_dram_target_info* %14, %struct.mvpp2* %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %19 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MVPP22, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %25 = call i32 @mvpp2_axi_init(%struct.mvpp2* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %28 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MVPP21, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %34 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MVPP2_PHY_AN_CFG0_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @MVPP2_PHY_AN_STOP_SMI0_MASK, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %44 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MVPP2_PHY_AN_CFG0_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  br label %67

49:                                               ; preds = %26
  %50 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %51 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MVPP22_SMI_MISC_CFG_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @MVPP22_SMI_POLLING_EN, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %62 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MVPP22_SMI_MISC_CFG_REG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  br label %67

67:                                               ; preds = %49, %32
  %68 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load i32, i32* @MVPP2_MAX_THREADS, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.TYPE_3__* @devm_kcalloc(i32* %69, i32 %70, i32 8, i32 %71)
  %73 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %74 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %73, i32 0, i32 2
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %74, align 8
  %75 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %76 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = icmp ne %struct.TYPE_3__* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %67
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %173

82:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %119, %82
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @MVPP2_MAX_THREADS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %122

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %90 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 %88, i32* %95, align 4
  %96 = load i32, i32* @MVPP2_AGGR_TXQ_SIZE, align 4
  %97 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %98 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 %96, i32* %103, align 4
  %104 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %105 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %106 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %105, i32 0, i32 2
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %113 = call i32 @mvpp2_aggr_txq_init(%struct.platform_device* %104, %struct.TYPE_3__* %110, i32 %111, %struct.mvpp2* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %87
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %173

118:                                              ; preds = %87
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %83

122:                                              ; preds = %83
  %123 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %124 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MVPP21, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %130 = call i32 @mvpp2_rx_fifo_init(%struct.mvpp2* %129)
  br label %136

131:                                              ; preds = %122
  %132 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %133 = call i32 @mvpp22_rx_fifo_init(%struct.mvpp2* %132)
  %134 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %135 = call i32 @mvpp22_tx_fifo_init(%struct.mvpp2* %134)
  br label %136

136:                                              ; preds = %131, %128
  %137 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %138 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @MVPP21, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = load i32, i32* @MVPP2_EXT_GLOBAL_CTRL_DEFAULT, align 4
  %144 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %145 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @MVPP2_MNG_EXTENDED_GLOBAL_CTRL_REG, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 %143, i64 %148)
  br label %150

150:                                              ; preds = %142, %136
  %151 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %152 = load i32, i32* @MVPP2_TX_SNOOP_REG, align 4
  %153 = call i32 @mvpp2_write(%struct.mvpp2* %151, i32 %152, i32 1)
  %154 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %157 = call i32 @mvpp2_bm_init(i32* %155, %struct.mvpp2* %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %150
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %3, align 4
  br label %173

162:                                              ; preds = %150
  %163 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %164 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %165 = call i32 @mvpp2_prs_default_init(%struct.platform_device* %163, %struct.mvpp2* %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %3, align 4
  br label %173

170:                                              ; preds = %162
  %171 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %172 = call i32 @mvpp2_cls_init(%struct.mvpp2* %171)
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %170, %168, %160, %116, %79
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.mbus_dram_target_info* @mv_mbus_dram_info(...) #1

declare dso_local i32 @mvpp2_conf_mbus_windows(%struct.mbus_dram_target_info*, %struct.mvpp2*) #1

declare dso_local i32 @mvpp2_axi_init(%struct.mvpp2*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local %struct.TYPE_3__* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @mvpp2_aggr_txq_init(%struct.platform_device*, %struct.TYPE_3__*, i32, %struct.mvpp2*) #1

declare dso_local i32 @mvpp2_rx_fifo_init(%struct.mvpp2*) #1

declare dso_local i32 @mvpp22_rx_fifo_init(%struct.mvpp2*) #1

declare dso_local i32 @mvpp22_tx_fifo_init(%struct.mvpp2*) #1

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_bm_init(i32*, %struct.mvpp2*) #1

declare dso_local i32 @mvpp2_prs_default_init(%struct.platform_device*, %struct.mvpp2*) #1

declare dso_local i32 @mvpp2_cls_init(%struct.mvpp2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
