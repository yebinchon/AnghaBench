; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sh_eth_private = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*)*, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32 (%struct.net_device*)*, i32, i64, i64, i64, i64, i64 }

@RMIIMODE = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@RPADIR = common dso_local global i32 0, align 4
@EESIPR = common dso_local global i32 0, align 4
@EDMR = common dso_local global i32 0, align 4
@FDR = common dso_local global i32 0, align 4
@TFTR = common dso_local global i32 0, align 4
@RMCR_RNC = common dso_local global i32 0, align 4
@RMCR = common dso_local global i32 0, align 4
@TRSCER = common dso_local global i32 0, align 4
@EDMR_NBST = common dso_local global i32 0, align 4
@BCULR = common dso_local global i32 0, align 4
@FCFTR = common dso_local global i32 0, align 4
@TRIMD = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@RFLR = common dso_local global i32 0, align 4
@EESR = common dso_local global i32 0, align 4
@ECMR_ZPF = common dso_local global i32 0, align 4
@ECMR_DM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@ECMR_RCSC = common dso_local global i32 0, align 4
@ECMR_TE = common dso_local global i32 0, align 4
@ECMR_RE = common dso_local global i32 0, align 4
@ECMR = common dso_local global i32 0, align 4
@ECSR = common dso_local global i32 0, align 4
@ECSIPR = common dso_local global i32 0, align 4
@APR = common dso_local global i32 0, align 4
@MPR = common dso_local global i32 0, align 4
@TPAUSER_UNLIMITED = common dso_local global i32 0, align 4
@TPAUSER = common dso_local global i32 0, align 4
@EDRRR_R = common dso_local global i32 0, align 4
@EDRRR = common dso_local global i32 0, align 4
@EDMR_EL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sh_eth_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_dev_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sh_eth_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.sh_eth_private* %7, %struct.sh_eth_private** %4, align 8
  %8 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %9 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %11, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 %12(%struct.net_device* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %245

19:                                               ; preds = %1
  %20 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %21 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 16
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i32, i32* @RMIIMODE, align 4
  %29 = call i32 @sh_eth_write(%struct.net_device* %27, i32 1, i32 %28)
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @sh_eth_ring_format(%struct.net_device* %31)
  %33 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %34 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 15
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = load i32, i32* @NET_IP_ALIGN, align 4
  %42 = shl i32 %41, 16
  %43 = load i32, i32* @RPADIR, align 4
  %44 = call i32 @sh_eth_write(%struct.net_device* %40, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %30
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = load i32, i32* @EESIPR, align 4
  %48 = call i32 @sh_eth_write(%struct.net_device* %46, i32 0, i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = load i32, i32* @EDMR, align 4
  %51 = call i32 @sh_eth_write(%struct.net_device* %49, i32 0, i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %54 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FDR, align 4
  %59 = call i32 @sh_eth_write(%struct.net_device* %52, i32 %57, i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = load i32, i32* @TFTR, align 4
  %62 = call i32 @sh_eth_write(%struct.net_device* %60, i32 0, i32 %61)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = load i32, i32* @RMCR_RNC, align 4
  %65 = load i32, i32* @RMCR, align 4
  %66 = call i32 @sh_eth_write(%struct.net_device* %63, i32 %64, i32 %65)
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %69 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TRSCER, align 4
  %74 = call i32 @sh_eth_write(%struct.net_device* %67, i32 %72, i32 %73)
  %75 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %76 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 13
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %45
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = load i32, i32* @EDMR, align 4
  %84 = load i32, i32* @EDMR_NBST, align 4
  %85 = load i32, i32* @EDMR_NBST, align 4
  %86 = call i32 @sh_eth_modify(%struct.net_device* %82, i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %45
  %88 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %89 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 12
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = load i32, i32* @BCULR, align 4
  %97 = call i32 @sh_eth_write(%struct.net_device* %95, i32 2048, i32 %96)
  br label %98

98:                                               ; preds = %94, %87
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %101 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @FCFTR, align 4
  %106 = call i32 @sh_eth_write(%struct.net_device* %99, i32 %104, i32 %105)
  %107 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %108 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %98
  %114 = load %struct.net_device*, %struct.net_device** %3, align 8
  %115 = load i32, i32* @TRIMD, align 4
  %116 = call i32 @sh_eth_write(%struct.net_device* %114, i32 0, i32 %115)
  br label %117

117:                                              ; preds = %113, %98
  %118 = load %struct.net_device*, %struct.net_device** %3, align 8
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ETH_HLEN, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* @VLAN_HLEN, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* @ETH_FCS_LEN, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* @RFLR, align 4
  %129 = call i32 @sh_eth_write(%struct.net_device* %118, i32 %127, i32 %128)
  %130 = load %struct.net_device*, %struct.net_device** %3, align 8
  %131 = load i32, i32* @EESR, align 4
  %132 = call i32 @sh_eth_modify(%struct.net_device* %130, i32 %131, i32 0, i32 0)
  %133 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %134 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %137 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @EESIPR, align 4
  %142 = call i32 @sh_eth_write(%struct.net_device* %135, i32 %140, i32 %141)
  %143 = load %struct.net_device*, %struct.net_device** %3, align 8
  %144 = load i32, i32* @ECMR_ZPF, align 4
  %145 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %146 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %117
  %150 = load i32, i32* @ECMR_DM, align 4
  br label %152

151:                                              ; preds = %117
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 0, %151 ]
  %154 = or i32 %144, %153
  %155 = load %struct.net_device*, %struct.net_device** %3, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = load i32, i32* @ECMR_RCSC, align 4
  br label %164

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ]
  %166 = or i32 %154, %165
  %167 = load i32, i32* @ECMR_TE, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @ECMR_RE, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @ECMR, align 4
  %172 = call i32 @sh_eth_write(%struct.net_device* %143, i32 %170, i32 %171)
  %173 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %174 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %173, i32 0, i32 1
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 10
  %177 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %176, align 8
  %178 = icmp ne i32 (%struct.net_device*)* %177, null
  br i1 %178, label %179, label %187

179:                                              ; preds = %164
  %180 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %181 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %180, i32 0, i32 1
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 10
  %184 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %183, align 8
  %185 = load %struct.net_device*, %struct.net_device** %3, align 8
  %186 = call i32 %184(%struct.net_device* %185)
  br label %187

187:                                              ; preds = %179, %164
  %188 = load %struct.net_device*, %struct.net_device** %3, align 8
  %189 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %190 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %189, i32 0, i32 1
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @ECSR, align 4
  %195 = call i32 @sh_eth_write(%struct.net_device* %188, i32 %193, i32 %194)
  %196 = load %struct.net_device*, %struct.net_device** %3, align 8
  %197 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %198 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %197, i32 0, i32 1
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @ECSIPR, align 4
  %203 = call i32 @sh_eth_write(%struct.net_device* %196, i32 %201, i32 %202)
  %204 = load %struct.net_device*, %struct.net_device** %3, align 8
  %205 = call i32 @update_mac_address(%struct.net_device* %204)
  %206 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %207 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %206, i32 0, i32 1
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 9
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %187
  %213 = load %struct.net_device*, %struct.net_device** %3, align 8
  %214 = load i32, i32* @APR, align 4
  %215 = call i32 @sh_eth_write(%struct.net_device* %213, i32 1, i32 %214)
  br label %216

216:                                              ; preds = %212, %187
  %217 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %218 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %217, i32 0, i32 1
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 8
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %216
  %224 = load %struct.net_device*, %struct.net_device** %3, align 8
  %225 = load i32, i32* @MPR, align 4
  %226 = call i32 @sh_eth_write(%struct.net_device* %224, i32 1, i32 %225)
  br label %227

227:                                              ; preds = %223, %216
  %228 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %229 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %228, i32 0, i32 1
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 7
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %227
  %235 = load %struct.net_device*, %struct.net_device** %3, align 8
  %236 = load i32, i32* @TPAUSER_UNLIMITED, align 4
  %237 = load i32, i32* @TPAUSER, align 4
  %238 = call i32 @sh_eth_write(%struct.net_device* %235, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %234, %227
  %240 = load %struct.net_device*, %struct.net_device** %3, align 8
  %241 = load i32, i32* @EDRRR_R, align 4
  %242 = load i32, i32* @EDRRR, align 4
  %243 = call i32 @sh_eth_write(%struct.net_device* %240, i32 %241, i32 %242)
  %244 = load i32, i32* %5, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %239, %17
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sh_eth_write(%struct.net_device*, i32, i32) #1

declare dso_local i32 @sh_eth_ring_format(%struct.net_device*) #1

declare dso_local i32 @sh_eth_modify(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @update_mac_address(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
