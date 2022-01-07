; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_xgmac.c_t3b2_mac_watchdog_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_xgmac.c_t3b2_mac_watchdog_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, i64, i32, i32, i64, i64, i32, %struct.mac_stats, %struct.adapter* }
%struct.mac_stats = type { i64, i32 }
%struct.adapter = type { i32 }

@A_XGM_TX_SPI4_SOP_EOP_CNT = common dso_local global i64 0, align 8
@A_TP_PIO_ADDR = common dso_local global i64 0, align 8
@A_TP_TX_DROP_CNT_CH0 = common dso_local global i64 0, align 8
@A_TP_PIO_DATA = common dso_local global i64 0, align 8
@A_XGM_TX_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3b2_mac_watchdog_task(%struct.cmac* %0) #0 {
  %2 = alloca %struct.cmac*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.mac_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %2, align 8
  %9 = load %struct.cmac*, %struct.cmac** %2, align 8
  %10 = getelementptr inbounds %struct.cmac, %struct.cmac* %9, i32 0, i32 8
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %3, align 8
  %12 = load %struct.cmac*, %struct.cmac** %2, align 8
  %13 = getelementptr inbounds %struct.cmac, %struct.cmac* %12, i32 0, i32 7
  store %struct.mac_stats* %13, %struct.mac_stats** %4, align 8
  %14 = load %struct.mac_stats*, %struct.mac_stats** %4, align 8
  %15 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %6, align 4
  %17 = load %struct.cmac*, %struct.cmac** %2, align 8
  %18 = getelementptr inbounds %struct.cmac, %struct.cmac* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.cmac*, %struct.cmac** %2, align 8
  %22 = getelementptr inbounds %struct.cmac, %struct.cmac* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %1
  %26 = load %struct.cmac*, %struct.cmac** %2, align 8
  %27 = getelementptr inbounds %struct.cmac, %struct.cmac* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mac_stats*, %struct.mac_stats** %4, align 8
  %30 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %25
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = load i64, i64* @A_XGM_TX_SPI4_SOP_EOP_CNT, align 8
  %36 = load %struct.cmac*, %struct.cmac** %2, align 8
  %37 = getelementptr inbounds %struct.cmac, %struct.cmac* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call i32 @t3_read_reg(%struct.adapter* %34, i64 %39)
  %41 = call i32 @G_TXSPI4SOPCNT(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %33
  %45 = load %struct.adapter*, %struct.adapter** %3, align 8
  %46 = load i64, i64* @A_TP_PIO_ADDR, align 8
  %47 = load i64, i64* @A_TP_TX_DROP_CNT_CH0, align 8
  %48 = load %struct.cmac*, %struct.cmac** %2, align 8
  %49 = call i64 @macidx(%struct.cmac* %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @t3_write_reg(%struct.adapter* %45, i64 %46, i64 %50)
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = load i64, i64* @A_TP_PIO_DATA, align 8
  %54 = call i32 @t3_read_reg(%struct.adapter* %52, i64 %53)
  %55 = call i32 @G_TXDROPCNTCH0RCVD(i32 %54)
  store i32 %55, i32* %5, align 4
  br label %57

56:                                               ; preds = %33
  br label %82

57:                                               ; preds = %44
  br label %61

58:                                               ; preds = %25, %1
  %59 = load %struct.cmac*, %struct.cmac** %2, align 8
  %60 = getelementptr inbounds %struct.cmac, %struct.cmac* %59, i32 0, i32 2
  store i32 0, i32* %60, align 8
  br label %82

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.cmac*, %struct.cmac** %2, align 8
  %64 = getelementptr inbounds %struct.cmac, %struct.cmac* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load %struct.cmac*, %struct.cmac** %2, align 8
  %69 = getelementptr inbounds %struct.cmac, %struct.cmac* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.cmac*, %struct.cmac** %2, align 8
  %74 = getelementptr inbounds %struct.cmac, %struct.cmac* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 4
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 2, i32* %8, align 4
  br label %82

78:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  br label %82

79:                                               ; preds = %67, %61
  %80 = load %struct.cmac*, %struct.cmac** %2, align 8
  %81 = getelementptr inbounds %struct.cmac, %struct.cmac* %80, i32 0, i32 2
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %78, %77, %58, %56
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.cmac*, %struct.cmac** %2, align 8
  %85 = getelementptr inbounds %struct.cmac, %struct.cmac* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.cmac*, %struct.cmac** %2, align 8
  %88 = getelementptr inbounds %struct.cmac, %struct.cmac* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.mac_stats*, %struct.mac_stats** %4, align 8
  %90 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.cmac*, %struct.cmac** %2, align 8
  %93 = getelementptr inbounds %struct.cmac, %struct.cmac* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load %struct.mac_stats*, %struct.mac_stats** %4, align 8
  %95 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cmac*, %struct.cmac** %2, align 8
  %98 = getelementptr inbounds %struct.cmac, %struct.cmac* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %137

101:                                              ; preds = %82
  %102 = load %struct.adapter*, %struct.adapter** %3, align 8
  %103 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %104 = load %struct.cmac*, %struct.cmac** %2, align 8
  %105 = getelementptr inbounds %struct.cmac, %struct.cmac* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = call i32 @t3_write_reg(%struct.adapter* %102, i64 %107, i64 0)
  %109 = load %struct.adapter*, %struct.adapter** %3, align 8
  %110 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %111 = load %struct.cmac*, %struct.cmac** %2, align 8
  %112 = getelementptr inbounds %struct.cmac, %struct.cmac* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = call i32 @t3_read_reg(%struct.adapter* %109, i64 %114)
  %116 = load %struct.adapter*, %struct.adapter** %3, align 8
  %117 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %118 = load %struct.cmac*, %struct.cmac** %2, align 8
  %119 = getelementptr inbounds %struct.cmac, %struct.cmac* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.cmac*, %struct.cmac** %2, align 8
  %123 = getelementptr inbounds %struct.cmac, %struct.cmac* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @t3_write_reg(%struct.adapter* %116, i64 %121, i64 %124)
  %126 = load %struct.adapter*, %struct.adapter** %3, align 8
  %127 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %128 = load %struct.cmac*, %struct.cmac** %2, align 8
  %129 = getelementptr inbounds %struct.cmac, %struct.cmac* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %127, %130
  %132 = call i32 @t3_read_reg(%struct.adapter* %126, i64 %131)
  %133 = load %struct.cmac*, %struct.cmac** %2, align 8
  %134 = getelementptr inbounds %struct.cmac, %struct.cmac* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  br label %146

137:                                              ; preds = %82
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load %struct.cmac*, %struct.cmac** %2, align 8
  %142 = call i32 @t3b2_mac_reset(%struct.cmac* %141)
  %143 = load %struct.cmac*, %struct.cmac** %2, align 8
  %144 = getelementptr inbounds %struct.cmac, %struct.cmac* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  br label %145

145:                                              ; preds = %140, %137
  br label %146

146:                                              ; preds = %145, %101
  %147 = load i32, i32* %8, align 4
  ret i32 %147
}

declare dso_local i32 @G_TXSPI4SOPCNT(i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i64) #1

declare dso_local i64 @macidx(%struct.cmac*) #1

declare dso_local i32 @G_TXDROPCNTCH0RCVD(i32) #1

declare dso_local i32 @t3b2_mac_reset(%struct.cmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
