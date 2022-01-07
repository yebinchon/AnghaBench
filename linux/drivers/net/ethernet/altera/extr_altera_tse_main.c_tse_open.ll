; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, i32 }
%struct.altera_tse_private = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*, i32*)*, i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)* }

@.str = private unnamed_addr constant [23 x i8] c"Cannot initialize DMA\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"device MAC address %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"TSE revision %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Cannot init the SGMII PCS (error: %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Cannot reset MAC core (error: %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Cannot init MAC core (error: %d)\0A\00", align 1
@dma_rx_num = common dso_local global i32 0, align 4
@dma_tx_num = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"DMA descriptors initialization failed\0A\00", align 1
@altera_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Unable to register RX interrupt %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Unable to register TX interrupt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @tse_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tse_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.altera_tse_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.altera_tse_private* @netdev_priv(%struct.net_device* %8)
  store %struct.altera_tse_private* %9, %struct.altera_tse_private** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %11 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)** %13, align 8
  %15 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %16 = call i32 %14(%struct.altera_tse_private* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %230

22:                                               ; preds = %1
  %23 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %24 = call i64 @netif_msg_ifup(%struct.altera_tse_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @netdev_warn(%struct.net_device* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %22
  %33 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %34 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 3328
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %39 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 3584
  br i1 %41, label %42, label %48

42:                                               ; preds = %37, %32
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %45 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @netdev_warn(%struct.net_device* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %50 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %49, i32 0, i32 4
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @init_sgmii_pcs(%struct.net_device* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %61 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %60, i32 0, i32 4
  %62 = call i32 @spin_unlock(i32* %61)
  br label %230

63:                                               ; preds = %48
  %64 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %65 = call i32 @reset_mac(%struct.altera_tse_private* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @netdev_dbg(%struct.net_device* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %74 = call i32 @init_mac(%struct.altera_tse_private* %73)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %76 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %75, i32 0, i32 4
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %229

84:                                               ; preds = %72
  %85 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %86 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %85, i32 0, i32 5
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  %89 = load i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)** %88, align 8
  %90 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %91 = call i32 %89(%struct.altera_tse_private* %90)
  %92 = load i32, i32* @dma_rx_num, align 4
  %93 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %94 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @dma_tx_num, align 4
  %96 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %97 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %96, i32 0, i32 9
  store i32 %95, i32* %97, align 8
  %98 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %99 = call i32 @alloc_init_skbufs(%struct.altera_tse_private* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %84
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %229

105:                                              ; preds = %84
  %106 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %107 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @altera_isr, align 4
  %110 = load i32, i32* @IRQF_SHARED, align 4
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.net_device*, %struct.net_device** %3, align 8
  %115 = call i32 @request_irq(i32 %108, i32 %109, i32 %110, i32 %113, %struct.net_device* %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %105
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %121 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %122)
  br label %226

124:                                              ; preds = %105
  %125 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %126 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @altera_isr, align 4
  %129 = load i32, i32* @IRQF_SHARED, align 4
  %130 = load %struct.net_device*, %struct.net_device** %3, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.net_device*, %struct.net_device** %3, align 8
  %134 = call i32 @request_irq(i32 %127, i32 %128, i32 %129, i32 %132, %struct.net_device* %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %124
  %138 = load %struct.net_device*, %struct.net_device** %3, align 8
  %139 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %140 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %141)
  br label %220

143:                                              ; preds = %124
  %144 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %145 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %144, i32 0, i32 7
  %146 = load i64, i64* %7, align 8
  %147 = call i32 @spin_lock_irqsave(i32* %145, i64 %146)
  %148 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %149 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %148, i32 0, i32 5
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 4
  %152 = load i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)** %151, align 8
  %153 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %154 = call i32 %152(%struct.altera_tse_private* %153)
  %155 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %156 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %155, i32 0, i32 5
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  %159 = load i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)** %158, align 8
  %160 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %161 = call i32 %159(%struct.altera_tse_private* %160)
  store i32 0, i32* %6, align 4
  br label %162

162:                                              ; preds = %182, %143
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %165 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %162
  %169 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %170 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %169, i32 0, i32 5
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  %173 = load i32 (%struct.altera_tse_private*, i32*)*, i32 (%struct.altera_tse_private*, i32*)** %172, align 8
  %174 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %175 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %176 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %175, i32 0, i32 8
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = call i32 %173(%struct.altera_tse_private* %174, i32* %180)
  br label %182

182:                                              ; preds = %168
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %162

185:                                              ; preds = %162
  %186 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %187 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %186, i32 0, i32 7
  %188 = load i64, i64* %7, align 8
  %189 = call i32 @spin_unlock_irqrestore(i32* %187, i64 %188)
  %190 = load %struct.net_device*, %struct.net_device** %3, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %185
  %195 = load %struct.net_device*, %struct.net_device** %3, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @phy_start(i64 %197)
  br label %199

199:                                              ; preds = %194, %185
  %200 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %201 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %200, i32 0, i32 6
  %202 = call i32 @napi_enable(i32* %201)
  %203 = load %struct.net_device*, %struct.net_device** %3, align 8
  %204 = call i32 @netif_start_queue(%struct.net_device* %203)
  %205 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %206 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %205, i32 0, i32 5
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  %209 = load i32 (%struct.altera_tse_private*)*, i32 (%struct.altera_tse_private*)** %208, align 8
  %210 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %211 = call i32 %209(%struct.altera_tse_private* %210)
  %212 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %213 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %212, i32 0, i32 4
  %214 = call i32 @spin_lock(i32* %213)
  %215 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %216 = call i32 @tse_set_mac(%struct.altera_tse_private* %215, i32 1)
  %217 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %218 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %217, i32 0, i32 4
  %219 = call i32 @spin_unlock(i32* %218)
  store i32 0, i32* %2, align 4
  br label %232

220:                                              ; preds = %137
  %221 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %222 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.net_device*, %struct.net_device** %3, align 8
  %225 = call i32 @free_irq(i32 %223, %struct.net_device* %224)
  br label %226

226:                                              ; preds = %220, %118
  %227 = load %struct.net_device*, %struct.net_device** %3, align 8
  %228 = call i32 @free_skbufs(%struct.net_device* %227)
  br label %229

229:                                              ; preds = %226, %102, %80
  br label %230

230:                                              ; preds = %229, %56, %19
  %231 = load i32, i32* %5, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %230, %199
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local %struct.altera_tse_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @netif_msg_ifup(%struct.altera_tse_private*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @init_sgmii_pcs(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @reset_mac(%struct.altera_tse_private*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @init_mac(%struct.altera_tse_private*) #1

declare dso_local i32 @alloc_init_skbufs(%struct.altera_tse_private*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @phy_start(i64) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @tse_set_mac(%struct.altera_tse_private*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @free_skbufs(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
