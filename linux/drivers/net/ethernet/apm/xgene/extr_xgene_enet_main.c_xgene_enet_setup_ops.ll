; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_setup_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_setup_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32, i32, i32, i32, i64, i32, i32*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32* }

@xgene_gmac_ops = common dso_local global i32 0, align 4
@xgene_gport_ops = common dso_local global i32 0, align 4
@RM3 = common dso_local global i8* null, align 8
@xgene_sgmac_ops = common dso_local global i32 0, align 4
@xgene_sgport_ops = common dso_local global i32 0, align 4
@RM1 = common dso_local global i8* null, align 8
@xgene_xgmac_ops = common dso_local global i32 0, align 4
@xgene_xgport_ops = common dso_local global i32 0, align 4
@xgene_cle3in_ops = common dso_local global i32 0, align 4
@RM0 = common dso_local global i8* null, align 8
@XGENE_NUM_RX_RING = common dso_local global i32 0, align 4
@XGENE_NUM_TX_RING = common dso_local global i32 0, align 4
@XGENE_NUM_TXC_RING = common dso_local global i32 0, align 4
@XGENE_ENET1 = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_XGMII = common dso_local global i32 0, align 4
@X2_START_CPU_BUFNUM_0 = common dso_local global i8* null, align 8
@X2_START_ETH_BUFNUM_0 = common dso_local global i8* null, align 8
@X2_START_BP_BUFNUM_0 = common dso_local global i8* null, align 8
@START_RING_NUM_0 = common dso_local global i8* null, align 8
@START_CPU_BUFNUM_0 = common dso_local global i8* null, align 8
@START_ETH_BUFNUM_0 = common dso_local global i8* null, align 8
@START_BP_BUFNUM_0 = common dso_local global i8* null, align 8
@XG_START_CPU_BUFNUM_1 = common dso_local global i8* null, align 8
@XG_START_ETH_BUFNUM_1 = common dso_local global i8* null, align 8
@XG_START_BP_BUFNUM_1 = common dso_local global i8* null, align 8
@XG_START_RING_NUM_1 = common dso_local global i8* null, align 8
@START_CPU_BUFNUM_1 = common dso_local global i8* null, align 8
@START_ETH_BUFNUM_1 = common dso_local global i8* null, align 8
@START_BP_BUFNUM_1 = common dso_local global i8* null, align 8
@START_RING_NUM_1 = common dso_local global i8* null, align 8
@xgene_ring1_ops = common dso_local global i32 0, align 4
@X2_START_RING_NUM_0 = common dso_local global i8* null, align 8
@X2_START_CPU_BUFNUM_1 = common dso_local global i8* null, align 8
@X2_START_ETH_BUFNUM_1 = common dso_local global i8* null, align 8
@X2_START_BP_BUFNUM_1 = common dso_local global i8* null, align 8
@X2_START_RING_NUM_1 = common dso_local global i8* null, align 8
@xgene_ring2_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_enet_setup_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_setup_ops(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  %3 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %4 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %34 [
    i32 132, label %6
    i32 131, label %6
    i32 130, label %6
    i32 129, label %6
    i32 128, label %20
  ]

6:                                                ; preds = %1, %1, %1, %1
  %7 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %8 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %7, i32 0, i32 14
  store i32* @xgene_gmac_ops, i32** %8, align 8
  %9 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %10 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %9, i32 0, i32 13
  store i32* @xgene_gport_ops, i32** %10, align 8
  %11 = load i8*, i8** @RM3, align 8
  %12 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %13 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %12, i32 0, i32 7
  store i8* %11, i8** %13, align 8
  %14 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %15 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %17 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %16, i32 0, i32 2
  store i32 1, i32* %17, align 8
  %18 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %19 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %18, i32 0, i32 3
  store i32 0, i32* %19, align 4
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %22 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %21, i32 0, i32 14
  store i32* @xgene_sgmac_ops, i32** %22, align 8
  %23 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %24 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %23, i32 0, i32 13
  store i32* @xgene_sgport_ops, i32** %24, align 8
  %25 = load i8*, i8** @RM1, align 8
  %26 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %27 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %29 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %31 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %33 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %32, i32 0, i32 3
  store i32 1, i32* %33, align 4
  br label %59

34:                                               ; preds = %1
  %35 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %36 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %35, i32 0, i32 14
  store i32* @xgene_xgmac_ops, i32** %36, align 8
  %37 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %38 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %37, i32 0, i32 13
  store i32* @xgene_xgport_ops, i32** %38, align 8
  %39 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %40 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %39, i32 0, i32 12
  store i32* @xgene_cle3in_ops, i32** %40, align 8
  %41 = load i8*, i8** @RM0, align 8
  %42 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %43 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %45 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %34
  %49 = load i32, i32* @XGENE_NUM_RX_RING, align 4
  %50 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %51 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @XGENE_NUM_TX_RING, align 4
  %53 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %54 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @XGENE_NUM_TXC_RING, align 4
  %56 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %57 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %48, %34
  br label %59

59:                                               ; preds = %58, %20, %6
  %60 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %61 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @XGENE_ENET1, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %139

65:                                               ; preds = %59
  %66 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %67 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %135 [
    i32 0, label %69
    i32 1, label %102
  ]

69:                                               ; preds = %65
  %70 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %71 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PHY_INTERFACE_MODE_XGMII, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load i8*, i8** @X2_START_CPU_BUFNUM_0, align 8
  %77 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %78 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %77, i32 0, i32 11
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @X2_START_ETH_BUFNUM_0, align 8
  %80 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %81 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %80, i32 0, i32 10
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @X2_START_BP_BUFNUM_0, align 8
  %83 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %84 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %83, i32 0, i32 9
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @START_RING_NUM_0, align 8
  %86 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %87 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %86, i32 0, i32 8
  store i8* %85, i8** %87, align 8
  br label %101

88:                                               ; preds = %69
  %89 = load i8*, i8** @START_CPU_BUFNUM_0, align 8
  %90 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %91 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %90, i32 0, i32 11
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @START_ETH_BUFNUM_0, align 8
  %93 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %94 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %93, i32 0, i32 10
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** @START_BP_BUFNUM_0, align 8
  %96 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %97 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %96, i32 0, i32 9
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** @START_RING_NUM_0, align 8
  %99 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %100 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %99, i32 0, i32 8
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %88, %75
  br label %136

102:                                              ; preds = %65
  %103 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %104 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @PHY_INTERFACE_MODE_XGMII, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = load i8*, i8** @XG_START_CPU_BUFNUM_1, align 8
  %110 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %111 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %110, i32 0, i32 11
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** @XG_START_ETH_BUFNUM_1, align 8
  %113 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %114 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %113, i32 0, i32 10
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** @XG_START_BP_BUFNUM_1, align 8
  %116 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %117 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %116, i32 0, i32 9
  store i8* %115, i8** %117, align 8
  %118 = load i8*, i8** @XG_START_RING_NUM_1, align 8
  %119 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %120 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %119, i32 0, i32 8
  store i8* %118, i8** %120, align 8
  br label %134

121:                                              ; preds = %102
  %122 = load i8*, i8** @START_CPU_BUFNUM_1, align 8
  %123 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %124 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %123, i32 0, i32 11
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** @START_ETH_BUFNUM_1, align 8
  %126 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %127 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %126, i32 0, i32 10
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** @START_BP_BUFNUM_1, align 8
  %129 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %130 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %129, i32 0, i32 9
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** @START_RING_NUM_1, align 8
  %132 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %133 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %132, i32 0, i32 8
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %121, %108
  br label %136

135:                                              ; preds = %65
  br label %136

136:                                              ; preds = %135, %134, %101
  %137 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %138 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %137, i32 0, i32 6
  store i32* @xgene_ring1_ops, i32** %138, align 8
  br label %176

139:                                              ; preds = %59
  %140 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %141 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  switch i32 %142, label %169 [
    i32 0, label %143
    i32 1, label %156
  ]

143:                                              ; preds = %139
  %144 = load i8*, i8** @X2_START_CPU_BUFNUM_0, align 8
  %145 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %146 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %145, i32 0, i32 11
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** @X2_START_ETH_BUFNUM_0, align 8
  %148 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %149 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %148, i32 0, i32 10
  store i8* %147, i8** %149, align 8
  %150 = load i8*, i8** @X2_START_BP_BUFNUM_0, align 8
  %151 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %152 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %151, i32 0, i32 9
  store i8* %150, i8** %152, align 8
  %153 = load i8*, i8** @X2_START_RING_NUM_0, align 8
  %154 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %155 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %154, i32 0, i32 8
  store i8* %153, i8** %155, align 8
  br label %170

156:                                              ; preds = %139
  %157 = load i8*, i8** @X2_START_CPU_BUFNUM_1, align 8
  %158 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %159 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %158, i32 0, i32 11
  store i8* %157, i8** %159, align 8
  %160 = load i8*, i8** @X2_START_ETH_BUFNUM_1, align 8
  %161 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %162 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %161, i32 0, i32 10
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** @X2_START_BP_BUFNUM_1, align 8
  %164 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %165 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %164, i32 0, i32 9
  store i8* %163, i8** %165, align 8
  %166 = load i8*, i8** @X2_START_RING_NUM_1, align 8
  %167 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %168 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %167, i32 0, i32 8
  store i8* %166, i8** %168, align 8
  br label %170

169:                                              ; preds = %139
  br label %170

170:                                              ; preds = %169, %156, %143
  %171 = load i8*, i8** @RM0, align 8
  %172 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %173 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %172, i32 0, i32 7
  store i8* %171, i8** %173, align 8
  %174 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %175 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %174, i32 0, i32 6
  store i32* @xgene_ring2_ops, i32** %175, align 8
  br label %176

176:                                              ; preds = %170, %136
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
