; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { i64, %struct.TYPE_6__, %struct.TYPE_7__*, %struct.net_device*, i32, i32*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.net_device*, i32, i32 }
%struct.net_device = type { i64, %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }

@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"out of RX resources\0A\00", align 1
@SPI_REG_RDBUF_BYTE_AVA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"qcaspi_receive: SPI_REG_RDBUF_BYTE_AVA: Value: %08x\0A\00", align 1
@QCASPI_HW_BUF_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"qcaspi_receive called without any data being available!\0A\00", align 1
@SPI_REG_BFR_SIZE = common dso_local global i32 0, align 4
@wr_verify = common dso_local global i32 0, align 4
@QCA7K_SPI_READ = common dso_local global i32 0, align 4
@QCA7K_SPI_EXTERNAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"available: %d, byte read: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"no RX tail\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"invalid RX length\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcaspi*)* @qcaspi_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcaspi_receive(%struct.qcaspi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcaspi*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qcaspi* %0, %struct.qcaspi** %3, align 8
  %11 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %12 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %11, i32 0, i32 3
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  store %struct.net_device_stats* %15, %struct.net_device_stats** %5, align 8
  store i64 0, i64* %6, align 8
  %16 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %17 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i8* @netdev_alloc_skb_ip_align(%struct.net_device* %21, i64 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_7__*
  %29 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %30 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %29, i32 0, i32 2
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %32 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %20
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %39 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  store i32 -1, i32* %2, align 4
  br label %264

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %46 = load i32, i32* @SPI_REG_RDBUF_BYTE_AVA, align 4
  %47 = call i32 @qcaspi_read_register(%struct.qcaspi* %45, i32 %46, i64* %6)
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @QCASPI_HW_BUF_LEN, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %56 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  store i32 -1, i32* %2, align 4
  br label %264

60:                                               ; preds = %44
  %61 = load i64, i64* %6, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %264

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %69 = load i32, i32* @SPI_REG_BFR_SIZE, align 4
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* @wr_verify, align 4
  %72 = call i32 @qcaspi_write_register(%struct.qcaspi* %68, i32 %69, i64 %70, i32 %71)
  %73 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %74 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %79 = load i32, i32* @QCA7K_SPI_READ, align 4
  %80 = load i32, i32* @QCA7K_SPI_EXTERNAL, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @qcaspi_tx_cmd(%struct.qcaspi* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %67
  br label %84

84:                                               ; preds = %262, %83
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %263

87:                                               ; preds = %84
  %88 = load i64, i64* %6, align 8
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %91 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %96 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %94, %87
  %99 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %100 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %105 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %106 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @qcaspi_read_legacy(%struct.qcaspi* %104, i32* %107, i64 %108)
  store i64 %109, i64* %7, align 8
  br label %117

110:                                              ; preds = %98
  %111 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %112 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %113 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i64 @qcaspi_read_burst(%struct.qcaspi* %111, i32* %114, i64 %115)
  store i64 %116, i64* %7, align 8
  br label %117

117:                                              ; preds = %110, %103
  %118 = load %struct.net_device*, %struct.net_device** %4, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %119, i64 %120)
  %122 = load i64, i64* %7, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* %6, align 8
  %127 = sub nsw i64 %126, %125
  store i64 %127, i64* %6, align 8
  br label %134

128:                                              ; preds = %117
  %129 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %130 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  store i32 -1, i32* %2, align 4
  br label %264

134:                                              ; preds = %124
  %135 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %136 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  store i32* %137, i32** %8, align 8
  br label %138

138:                                              ; preds = %261, %134
  %139 = load i64, i64* %7, align 8
  %140 = add nsw i64 %139, -1
  store i64 %140, i64* %7, align 8
  %141 = icmp ne i64 %139, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %144 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %143, i32 0, i32 2
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = icmp ne %struct.TYPE_7__* %145, null
  br label %147

147:                                              ; preds = %142, %138
  %148 = phi i1 [ false, %138 ], [ %146, %142 ]
  br i1 %148, label %149, label %262

149:                                              ; preds = %147
  %150 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %151 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %150, i32 0, i32 4
  %152 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %153 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %152, i32 0, i32 2
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %158 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %157, i32 0, i32 2
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = call i32 @skb_tailroom(%struct.TYPE_7__* %159)
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @qcafrm_fsm_decode(i32* %151, i32 %156, i32 %160, i32 %162)
  store i32 %163, i32* %10, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %8, align 8
  %166 = load i32, i32* %10, align 4
  switch i32 %166, label %190 [
    i32 131, label %167
    i32 129, label %167
    i32 128, label %168
    i32 130, label %179
  ]

167:                                              ; preds = %149, %149
  br label %261

168:                                              ; preds = %149
  %169 = load %struct.net_device*, %struct.net_device** %4, align 8
  %170 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %172 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %176 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  br label %261

179:                                              ; preds = %149
  %180 = load %struct.net_device*, %struct.net_device** %4, align 8
  %181 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %180, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %182 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %183 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  %186 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %187 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  br label %261

190:                                              ; preds = %149
  %191 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %192 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %191, i32 0, i32 3
  %193 = load %struct.net_device*, %struct.net_device** %192, align 8
  %194 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %195 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %194, i32 0, i32 2
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  store %struct.net_device* %193, %struct.net_device** %197, align 8
  %198 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %199 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %204 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %208 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %207, i32 0, i32 2
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = call i32 @skb_put(%struct.TYPE_7__* %209, i32 %210)
  %212 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %213 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %212, i32 0, i32 2
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %216 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %215, i32 0, i32 2
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load %struct.net_device*, %struct.net_device** %218, align 8
  %220 = call i32 @eth_type_trans(%struct.TYPE_7__* %214, %struct.net_device* %219)
  %221 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %222 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %221, i32 0, i32 2
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 2
  store i32 %220, i32* %224, align 8
  %225 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %226 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %227 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %226, i32 0, i32 2
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  store i32 %225, i32* %229, align 8
  %230 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %231 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %230, i32 0, i32 2
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = call i32 @netif_rx_ni(%struct.TYPE_7__* %232)
  %234 = load %struct.net_device*, %struct.net_device** %4, align 8
  %235 = load %struct.net_device*, %struct.net_device** %4, align 8
  %236 = getelementptr inbounds %struct.net_device, %struct.net_device* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i8* @netdev_alloc_skb_ip_align(%struct.net_device* %234, i64 %239)
  %241 = bitcast i8* %240 to %struct.TYPE_7__*
  %242 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %243 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %242, i32 0, i32 2
  store %struct.TYPE_7__* %241, %struct.TYPE_7__** %243, align 8
  %244 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %245 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %244, i32 0, i32 2
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = icmp ne %struct.TYPE_7__* %246, null
  br i1 %247, label %260, label %248

248:                                              ; preds = %190
  %249 = load %struct.net_device*, %struct.net_device** %4, align 8
  %250 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %249, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %251 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %252 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  %255 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %256 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 8
  br label %261

260:                                              ; preds = %190
  br label %261

261:                                              ; preds = %260, %248, %179, %168, %167
  br label %138

262:                                              ; preds = %147
  br label %84

263:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %264

264:                                              ; preds = %263, %128, %63, %54, %35
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i8* @netdev_alloc_skb_ip_align(%struct.net_device*, i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @qcaspi_read_register(%struct.qcaspi*, i32, i64*) #1

declare dso_local i32 @qcaspi_write_register(%struct.qcaspi*, i32, i64, i32) #1

declare dso_local i32 @qcaspi_tx_cmd(%struct.qcaspi*, i32) #1

declare dso_local i64 @qcaspi_read_legacy(%struct.qcaspi*, i32*, i64) #1

declare dso_local i64 @qcaspi_read_burst(%struct.qcaspi*, i32*, i64) #1

declare dso_local i32 @qcafrm_fsm_decode(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_tailroom(%struct.TYPE_7__*) #1

declare dso_local i32 @skb_put(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.TYPE_7__*, %struct.net_device*) #1

declare dso_local i32 @netif_rx_ni(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
