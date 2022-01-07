; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_mac_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_mac_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i64, i32, i32, i64 }

@BNX2_EMAC_TX_LENGTHS = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@BNX2_EMAC_MODE = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_PORT = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_HALF_DUPLEX = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_MAC_LOOP = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_FORCE_LINK = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_25G_MODE = common dso_local global i32 0, align 4
@BNX2_CHIP_5706 = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_PORT_MII_10M = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_PORT_MII = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_PORT_GMII = common dso_local global i32 0, align 4
@BNX2_EMAC_RX_MODE_FLOW_EN = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@BNX2_EMAC_RX_MODE = common dso_local global i32 0, align 4
@BNX2_EMAC_TX_MODE = common dso_local global i32 0, align 4
@BNX2_EMAC_TX_MODE_FLOW_EN = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@BNX2_EMAC_STATUS = common dso_local global i32 0, align 4
@BNX2_EMAC_STATUS_LINK_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_set_mac_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_set_mac_link(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %4 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %5 = load i32, i32* @BNX2_EMAC_TX_LENGTHS, align 4
  %6 = call i32 @BNX2_WR(%struct.bnx2* %4, i32 %5, i32 9760)
  %7 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 129
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DUPLEX_HALF, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %24 = load i32, i32* @BNX2_EMAC_TX_LENGTHS, align 4
  %25 = call i32 @BNX2_WR(%struct.bnx2* %23, i32 %24, i32 9983)
  br label %26

26:                                               ; preds = %22, %16, %11, %1
  %27 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %28 = load i32, i32* @BNX2_EMAC_MODE, align 4
  %29 = call i32 @BNX2_RD(%struct.bnx2* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @BNX2_EMAC_MODE_PORT, align 4
  %31 = load i32, i32* @BNX2_EMAC_MODE_HALF_DUPLEX, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BNX2_EMAC_MODE_MAC_LOOP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BNX2_EMAC_MODE_FORCE_LINK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BNX2_EMAC_MODE_25G_MODE, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %43 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %26
  %47 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %48 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %72 [
    i32 131, label %50
    i32 130, label %60
    i32 128, label %64
    i32 129, label %68
  ]

50:                                               ; preds = %46
  %51 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %52 = call i32 @BNX2_CHIP(%struct.bnx2* %51)
  %53 = load i32, i32* @BNX2_CHIP_5706, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @BNX2_EMAC_MODE_PORT_MII_10M, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %72

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %46, %59
  %61 = load i32, i32* @BNX2_EMAC_MODE_PORT_MII, align 4
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %72

64:                                               ; preds = %46
  %65 = load i32, i32* @BNX2_EMAC_MODE_25G_MODE, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %46, %64
  %69 = load i32, i32* @BNX2_EMAC_MODE_PORT_GMII, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %46, %68, %60, %55
  br label %77

73:                                               ; preds = %26
  %74 = load i32, i32* @BNX2_EMAC_MODE_PORT_GMII, align 4
  %75 = load i32, i32* %3, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %72
  %78 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %79 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DUPLEX_HALF, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @BNX2_EMAC_MODE_HALF_DUPLEX, align 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %89 = load i32, i32* @BNX2_EMAC_MODE, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @BNX2_WR(%struct.bnx2* %88, i32 %89, i32 %90)
  %92 = load i32, i32* @BNX2_EMAC_RX_MODE_FLOW_EN, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %95 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %99 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @FLOW_CTRL_RX, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %87
  %105 = load i32, i32* @BNX2_EMAC_RX_MODE_FLOW_EN, align 4
  %106 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %107 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %87
  %111 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %112 = load i32, i32* @BNX2_EMAC_RX_MODE, align 4
  %113 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %114 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @BNX2_WR(%struct.bnx2* %111, i32 %112, i32 %115)
  %117 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %118 = load i32, i32* @BNX2_EMAC_TX_MODE, align 4
  %119 = call i32 @BNX2_RD(%struct.bnx2* %117, i32 %118)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* @BNX2_EMAC_TX_MODE_FLOW_EN, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %3, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %3, align 4
  %124 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %125 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FLOW_CTRL_TX, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %110
  %131 = load i32, i32* @BNX2_EMAC_TX_MODE_FLOW_EN, align 4
  %132 = load i32, i32* %3, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %130, %110
  %135 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %136 = load i32, i32* @BNX2_EMAC_TX_MODE, align 4
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @BNX2_WR(%struct.bnx2* %135, i32 %136, i32 %137)
  %139 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %140 = load i32, i32* @BNX2_EMAC_STATUS, align 4
  %141 = load i32, i32* @BNX2_EMAC_STATUS_LINK_CHANGE, align 4
  %142 = call i32 @BNX2_WR(%struct.bnx2* %139, i32 %140, i32 %141)
  %143 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %144 = call i32 @bnx2_init_all_rx_contexts(%struct.bnx2* %143)
  ret void
}

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @bnx2_init_all_rx_contexts(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
