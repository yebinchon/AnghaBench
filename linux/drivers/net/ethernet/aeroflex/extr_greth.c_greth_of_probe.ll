; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64* }
%struct.platform_device = type { i32*, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.net_device = type { i32*, i32, i32, i32*, %struct.TYPE_12__*, i32 }
%struct.greth_private = type { i32, i32, i32, i32, i32, %struct.greth_regs*, i32, i32, i8*, %struct.TYPE_13__*, i32, i8*, i32, i32, i32, i64, %struct.net_device* }
%struct.greth_regs = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@greth_debug = common dso_local global i64 0, align 8
@GRETH_DEF_MSG_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"grlib-greth regs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ioremap failure.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"resetting controller.\0A\00", align 1
@GRETH_RESET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"timeout when waiting for reset.\0A\00", align 1
@GRETH_CTRL_DISDUPLEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to register MDIO bus\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@macaddr = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"no valid ethernet address, aborting.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@greth_start_xmit_gbit = common dso_local global i32 0, align 4
@greth_netdev_ops = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@greth_set_multicast_list = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@greth_ethtool_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"netdevice registration failed.\0A\00", align 1
@greth_poll = common dso_local global i32 0, align 4
@idprom = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @greth_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greth_of_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.greth_private*, align 8
  %6 = alloca %struct.greth_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = call %struct.net_device* @alloc_etherdev(i32 104)
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = icmp eq %struct.net_device* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %480

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call %struct.greth_private* @netdev_priv(%struct.net_device* %19)
  store %struct.greth_private* %20, %struct.greth_private** %5, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %23 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %22, i32 0, i32 16
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 1
  %26 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %27 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %26, i32 0, i32 9
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %27, align 8
  %28 = load i64, i64* @greth_debug, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i64, i64* @greth_debug, align 8
  %32 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %33 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %32, i32 0, i32 15
  store i64 %31, i64* %33, align 8
  br label %38

34:                                               ; preds = %18
  %35 = load i64, i64* @GRETH_DEF_MSG_ENABLE, align 8
  %36 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %37 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %36, i32 0, i32 15
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %40 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %39, i32 0, i32 14
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = call i32 @resource_size(i32* %49)
  %51 = call %struct.greth_regs* @of_ioremap(i32* %45, i32 0, i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %53 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %52, i32 0, i32 5
  store %struct.greth_regs* %51, %struct.greth_regs** %53, align 8
  %54 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %55 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %54, i32 0, i32 5
  %56 = load %struct.greth_regs*, %struct.greth_regs** %55, align 8
  %57 = icmp eq %struct.greth_regs* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %38
  %59 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %60 = call i64 @netif_msg_probe(%struct.greth_private* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %64 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %63, i32 0, i32 9
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = call i32 @dev_err(%struct.TYPE_13__* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %476

70:                                               ; preds = %38
  %71 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %72 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %71, i32 0, i32 5
  %73 = load %struct.greth_regs*, %struct.greth_regs** %72, align 8
  store %struct.greth_regs* %73, %struct.greth_regs** %6, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %81 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %80, i32 0, i32 13
  store i32 %79, i32* %81, align 4
  %82 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %83 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %82, i32 0, i32 9
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = call i32 @dev_set_drvdata(%struct.TYPE_13__* %84, %struct.net_device* %85)
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %89 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %88, i32 0, i32 9
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = call i32 @SET_NETDEV_DEV(%struct.net_device* %87, %struct.TYPE_13__* %90)
  %92 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %93 = call i64 @netif_msg_probe(%struct.greth_private* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %70
  %96 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %97 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %96, i32 0, i32 9
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = call i32 @dev_dbg(%struct.TYPE_13__* %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %95, %70
  %101 = load %struct.greth_regs*, %struct.greth_regs** %6, align 8
  %102 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @GRETH_RESET, align 4
  %105 = call i32 @GRETH_REGSAVE(i32 %103, i32 %104)
  %106 = load i32, i32* @jiffies, align 4
  %107 = load i32, i32* @HZ, align 4
  %108 = sdiv i32 %107, 100
  %109 = add nsw i32 %106, %108
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %10, align 8
  br label %111

111:                                              ; preds = %136, %100
  %112 = load %struct.greth_regs*, %struct.greth_regs** %6, align 8
  %113 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @GRETH_REGLOAD(i32 %114)
  %116 = load i32, i32* @GRETH_RESET, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %111
  %120 = load i32, i32* @jiffies, align 4
  %121 = load i64, i64* %10, align 8
  %122 = call i64 @time_after(i32 %120, i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %8, align 4
  %127 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %128 = call i64 @netif_msg_probe(%struct.greth_private* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %132 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %131, i32 0, i32 9
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = call i32 @dev_err(%struct.TYPE_13__* %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %130, %124
  br label %462

136:                                              ; preds = %119
  br label %111

137:                                              ; preds = %111
  %138 = load %struct.greth_regs*, %struct.greth_regs** %6, align 8
  %139 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @GRETH_REGLOAD(i32 %140)
  %142 = ashr i32 %141, 11
  %143 = and i32 %142, 31
  %144 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %145 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.greth_regs*, %struct.greth_regs** %6, align 8
  %147 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @GRETH_REGLOAD(i32 %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = ashr i32 %150, 27
  %152 = and i32 %151, 1
  %153 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %154 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %9, align 4
  %156 = ashr i32 %155, 25
  %157 = and i32 %156, 1
  %158 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %159 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %9, align 4
  %161 = ashr i32 %160, 31
  %162 = and i32 %161, 1
  %163 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %164 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %166 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %137
  %170 = load %struct.greth_regs*, %struct.greth_regs** %6, align 8
  %171 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @GRETH_CTRL_DISDUPLEX, align 4
  %174 = call i32 @GRETH_REGORIN(i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %169, %137
  %176 = load i32, i32* %9, align 4
  %177 = ashr i32 %176, 26
  %178 = and i32 %177, 1
  %179 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %180 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  %181 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %182 = call i32 @greth_mdio_init(%struct.greth_private* %181)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %175
  %186 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %187 = call i64 @netif_msg_probe(%struct.greth_private* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %191 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %190, i32 0, i32 9
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = call i32 @dev_err(%struct.TYPE_13__* %192, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %194

194:                                              ; preds = %189, %185
  br label %462

195:                                              ; preds = %175
  %196 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %197 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %196, i32 0, i32 9
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %200 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %199, i32 0, i32 7
  %201 = load i32, i32* @GFP_KERNEL, align 4
  %202 = call i8* @dma_alloc_coherent(%struct.TYPE_13__* %198, i32 1024, i32* %200, i32 %201)
  %203 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %204 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %203, i32 0, i32 8
  store i8* %202, i8** %204, align 8
  %205 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %206 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %205, i32 0, i32 8
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %195
  %210 = load i32, i32* @ENOMEM, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %8, align 4
  br label %457

212:                                              ; preds = %195
  %213 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %214 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %213, i32 0, i32 9
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %217 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %216, i32 0, i32 10
  %218 = load i32, i32* @GFP_KERNEL, align 4
  %219 = call i8* @dma_alloc_coherent(%struct.TYPE_13__* %215, i32 1024, i32* %217, i32 %218)
  %220 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %221 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %220, i32 0, i32 11
  store i8* %219, i8** %221, align 8
  %222 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %223 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %222, i32 0, i32 11
  %224 = load i8*, i8** %223, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %212
  %227 = load i32, i32* @ENOMEM, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %8, align 4
  br label %446

229:                                              ; preds = %212
  store i32 0, i32* %7, align 4
  br label %230

230:                                              ; preds = %242, %229
  %231 = load i32, i32* %7, align 4
  %232 = icmp slt i32 %231, 6
  br i1 %232, label %233, label %245

233:                                              ; preds = %230
  %234 = load i32*, i32** @macaddr, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %233
  br label %245

241:                                              ; preds = %233
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %7, align 4
  br label %230

245:                                              ; preds = %240, %230
  %246 = load i32, i32* %7, align 4
  %247 = icmp eq i32 %246, 6
  br i1 %247, label %248, label %278

248:                                              ; preds = %245
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i64* @of_get_mac_address(i32 %252)
  store i64* %253, i64** %11, align 8
  %254 = load i64*, i64** %11, align 8
  %255 = call i32 @IS_ERR(i64* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %276, label %257

257:                                              ; preds = %248
  store i32 0, i32* %7, align 4
  br label %258

258:                                              ; preds = %272, %257
  %259 = load i32, i32* %7, align 4
  %260 = icmp slt i32 %259, 6
  br i1 %260, label %261, label %275

261:                                              ; preds = %258
  %262 = load i64*, i64** %11, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = trunc i64 %266 to i32
  %268 = load i32*, i32** @macaddr, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 %267, i32* %271, align 4
  br label %272

272:                                              ; preds = %261
  %273 = load i32, i32* %7, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %7, align 4
  br label %258

275:                                              ; preds = %258
  br label %277

276:                                              ; preds = %248
  br label %277

277:                                              ; preds = %276, %275
  br label %278

278:                                              ; preds = %277, %245
  store i32 0, i32* %7, align 4
  br label %279

279:                                              ; preds = %294, %278
  %280 = load i32, i32* %7, align 4
  %281 = icmp slt i32 %280, 6
  br i1 %281, label %282, label %297

282:                                              ; preds = %279
  %283 = load i32*, i32** @macaddr, align 8
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.net_device*, %struct.net_device** %4, align 8
  %289 = getelementptr inbounds %struct.net_device, %struct.net_device* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %7, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  store i32 %287, i32* %293, align 4
  br label %294

294:                                              ; preds = %282
  %295 = load i32, i32* %7, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %7, align 4
  br label %279

297:                                              ; preds = %279
  %298 = load i32*, i32** @macaddr, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 5
  %300 = load i32, i32* %299, align 4
  %301 = add i32 %300, 1
  store i32 %301, i32* %299, align 4
  %302 = load %struct.net_device*, %struct.net_device** %4, align 8
  %303 = getelementptr inbounds %struct.net_device, %struct.net_device* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = call i32 @is_valid_ether_addr(i32* %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %320, label %308

308:                                              ; preds = %297
  %309 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %310 = call i64 @netif_msg_probe(%struct.greth_private* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %314 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %313, i32 0, i32 9
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %314, align 8
  %316 = call i32 @dev_err(%struct.TYPE_13__* %315, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %317

317:                                              ; preds = %312, %308
  %318 = load i32, i32* @EINVAL, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %8, align 4
  br label %435

320:                                              ; preds = %297
  %321 = load %struct.greth_regs*, %struct.greth_regs** %6, align 8
  %322 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.net_device*, %struct.net_device** %4, align 8
  %325 = getelementptr inbounds %struct.net_device, %struct.net_device* %324, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  %328 = load i32, i32* %327, align 4
  %329 = shl i32 %328, 8
  %330 = load %struct.net_device*, %struct.net_device** %4, align 8
  %331 = getelementptr inbounds %struct.net_device, %struct.net_device* %330, i32 0, i32 0
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = or i32 %329, %334
  %336 = call i32 @GRETH_REGSAVE(i32 %323, i32 %335)
  %337 = load %struct.greth_regs*, %struct.greth_regs** %6, align 8
  %338 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.net_device*, %struct.net_device** %4, align 8
  %341 = getelementptr inbounds %struct.net_device, %struct.net_device* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 2
  %344 = load i32, i32* %343, align 4
  %345 = shl i32 %344, 24
  %346 = load %struct.net_device*, %struct.net_device** %4, align 8
  %347 = getelementptr inbounds %struct.net_device, %struct.net_device* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 3
  %350 = load i32, i32* %349, align 4
  %351 = shl i32 %350, 16
  %352 = or i32 %345, %351
  %353 = load %struct.net_device*, %struct.net_device** %4, align 8
  %354 = getelementptr inbounds %struct.net_device, %struct.net_device* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 4
  %357 = load i32, i32* %356, align 4
  %358 = shl i32 %357, 8
  %359 = or i32 %352, %358
  %360 = load %struct.net_device*, %struct.net_device** %4, align 8
  %361 = getelementptr inbounds %struct.net_device, %struct.net_device* %360, i32 0, i32 0
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 5
  %364 = load i32, i32* %363, align 4
  %365 = or i32 %359, %364
  %366 = call i32 @GRETH_REGSAVE(i32 %339, i32 %365)
  %367 = load %struct.greth_regs*, %struct.greth_regs** %6, align 8
  %368 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @GRETH_REGSAVE(i32 %369, i32 255)
  %371 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %372 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %391

375:                                              ; preds = %320
  %376 = load i32, i32* @NETIF_F_SG, align 4
  %377 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %378 = or i32 %376, %377
  %379 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %380 = or i32 %378, %379
  %381 = load %struct.net_device*, %struct.net_device** %4, align 8
  %382 = getelementptr inbounds %struct.net_device, %struct.net_device* %381, i32 0, i32 1
  store i32 %380, i32* %382, align 8
  %383 = load %struct.net_device*, %struct.net_device** %4, align 8
  %384 = getelementptr inbounds %struct.net_device, %struct.net_device* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %387 = or i32 %385, %386
  %388 = load %struct.net_device*, %struct.net_device** %4, align 8
  %389 = getelementptr inbounds %struct.net_device, %struct.net_device* %388, i32 0, i32 2
  store i32 %387, i32* %389, align 4
  %390 = load i32, i32* @greth_start_xmit_gbit, align 4
  store i32 %390, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @greth_netdev_ops, i32 0, i32 1), align 4
  br label %391

391:                                              ; preds = %375, %320
  %392 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %393 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %391
  %397 = load i32, i32* @greth_set_multicast_list, align 4
  store i32 %397, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @greth_netdev_ops, i32 0, i32 0), align 4
  %398 = load i32, i32* @IFF_MULTICAST, align 4
  %399 = load %struct.net_device*, %struct.net_device** %4, align 8
  %400 = getelementptr inbounds %struct.net_device, %struct.net_device* %399, i32 0, i32 5
  %401 = load i32, i32* %400, align 8
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 8
  br label %410

403:                                              ; preds = %391
  %404 = load i32, i32* @IFF_MULTICAST, align 4
  %405 = xor i32 %404, -1
  %406 = load %struct.net_device*, %struct.net_device** %4, align 8
  %407 = getelementptr inbounds %struct.net_device, %struct.net_device* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 8
  %409 = and i32 %408, %405
  store i32 %409, i32* %407, align 8
  br label %410

410:                                              ; preds = %403, %396
  %411 = load %struct.net_device*, %struct.net_device** %4, align 8
  %412 = getelementptr inbounds %struct.net_device, %struct.net_device* %411, i32 0, i32 4
  store %struct.TYPE_12__* @greth_netdev_ops, %struct.TYPE_12__** %412, align 8
  %413 = load %struct.net_device*, %struct.net_device** %4, align 8
  %414 = getelementptr inbounds %struct.net_device, %struct.net_device* %413, i32 0, i32 3
  store i32* @greth_ethtool_ops, i32** %414, align 8
  %415 = load %struct.net_device*, %struct.net_device** %4, align 8
  %416 = call i32 @register_netdev(%struct.net_device* %415)
  store i32 %416, i32* %8, align 4
  %417 = load i32, i32* %8, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %429

419:                                              ; preds = %410
  %420 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %421 = call i64 @netif_msg_probe(%struct.greth_private* %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %419
  %424 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %425 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %424, i32 0, i32 9
  %426 = load %struct.TYPE_13__*, %struct.TYPE_13__** %425, align 8
  %427 = call i32 @dev_err(%struct.TYPE_13__* %426, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %428

428:                                              ; preds = %423, %419
  br label %435

429:                                              ; preds = %410
  %430 = load %struct.net_device*, %struct.net_device** %4, align 8
  %431 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %432 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %431, i32 0, i32 12
  %433 = load i32, i32* @greth_poll, align 4
  %434 = call i32 @netif_napi_add(%struct.net_device* %430, i32* %432, i32 %433, i32 64)
  store i32 0, i32* %2, align 4
  br label %480

435:                                              ; preds = %428, %317
  %436 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %437 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %436, i32 0, i32 9
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %437, align 8
  %439 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %440 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %439, i32 0, i32 11
  %441 = load i8*, i8** %440, align 8
  %442 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %443 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %442, i32 0, i32 10
  %444 = load i32, i32* %443, align 8
  %445 = call i32 @dma_free_coherent(%struct.TYPE_13__* %438, i32 1024, i8* %441, i32 %444)
  br label %446

446:                                              ; preds = %435, %226
  %447 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %448 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %447, i32 0, i32 9
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** %448, align 8
  %450 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %451 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %450, i32 0, i32 8
  %452 = load i8*, i8** %451, align 8
  %453 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %454 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %453, i32 0, i32 7
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @dma_free_coherent(%struct.TYPE_13__* %449, i32 1024, i8* %452, i32 %455)
  br label %457

457:                                              ; preds = %446, %209
  %458 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %459 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %458, i32 0, i32 6
  %460 = load i32, i32* %459, align 8
  %461 = call i32 @mdiobus_unregister(i32 %460)
  br label %462

462:                                              ; preds = %457, %194, %135
  %463 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %464 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %463, i32 0, i32 0
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 0
  %467 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %468 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %467, i32 0, i32 5
  %469 = load %struct.greth_regs*, %struct.greth_regs** %468, align 8
  %470 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %471 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %470, i32 0, i32 0
  %472 = load i32*, i32** %471, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 0
  %474 = call i32 @resource_size(i32* %473)
  %475 = call i32 @of_iounmap(i32* %466, %struct.greth_regs* %469, i32 %474)
  br label %476

476:                                              ; preds = %462, %67
  %477 = load %struct.net_device*, %struct.net_device** %4, align 8
  %478 = call i32 @free_netdev(%struct.net_device* %477)
  %479 = load i32, i32* %8, align 4
  store i32 %479, i32* %2, align 4
  br label %480

480:                                              ; preds = %476, %429, %15
  %481 = load i32, i32* %2, align 4
  ret i32 %481
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.greth_regs* @of_ioremap(i32*, i32, i32, i8*) #1

declare dso_local i32 @resource_size(i32*) #1

declare dso_local i64 @netif_msg_probe(%struct.greth_private*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_13__*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_13__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @GRETH_REGSAVE(i32, i32) #1

declare dso_local i32 @GRETH_REGLOAD(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @GRETH_REGORIN(i32, i32) #1

declare dso_local i32 @greth_mdio_init(%struct.greth_private*) #1

declare dso_local i8* @dma_alloc_coherent(%struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i64* @of_get_mac_address(i32) #1

declare dso_local i32 @IS_ERR(i64*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.TYPE_13__*, i32, i8*, i32) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @of_iounmap(i32*, %struct.greth_regs*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
