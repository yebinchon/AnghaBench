; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, i64, %struct.net_device*, i64, %struct.TYPE_4__, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.cb = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.config }
%struct.config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }

@cb_config = common dso_local global i32 0, align 4
@promiscuous = common dso_local global i32 0, align 4
@NETIF_F_RXFCS = common dso_local global i32 0, align 4
@multicast_all = common dso_local global i32 0, align 4
@wol_magic = common dso_local global i32 0, align 4
@mac_82558_D101_A4 = common dso_local global i64 0, align 8
@mac_82559_D101M = common dso_local global i64 0, align 8
@mac_82551_10 = common dso_local global i64 0, align 8
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"[00-07]=%8ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"[08-15]=%8ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"[16-23]=%8ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*, %struct.cb*, %struct.sk_buff*)* @e100_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_configure(%struct.nic* %0, %struct.cb* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nic*, align 8
  %5 = alloca %struct.cb*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.config*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.nic* %0, %struct.nic** %4, align 8
  store %struct.cb* %1, %struct.cb** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.cb*, %struct.cb** %5, align 8
  %11 = getelementptr inbounds %struct.cb, %struct.cb* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.config* %12, %struct.config** %7, align 8
  %13 = load %struct.config*, %struct.config** %7, align 8
  %14 = bitcast %struct.config* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load %struct.nic*, %struct.nic** %4, align 8
  %16 = getelementptr inbounds %struct.nic, %struct.nic* %15, i32 0, i32 2
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load i32, i32* @cb_config, align 4
  %19 = call i32 @cpu_to_le16(i32 %18)
  %20 = load %struct.cb*, %struct.cb** %5, align 8
  %21 = getelementptr inbounds %struct.cb, %struct.cb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.config*, %struct.config** %7, align 8
  %23 = call i32 @memset(%struct.config* %22, i32 0, i32 160)
  %24 = load %struct.config*, %struct.config** %7, align 8
  %25 = getelementptr inbounds %struct.config, %struct.config* %24, i32 0, i32 0
  store i32 22, i32* %25, align 8
  %26 = load %struct.config*, %struct.config** %7, align 8
  %27 = getelementptr inbounds %struct.config, %struct.config* %26, i32 0, i32 1
  store i32 8, i32* %27, align 4
  %28 = load %struct.config*, %struct.config** %7, align 8
  %29 = getelementptr inbounds %struct.config, %struct.config* %28, i32 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = load %struct.config*, %struct.config** %7, align 8
  %31 = getelementptr inbounds %struct.config, %struct.config* %30, i32 0, i32 3
  store i32 1, i32* %31, align 4
  %32 = load %struct.config*, %struct.config** %7, align 8
  %33 = getelementptr inbounds %struct.config, %struct.config* %32, i32 0, i32 4
  store i32 1, i32* %33, align 8
  %34 = load %struct.config*, %struct.config** %7, align 8
  %35 = getelementptr inbounds %struct.config, %struct.config* %34, i32 0, i32 5
  store i32 1, i32* %35, align 4
  %36 = load %struct.config*, %struct.config** %7, align 8
  %37 = getelementptr inbounds %struct.config, %struct.config* %36, i32 0, i32 6
  store i32 3, i32* %37, align 8
  %38 = load %struct.nic*, %struct.nic** %4, align 8
  %39 = call i64 @e100_phy_supports_mii(%struct.nic* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load %struct.config*, %struct.config** %7, align 8
  %43 = getelementptr inbounds %struct.config, %struct.config* %42, i32 0, i32 7
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %3
  %45 = load %struct.config*, %struct.config** %7, align 8
  %46 = getelementptr inbounds %struct.config, %struct.config* %45, i32 0, i32 8
  store i32 6, i32* %46, align 8
  %47 = load %struct.config*, %struct.config** %7, align 8
  %48 = getelementptr inbounds %struct.config, %struct.config* %47, i32 0, i32 9
  store i32 1, i32* %48, align 4
  %49 = load %struct.config*, %struct.config** %7, align 8
  %50 = getelementptr inbounds %struct.config, %struct.config* %49, i32 0, i32 10
  store i32 2, i32* %50, align 8
  %51 = load %struct.config*, %struct.config** %7, align 8
  %52 = getelementptr inbounds %struct.config, %struct.config* %51, i32 0, i32 11
  store i32 6, i32* %52, align 4
  %53 = load %struct.config*, %struct.config** %7, align 8
  %54 = getelementptr inbounds %struct.config, %struct.config* %53, i32 0, i32 12
  store i32 242, i32* %54, align 8
  %55 = load %struct.config*, %struct.config** %7, align 8
  %56 = getelementptr inbounds %struct.config, %struct.config* %55, i32 0, i32 13
  store i32 1, i32* %56, align 4
  %57 = load %struct.config*, %struct.config** %7, align 8
  %58 = getelementptr inbounds %struct.config, %struct.config* %57, i32 0, i32 14
  store i32 1, i32* %58, align 8
  %59 = load %struct.config*, %struct.config** %7, align 8
  %60 = getelementptr inbounds %struct.config, %struct.config* %59, i32 0, i32 15
  store i32 0, i32* %60, align 4
  %61 = load %struct.config*, %struct.config** %7, align 8
  %62 = getelementptr inbounds %struct.config, %struct.config* %61, i32 0, i32 16
  store i32 64, i32* %62, align 8
  %63 = load %struct.config*, %struct.config** %7, align 8
  %64 = getelementptr inbounds %struct.config, %struct.config* %63, i32 0, i32 17
  store i32 1, i32* %64, align 4
  %65 = load %struct.config*, %struct.config** %7, align 8
  %66 = getelementptr inbounds %struct.config, %struct.config* %65, i32 0, i32 18
  store i32 7, i32* %66, align 8
  %67 = load %struct.config*, %struct.config** %7, align 8
  %68 = getelementptr inbounds %struct.config, %struct.config* %67, i32 0, i32 19
  store i32 1, i32* %68, align 4
  %69 = load %struct.config*, %struct.config** %7, align 8
  %70 = getelementptr inbounds %struct.config, %struct.config* %69, i32 0, i32 20
  store i32 1, i32* %70, align 8
  %71 = load %struct.config*, %struct.config** %7, align 8
  %72 = getelementptr inbounds %struct.config, %struct.config* %71, i32 0, i32 21
  store i32 31, i32* %72, align 4
  %73 = load %struct.config*, %struct.config** %7, align 8
  %74 = getelementptr inbounds %struct.config, %struct.config* %73, i32 0, i32 22
  store i32 1, i32* %74, align 8
  %75 = load %struct.config*, %struct.config** %7, align 8
  %76 = getelementptr inbounds %struct.config, %struct.config* %75, i32 0, i32 23
  store i32 5, i32* %76, align 4
  %77 = load %struct.nic*, %struct.nic** %4, align 8
  %78 = getelementptr inbounds %struct.nic, %struct.nic* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.config*, %struct.config** %7, align 8
  %81 = getelementptr inbounds %struct.config, %struct.config* %80, i32 0, i32 37
  store i32 %79, i32* %81, align 8
  %82 = load %struct.nic*, %struct.nic** %4, align 8
  %83 = getelementptr inbounds %struct.nic, %struct.nic* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.config*, %struct.config** %7, align 8
  %86 = getelementptr inbounds %struct.config, %struct.config* %85, i32 0, i32 36
  store i64 %84, i64* %86, align 8
  %87 = load %struct.nic*, %struct.nic** %4, align 8
  %88 = getelementptr inbounds %struct.nic, %struct.nic* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %44
  %93 = load %struct.nic*, %struct.nic** %4, align 8
  %94 = getelementptr inbounds %struct.nic, %struct.nic* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.config*, %struct.config** %7, align 8
  %100 = getelementptr inbounds %struct.config, %struct.config* %99, i32 0, i32 24
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %92, %44
  %102 = load %struct.nic*, %struct.nic** %4, align 8
  %103 = getelementptr inbounds %struct.nic, %struct.nic* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @promiscuous, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = load %struct.nic*, %struct.nic** %4, align 8
  %110 = getelementptr inbounds %struct.nic, %struct.nic* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108, %101
  %114 = load %struct.config*, %struct.config** %7, align 8
  %115 = getelementptr inbounds %struct.config, %struct.config* %114, i32 0, i32 25
  store i32 1, i32* %115, align 4
  %116 = load %struct.config*, %struct.config** %7, align 8
  %117 = getelementptr inbounds %struct.config, %struct.config* %116, i32 0, i32 5
  store i32 0, i32* %117, align 4
  %118 = load %struct.config*, %struct.config** %7, align 8
  %119 = getelementptr inbounds %struct.config, %struct.config* %118, i32 0, i32 26
  store i32 1, i32* %119, align 8
  br label %120

120:                                              ; preds = %113, %108
  %121 = load %struct.net_device*, %struct.net_device** %9, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @NETIF_F_RXFCS, align 4
  %125 = and i32 %123, %124
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load %struct.config*, %struct.config** %7, align 8
  %130 = getelementptr inbounds %struct.config, %struct.config* %129, i32 0, i32 27
  store i32 1, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %120
  %132 = load %struct.nic*, %struct.nic** %4, align 8
  %133 = getelementptr inbounds %struct.nic, %struct.nic* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @multicast_all, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load %struct.config*, %struct.config** %7, align 8
  %140 = getelementptr inbounds %struct.config, %struct.config* %139, i32 0, i32 28
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %138, %131
  %142 = load %struct.nic*, %struct.nic** %4, align 8
  %143 = getelementptr inbounds %struct.nic, %struct.nic* %142, i32 0, i32 2
  %144 = load %struct.net_device*, %struct.net_device** %143, align 8
  %145 = call i64 @netif_running(%struct.net_device* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %154, label %147

147:                                              ; preds = %141
  %148 = load %struct.nic*, %struct.nic** %4, align 8
  %149 = getelementptr inbounds %struct.nic, %struct.nic* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @wol_magic, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %147, %141
  %155 = load %struct.config*, %struct.config** %7, align 8
  %156 = getelementptr inbounds %struct.config, %struct.config* %155, i32 0, i32 29
  store i32 1, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %147
  %158 = load %struct.nic*, %struct.nic** %4, align 8
  %159 = getelementptr inbounds %struct.nic, %struct.nic* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @mac_82558_D101_A4, align 8
  %162 = icmp sge i64 %160, %161
  br i1 %162, label %163, label %195

163:                                              ; preds = %157
  %164 = load %struct.config*, %struct.config** %7, align 8
  %165 = getelementptr inbounds %struct.config, %struct.config* %164, i32 0, i32 30
  store i32 1, i32* %165, align 8
  %166 = load %struct.config*, %struct.config** %7, align 8
  %167 = getelementptr inbounds %struct.config, %struct.config* %166, i32 0, i32 31
  store i32 1, i32* %167, align 4
  %168 = load %struct.config*, %struct.config** %7, align 8
  %169 = getelementptr inbounds %struct.config, %struct.config* %168, i32 0, i32 3
  store i32 0, i32* %169, align 4
  %170 = load %struct.config*, %struct.config** %7, align 8
  %171 = getelementptr inbounds %struct.config, %struct.config* %170, i32 0, i32 32
  store i32 1, i32* %171, align 8
  %172 = load %struct.nic*, %struct.nic** %4, align 8
  %173 = getelementptr inbounds %struct.nic, %struct.nic* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @mac_82559_D101M, align 8
  %176 = icmp sge i64 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %163
  %178 = load %struct.config*, %struct.config** %7, align 8
  %179 = getelementptr inbounds %struct.config, %struct.config* %178, i32 0, i32 33
  store i32 1, i32* %179, align 4
  %180 = load %struct.nic*, %struct.nic** %4, align 8
  %181 = getelementptr inbounds %struct.nic, %struct.nic* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @mac_82551_10, align 8
  %184 = icmp sge i64 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %177
  %186 = load %struct.config*, %struct.config** %7, align 8
  %187 = getelementptr inbounds %struct.config, %struct.config* %186, i32 0, i32 0
  store i32 32, i32* %187, align 8
  %188 = load %struct.config*, %struct.config** %7, align 8
  %189 = getelementptr inbounds %struct.config, %struct.config* %188, i32 0, i32 34
  store i32 1, i32* %189, align 8
  br label %190

190:                                              ; preds = %185, %177
  br label %194

191:                                              ; preds = %163
  %192 = load %struct.config*, %struct.config** %7, align 8
  %193 = getelementptr inbounds %struct.config, %struct.config* %192, i32 0, i32 4
  store i32 0, i32* %193, align 8
  br label %194

194:                                              ; preds = %191, %190
  br label %195

195:                                              ; preds = %194, %157
  %196 = load %struct.net_device*, %struct.net_device** %9, align 8
  %197 = getelementptr inbounds %struct.net_device, %struct.net_device* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @NETIF_F_RXALL, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %195
  %203 = load %struct.config*, %struct.config** %7, align 8
  %204 = getelementptr inbounds %struct.config, %struct.config* %203, i32 0, i32 35
  store i32 1, i32* %204, align 4
  %205 = load %struct.config*, %struct.config** %7, align 8
  %206 = getelementptr inbounds %struct.config, %struct.config* %205, i32 0, i32 25
  store i32 1, i32* %206, align 4
  %207 = load %struct.config*, %struct.config** %7, align 8
  %208 = getelementptr inbounds %struct.config, %struct.config* %207, i32 0, i32 5
  store i32 0, i32* %208, align 4
  br label %209

209:                                              ; preds = %202, %195
  %210 = load %struct.nic*, %struct.nic** %4, align 8
  %211 = load i32, i32* @hw, align 4
  %212 = load i32, i32* @KERN_DEBUG, align 4
  %213 = load %struct.nic*, %struct.nic** %4, align 8
  %214 = getelementptr inbounds %struct.nic, %struct.nic* %213, i32 0, i32 2
  %215 = load %struct.net_device*, %struct.net_device** %214, align 8
  %216 = load i32*, i32** %8, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = call i32 @netif_printk(%struct.nic* %210, i32 %211, i32 %212, %struct.net_device* %215, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %217)
  %219 = load %struct.nic*, %struct.nic** %4, align 8
  %220 = load i32, i32* @hw, align 4
  %221 = load i32, i32* @KERN_DEBUG, align 4
  %222 = load %struct.nic*, %struct.nic** %4, align 8
  %223 = getelementptr inbounds %struct.nic, %struct.nic* %222, i32 0, i32 2
  %224 = load %struct.net_device*, %struct.net_device** %223, align 8
  %225 = load i32*, i32** %8, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 8
  %227 = call i32 @netif_printk(%struct.nic* %219, i32 %220, i32 %221, %struct.net_device* %224, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %226)
  %228 = load %struct.nic*, %struct.nic** %4, align 8
  %229 = load i32, i32* @hw, align 4
  %230 = load i32, i32* @KERN_DEBUG, align 4
  %231 = load %struct.nic*, %struct.nic** %4, align 8
  %232 = getelementptr inbounds %struct.nic, %struct.nic* %231, i32 0, i32 2
  %233 = load %struct.net_device*, %struct.net_device** %232, align 8
  %234 = load i32*, i32** %8, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 16
  %236 = call i32 @netif_printk(%struct.nic* %228, i32 %229, i32 %230, %struct.net_device* %233, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %235)
  ret i32 0
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(%struct.config*, i32, i32) #1

declare dso_local i64 @e100_phy_supports_mii(%struct.nic*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_printk(%struct.nic*, i32, i32, %struct.net_device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
