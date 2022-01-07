; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_hw_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_hw_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, %struct.TYPE_4__*, i64, i32, %struct.sky2_hw* }
%struct.TYPE_4__ = type { i32 }
%struct.sky2_hw = type { i64, i64, i32, %struct.net_device** }
%struct.net_device = type { i32 }

@PCI_CAP_ID_PCIX = common dso_local global i32 0, align 4
@PCI_X_CMD = common dso_local global i64 0, align 8
@PCI_X_CMD_MAX_SPLIT = common dso_local global i32 0, align 4
@B2_E_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ram buffer %dK\0A\00", align 1
@rxqaddr = common dso_local global i32* null, align 8
@txqaddr = common dso_local global i32* null, align 8
@Q_XS1 = common dso_local global i32 0, align 4
@Q_XS2 = common dso_local global i32 0, align 4
@RB_CTRL = common dso_local global i32 0, align 4
@RB_RST_SET = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EX = common dso_local global i64 0, align 8
@CHIP_REV_YU_EX_B0 = common dso_local global i64 0, align 8
@Q_TEST = common dso_local global i32 0, align 4
@F_TX_CHK_AUTO_OFF = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EC_U = common dso_local global i64 0, align 8
@CHIP_REV_YU_EC_U_A0 = common dso_local global i64 0, align 8
@Q_AL = common dso_local global i32 0, align 4
@ECU_TXFF_LEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*)* @sky2_hw_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_hw_up(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %10 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %11 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %10, i32 0, i32 4
  %12 = load %struct.sky2_hw*, %struct.sky2_hw** %11, align 8
  store %struct.sky2_hw* %12, %struct.sky2_hw** %3, align 8
  %13 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %14 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %17 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %16, i32 0, i32 3
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %20 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = xor i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 %23
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %7, align 8
  %26 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %27 = call i32 @tx_init(%struct.sky2_port* %26)
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = icmp ne %struct.net_device* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = call i64 @netif_running(%struct.net_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %36 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PCI_CAP_ID_PCIX, align 4
  %39 = call i32 @pci_find_capability(i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %34
  %42 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @PCI_X_CMD, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @sky2_pci_read16(%struct.sky2_hw* %42, i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @PCI_X_CMD_MAX_SPLIT, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @PCI_X_CMD, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @sky2_pci_write16(%struct.sky2_hw* %52, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %41, %34, %30, %1
  %60 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @sky2_mac_init(%struct.sky2_hw* %60, i32 %61)
  %63 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %64 = load i32, i32* @B2_E_0, align 4
  %65 = call i32 @sky2_read8(%struct.sky2_hw* %63, i32 %64)
  %66 = mul nsw i32 %65, 4
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %119

69:                                               ; preds = %59
  %70 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %71 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @netdev_dbg(%struct.TYPE_4__* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 16
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* %5, align 4
  %79 = sdiv i32 %78, 2
  store i32 %79, i32* %9, align 4
  br label %86

80:                                               ; preds = %69
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %81, 16
  %83 = mul nsw i32 2, %82
  %84 = sdiv i32 %83, 3
  %85 = add nsw i32 8, %84
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %80, %77
  %87 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %88 = load i32*, i32** @rxqaddr, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @sky2_ramset(%struct.sky2_hw* %87, i32 %92, i32 0, i32 %93)
  %95 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %96 = load i32*, i32** @txqaddr, align 8
  %97 = load i32, i32* %4, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 @sky2_ramset(%struct.sky2_hw* %95, i32 %100, i32 %101, i32 %104)
  %106 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %86
  %110 = load i32, i32* @Q_XS1, align 4
  br label %113

111:                                              ; preds = %86
  %112 = load i32, i32* @Q_XS2, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = load i32, i32* @RB_CTRL, align 4
  %116 = call i32 @RB_ADDR(i32 %114, i32 %115)
  %117 = load i32, i32* @RB_RST_SET, align 4
  %118 = call i32 @sky2_write8(%struct.sky2_hw* %106, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %113, %59
  %120 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %121 = load i32*, i32** @txqaddr, align 8
  %122 = load i32, i32* %4, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @sky2_qset(%struct.sky2_hw* %120, i32 %125)
  %127 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %128 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @CHIP_ID_YUKON_EX, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %119
  %133 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %134 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CHIP_REV_YU_EX_B0, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %140 = load i32*, i32** @txqaddr, align 8
  %141 = load i32, i32* %4, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @Q_TEST, align 4
  %146 = call i32 @Q_ADDR(i32 %144, i32 %145)
  %147 = load i32, i32* @F_TX_CHK_AUTO_OFF, align 4
  %148 = call i32 @sky2_write32(%struct.sky2_hw* %139, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %138, %132, %119
  %150 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %151 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @CHIP_ID_YUKON_EC_U, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %149
  %156 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %157 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @CHIP_REV_YU_EC_U_A0, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %163 = load i32*, i32** @txqaddr, align 8
  %164 = load i32, i32* %4, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @Q_AL, align 4
  %169 = call i32 @Q_ADDR(i32 %167, i32 %168)
  %170 = load i32, i32* @ECU_TXFF_LEV, align 4
  %171 = call i32 @sky2_write16(%struct.sky2_hw* %162, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %161, %155, %149
  %173 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %174 = load i32*, i32** @txqaddr, align 8
  %175 = load i32, i32* %4, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %180 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %183 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = sub nsw i64 %184, 1
  %186 = call i32 @sky2_prefetch_init(%struct.sky2_hw* %173, i32 %178, i32 %181, i64 %185)
  %187 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %188 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %187, i32 0, i32 1
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %191 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %190, i32 0, i32 1
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @sky2_vlan_mode(%struct.TYPE_4__* %189, i32 %194)
  %196 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %197 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %196, i32 0, i32 1
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = call i32 @netdev_update_features(%struct.TYPE_4__* %198)
  %200 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %201 = call i32 @sky2_rx_start(%struct.sky2_port* %200)
  ret void
}

declare dso_local i32 @tx_init(%struct.sky2_port*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @pci_find_capability(i32, i32) #1

declare dso_local i32 @sky2_pci_read16(%struct.sky2_hw*, i64) #1

declare dso_local i32 @sky2_pci_write16(%struct.sky2_hw*, i64, i32) #1

declare dso_local i32 @sky2_mac_init(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_read8(%struct.sky2_hw*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @sky2_ramset(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @RB_ADDR(i32, i32) #1

declare dso_local i32 @sky2_qset(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_prefetch_init(%struct.sky2_hw*, i32, i32, i64) #1

declare dso_local i32 @sky2_vlan_mode(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @netdev_update_features(%struct.TYPE_4__*) #1

declare dso_local i32 @sky2_rx_start(%struct.sky2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
