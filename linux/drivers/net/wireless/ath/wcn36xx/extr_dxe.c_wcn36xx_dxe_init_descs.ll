; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_init_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_init_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wcn36xx_dxe_ch = type { i32, i32, %struct.wcn36xx_dxe_ctl*, i32, i64 }
%struct.wcn36xx_dxe_ctl = type { %struct.wcn36xx_dxe_ctl*, i64, %struct.wcn36xx_dxe_desc* }
%struct.wcn36xx_dxe_desc = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WCN36XX_DXE_CTRL_TX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_WQ_TX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CTRL_TX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_WQ_TX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CTRL_RX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_WQ_RX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CTRL_RX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_WQ_RX_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.wcn36xx_dxe_ch*)* @wcn36xx_dxe_init_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_dxe_init_descs(%struct.device* %0, %struct.wcn36xx_dxe_ch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.wcn36xx_dxe_ch*, align 8
  %6 = alloca %struct.wcn36xx_dxe_desc*, align 8
  %7 = alloca %struct.wcn36xx_dxe_desc*, align 8
  %8 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.wcn36xx_dxe_ch* %1, %struct.wcn36xx_dxe_ch** %5, align 8
  store %struct.wcn36xx_dxe_desc* null, %struct.wcn36xx_dxe_desc** %6, align 8
  store %struct.wcn36xx_dxe_desc* null, %struct.wcn36xx_dxe_desc** %7, align 8
  store %struct.wcn36xx_dxe_ctl* null, %struct.wcn36xx_dxe_ctl** %8, align 8
  %11 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %5, align 8
  %12 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 24
  store i64 %15, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %5, align 8
  %19 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %18, i32 0, i32 3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64 @dma_alloc_coherent(%struct.device* %16, i64 %17, i32* %19, i32 %20)
  %22 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %5, align 8
  %23 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %22, i32 0, i32 4
  store i64 %21, i64* %23, align 8
  %24 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %5, align 8
  %25 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %145

31:                                               ; preds = %2
  %32 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %5, align 8
  %33 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.wcn36xx_dxe_desc*
  store %struct.wcn36xx_dxe_desc* %35, %struct.wcn36xx_dxe_desc** %6, align 8
  %36 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %5, align 8
  %37 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %36, i32 0, i32 2
  %38 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %37, align 8
  store %struct.wcn36xx_dxe_ctl* %38, %struct.wcn36xx_dxe_ctl** %8, align 8
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %141, %31
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %5, align 8
  %42 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %144

45:                                               ; preds = %39
  %46 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  %47 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %8, align 8
  %48 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %47, i32 0, i32 2
  store %struct.wcn36xx_dxe_desc* %46, %struct.wcn36xx_dxe_desc** %48, align 8
  %49 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %5, align 8
  %50 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 24
  %56 = add i64 %52, %55
  %57 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %8, align 8
  %58 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %5, align 8
  %60 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %90 [
    i32 128, label %62
    i32 129, label %69
    i32 130, label %76
    i32 131, label %83
  ]

62:                                               ; preds = %45
  %63 = load i32, i32* @WCN36XX_DXE_CTRL_TX_L, align 4
  %64 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  %65 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @WCN36XX_DXE_WQ_TX_L, align 4
  %67 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  %68 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  br label %90

69:                                               ; preds = %45
  %70 = load i32, i32* @WCN36XX_DXE_CTRL_TX_H, align 4
  %71 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  %72 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @WCN36XX_DXE_WQ_TX_H, align 4
  %74 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  %75 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  br label %90

76:                                               ; preds = %45
  %77 = load i32, i32* @WCN36XX_DXE_CTRL_RX_L, align 4
  %78 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  %79 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @WCN36XX_DXE_WQ_RX_L, align 4
  %81 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  %82 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %90

83:                                               ; preds = %45
  %84 = load i32, i32* @WCN36XX_DXE_CTRL_RX_H, align 4
  %85 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  %86 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @WCN36XX_DXE_WQ_RX_H, align 4
  %88 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  %89 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %45, %83, %76, %69, %62
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 0, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  %95 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  br label %134

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 0, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %5, align 8
  %102 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %8, align 8
  %108 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %7, align 8
  %111 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %133

112:                                              ; preds = %99, %96
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %5, align 8
  %115 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = icmp eq i32 %113, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %112
  %120 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %8, align 8
  %121 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %7, align 8
  %124 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %5, align 8
  %126 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %125, i32 0, i32 2
  %127 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %126, align 8
  %128 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  %131 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %119, %112
  br label %133

133:                                              ; preds = %132, %106
  br label %134

134:                                              ; preds = %133, %93
  %135 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %8, align 8
  %136 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %135, i32 0, i32 0
  %137 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %136, align 8
  store %struct.wcn36xx_dxe_ctl* %137, %struct.wcn36xx_dxe_ctl** %8, align 8
  %138 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  store %struct.wcn36xx_dxe_desc* %138, %struct.wcn36xx_dxe_desc** %7, align 8
  %139 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %6, align 8
  %140 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %139, i32 1
  store %struct.wcn36xx_dxe_desc* %140, %struct.wcn36xx_dxe_desc** %6, align 8
  br label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %39

144:                                              ; preds = %39
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %28
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i64 @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
