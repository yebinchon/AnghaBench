; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i64*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64 }
%struct.usb_interface = type { i32 }
%struct.lan78xx_priv = type { i32, i32, i32, i64*, i32, i32, %struct.lan78xx_net* }

@.str = private unnamed_addr constant [34 x i8] c"lan78xx_get_endpoints failed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to allocate lan78xx_priv\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lan78xx_deferred_multicast_write = common dso_local global i32 0, align 4
@DP_SEL_VHF_VLAN_LEN = common dso_local global i32 0, align 4
@lan78xx_deferred_vlan_write = common dso_local global i32 0, align 4
@DEFAULT_TX_CSUM_ENABLE = common dso_local global i64 0, align 8
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@DEFAULT_RX_CSUM_ENABLE = common dso_local global i64 0, align 8
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@DEFAULT_TSO_CSUM_ENABLE = common dso_local global i64 0, align 8
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@DEFAULT_VLAN_RX_OFFLOAD = common dso_local global i64 0, align 8
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@DEFAULT_VLAN_FILTER_ENABLE = common dso_local global i64 0, align 8
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"lan78xx_setup_irq_domain() failed : %d\00", align 1
@TX_OVERHEAD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Registers INIT FAILED....\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"MDIO INIT FAILED.....\00", align 1
@IFF_MULTICAST = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Bind routine FAILED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, %struct.usb_interface*)* @lan78xx_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_bind(%struct.lan78xx_net* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lan78xx_net*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.lan78xx_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  store %struct.lan78xx_priv* null, %struct.lan78xx_priv** %6, align 8
  %9 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %11 = call i32 @lan78xx_get_endpoints(%struct.lan78xx_net* %9, %struct.usb_interface* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %16 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (%struct.TYPE_2__*, i8*, ...) @netdev_warn(%struct.TYPE_2__* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %227

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64 @kzalloc(i32 40, i32 %22)
  %24 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %25 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %23, i64* %27, align 8
  %28 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %29 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.lan78xx_priv*
  store %struct.lan78xx_priv* %33, %struct.lan78xx_priv** %6, align 8
  %34 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %35 = icmp ne %struct.lan78xx_priv* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %21
  %37 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %38 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 (%struct.TYPE_2__*, i8*, ...) @netdev_warn(%struct.TYPE_2__* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %227

43:                                               ; preds = %21
  %44 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %45 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %46 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %45, i32 0, i32 6
  store %struct.lan78xx_net* %44, %struct.lan78xx_net** %46, align 8
  %47 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %48 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %47, i32 0, i32 5
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %51 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %50, i32 0, i32 4
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %54 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %53, i32 0, i32 1
  %55 = load i32, i32* @lan78xx_deferred_multicast_write, align 4
  %56 = call i32 @INIT_WORK(i32* %54, i32 %55)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %68, %43
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @DP_SEL_VHF_VLAN_LEN, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %63 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %57

71:                                               ; preds = %57
  %72 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %73 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %72, i32 0, i32 0
  %74 = load i32, i32* @lan78xx_deferred_vlan_write, align 4
  %75 = call i32 @INIT_WORK(i32* %73, i32 %74)
  %76 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %77 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load i64, i64* @DEFAULT_TX_CSUM_ENABLE, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %71
  %83 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %84 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %85 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %82, %71
  %91 = load i64, i64* @DEFAULT_RX_CSUM_ENABLE, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %95 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %96 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %94
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %93, %90
  %102 = load i64, i64* @DEFAULT_TSO_CSUM_ENABLE, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load i32, i32* @NETIF_F_TSO, align 4
  %106 = load i32, i32* @NETIF_F_TSO6, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @NETIF_F_SG, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %111 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %109
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %104, %101
  %117 = load i64, i64* @DEFAULT_VLAN_RX_OFFLOAD, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %121 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %122 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %120
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %119, %116
  %128 = load i64, i64* @DEFAULT_VLAN_FILTER_ENABLE, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %132 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %133 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %131
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %130, %127
  %139 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %140 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %145 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  store i32 %143, i32* %147, align 4
  %148 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %149 = call i32 @lan78xx_setup_irq_domain(%struct.lan78xx_net* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %138
  %153 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %154 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %153, i32 0, i32 1
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 (%struct.TYPE_2__*, i8*, ...) @netdev_warn(%struct.TYPE_2__* %155, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  br label %213

158:                                              ; preds = %138
  %159 = load i64, i64* @TX_OVERHEAD, align 8
  %160 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %161 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %160, i32 0, i32 1
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %159
  store i64 %165, i64* %163, align 8
  %166 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %167 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %166, i32 0, i32 1
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %172 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %171, i32 0, i32 1
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %170, %175
  %177 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %178 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  %179 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %180 = call i32 @lan78xx_reset(%struct.lan78xx_net* %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %158
  %184 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %185 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %184, i32 0, i32 1
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = call i32 (%struct.TYPE_2__*, i8*, ...) @netdev_warn(%struct.TYPE_2__* %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %210

188:                                              ; preds = %158
  %189 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %190 = call i32 @lan78xx_mdio_init(%struct.lan78xx_net* %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %195 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %194, i32 0, i32 1
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = call i32 (%struct.TYPE_2__*, i8*, ...) @netdev_warn(%struct.TYPE_2__* %196, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %210

198:                                              ; preds = %188
  %199 = load i32, i32* @IFF_MULTICAST, align 4
  %200 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %201 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %200, i32 0, i32 1
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %199
  store i32 %205, i32* %203, align 8
  %206 = load i32, i32* @WAKE_MAGIC, align 4
  %207 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %208 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %7, align 4
  store i32 %209, i32* %3, align 4
  br label %227

210:                                              ; preds = %193, %183
  %211 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %212 = call i32 @lan78xx_remove_irq_domain(%struct.lan78xx_net* %211)
  br label %213

213:                                              ; preds = %210, %152
  %214 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %215 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %214, i32 0, i32 1
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = call i32 (%struct.TYPE_2__*, i8*, ...) @netdev_warn(%struct.TYPE_2__* %216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %218 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %219 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %218, i32 0, i32 1
  %220 = call i32 @cancel_work_sync(i32* %219)
  %221 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %222 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %221, i32 0, i32 0
  %223 = call i32 @cancel_work_sync(i32* %222)
  %224 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %225 = call i32 @kfree(%struct.lan78xx_priv* %224)
  %226 = load i32, i32* %7, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %213, %198, %36, %14
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @lan78xx_get_endpoints(%struct.lan78xx_net*, %struct.usb_interface*) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @lan78xx_setup_irq_domain(%struct.lan78xx_net*) #1

declare dso_local i32 @lan78xx_reset(%struct.lan78xx_net*) #1

declare dso_local i32 @lan78xx_mdio_init(%struct.lan78xx_net*) #1

declare dso_local i32 @lan78xx_remove_irq_domain(%struct.lan78xx_net*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.lan78xx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
