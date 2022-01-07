; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88772a_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88772a_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.asix_data = type { i32* }

@AX_GPIO_RSE = common dso_local global i32 0, align 4
@AX_CMD_SW_PHY_SELECT = common dso_local global i32 0, align 4
@AX_PHYSEL_SSEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Select PHY #1 failed: %d\0A\00", align 1
@AX_SWRESET_IPPD = common dso_local global i32 0, align 4
@AX_SWRESET_IPRL = common dso_local global i32 0, align 4
@AX_SWRESET_CLEAR = common dso_local global i32 0, align 4
@MII_PHYSID1 = common dso_local global i32 0, align 4
@AX_CMD_STATMNGSTS_REG = common dso_local global i32 0, align 4
@AX_CHIPCODE_MASK = common dso_local global i32 0, align 4
@AX_AX88772B_CHIPCODE = common dso_local global i32 0, align 4
@AX_QCTCTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Write BQ setting failed: %d\0A\00", align 1
@AX_AX88772A_CHIPCODE = common dso_local global i32 0, align 4
@AX88772A_PHY14H = common dso_local global i32 0, align 4
@AX88772A_PHY15H = common dso_local global i32 0, align 4
@AX88772A_PHY16H = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"772a_hw_reset: MR20=0x%x MR21=0x%x MR22=0x%x\0A\00", align 1
@AX88772A_PHY14H_DEFAULT = common dso_local global i32 0, align 4
@AX88772A_PHY15H_DEFAULT = common dso_local global i32 0, align 4
@AX88772A_PHY16H_DEFAULT = common dso_local global i32 0, align 4
@AX_CMD_WRITE_IPG0 = common dso_local global i32 0, align 4
@AX88772_IPG0_DEFAULT = common dso_local global i32 0, align 4
@AX88772_IPG1_DEFAULT = common dso_local global i32 0, align 4
@AX88772_IPG2_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Write IPG,IPG1,IPG2 failed: %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@AX_CMD_WRITE_NODE_ID = common dso_local global i32 0, align 4
@AX_DEFAULT_RX_CTL = common dso_local global i32 0, align 4
@AX88772_MEDIUM_DEFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"RX_CTL is 0x%04x after all initializations\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Medium Status is 0x%04x after all initializations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32)* @ax88772a_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88772a_hw_reset(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asix_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 2
  %16 = bitcast i32* %15 to %struct.asix_data*
  store %struct.asix_data* %16, %struct.asix_data** %6, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %18 = load i32, i32* @AX_GPIO_RSE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @asix_write_gpio(%struct.usbnet* %17, i32 %18, i32 5, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %297

24:                                               ; preds = %2
  %25 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 31
  %30 = icmp eq i32 %29, 16
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %8, align 4
  %33 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %34 = load i32, i32* @AX_CMD_SW_PHY_SELECT, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @AX_PHYSEL_SSEN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @asix_write_cmd(%struct.usbnet* %33, i32 %34, i32 %37, i32 0, i32 0, i32* null, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %24
  %43 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_6__* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %297

48:                                               ; preds = %24
  %49 = call i32 @usleep_range(i32 10000, i32 11000)
  %50 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %51 = load i32, i32* @AX_SWRESET_IPPD, align 4
  %52 = load i32, i32* @AX_SWRESET_IPRL, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @asix_sw_reset(%struct.usbnet* %50, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %297

59:                                               ; preds = %48
  %60 = call i32 @usleep_range(i32 10000, i32 11000)
  %61 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %62 = load i32, i32* @AX_SWRESET_IPRL, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @asix_sw_reset(%struct.usbnet* %61, i32 %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %297

68:                                               ; preds = %59
  %69 = call i32 @msleep(i32 160)
  %70 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %71 = load i32, i32* @AX_SWRESET_CLEAR, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @asix_sw_reset(%struct.usbnet* %70, i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %297

77:                                               ; preds = %68
  %78 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %79 = load i32, i32* @AX_SWRESET_IPRL, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @asix_sw_reset(%struct.usbnet* %78, i32 %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %297

85:                                               ; preds = %77
  %86 = call i32 @msleep(i32 200)
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %91 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %94 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MII_PHYSID1, align 4
  %98 = call i32 @asix_mdio_read_nopm(%struct.TYPE_6__* %92, i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %89
  store i32 -1, i32* %7, align 4
  br label %297

101:                                              ; preds = %89, %85
  %102 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %103 = load i32, i32* @AX_CMD_STATMNGSTS_REG, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @asix_read_cmd(%struct.usbnet* %102, i32 %103, i32 0, i32 0, i32 1, i32* %13, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %297

109:                                              ; preds = %101
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @AX_CHIPCODE_MASK, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @AX_AX88772B_CHIPCODE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %117 = load i32, i32* @AX_QCTCTRL, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @asix_write_cmd(%struct.usbnet* %116, i32 %117, i32 32768, i32 32769, i32 0, i32* null, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %124 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_6__* %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %297

128:                                              ; preds = %115
  br label %216

129:                                              ; preds = %109
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @AX_CHIPCODE_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @AX_AX88772A_CHIPCODE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %215

135:                                              ; preds = %129
  %136 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %137 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %140 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @AX88772A_PHY14H, align 4
  %144 = call i32 @asix_mdio_read_nopm(%struct.TYPE_6__* %138, i32 %142, i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %146 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %149 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @AX88772A_PHY15H, align 4
  %153 = call i32 @asix_mdio_read_nopm(%struct.TYPE_6__* %147, i32 %151, i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %155 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %158 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @AX88772A_PHY16H, align 4
  %162 = call i32 @asix_mdio_read_nopm(%struct.TYPE_6__* %156, i32 %160, i32 %161)
  store i32 %162, i32* %12, align 4
  %163 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %164 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_6__* %165, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @AX88772A_PHY14H_DEFAULT, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %135
  %174 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %175 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %178 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @AX88772A_PHY14H, align 4
  %182 = load i32, i32* @AX88772A_PHY14H_DEFAULT, align 4
  %183 = call i32 @asix_mdio_write_nopm(%struct.TYPE_6__* %176, i32 %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %173, %135
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @AX88772A_PHY15H_DEFAULT, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %184
  %189 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %190 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %189, i32 0, i32 0
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %193 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @AX88772A_PHY15H, align 4
  %197 = load i32, i32* @AX88772A_PHY15H_DEFAULT, align 4
  %198 = call i32 @asix_mdio_write_nopm(%struct.TYPE_6__* %191, i32 %195, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %188, %184
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @AX88772A_PHY16H_DEFAULT, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %214

203:                                              ; preds = %199
  %204 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %205 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %204, i32 0, i32 0
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %208 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @AX88772A_PHY16H, align 4
  %212 = load i32, i32* @AX88772A_PHY16H_DEFAULT, align 4
  %213 = call i32 @asix_mdio_write_nopm(%struct.TYPE_6__* %206, i32 %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %203, %199
  br label %215

215:                                              ; preds = %214, %129
  br label %216

216:                                              ; preds = %215, %128
  %217 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %218 = load i32, i32* @AX_CMD_WRITE_IPG0, align 4
  %219 = load i32, i32* @AX88772_IPG0_DEFAULT, align 4
  %220 = load i32, i32* @AX88772_IPG1_DEFAULT, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @AX88772_IPG2_DEFAULT, align 4
  %223 = load i32, i32* %5, align 4
  %224 = call i32 @asix_write_cmd(%struct.usbnet* %217, i32 %218, i32 %221, i32 %222, i32 0, i32* null, i32 %223)
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %216
  %228 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %229 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %228, i32 0, i32 0
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_6__* %230, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %231)
  br label %297

233:                                              ; preds = %216
  %234 = load %struct.asix_data*, %struct.asix_data** %6, align 8
  %235 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %238 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %237, i32 0, i32 0
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @ETH_ALEN, align 4
  %243 = call i32 @memcpy(i32* %236, i32 %241, i32 %242)
  %244 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %245 = load i32, i32* @AX_CMD_WRITE_NODE_ID, align 4
  %246 = load i32, i32* @ETH_ALEN, align 4
  %247 = load %struct.asix_data*, %struct.asix_data** %6, align 8
  %248 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %5, align 4
  %251 = call i32 @asix_write_cmd(%struct.usbnet* %244, i32 %245, i32 0, i32 0, i32 %246, i32* %249, i32 %250)
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* %7, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %233
  br label %297

255:                                              ; preds = %233
  %256 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %257 = load i32, i32* @AX_DEFAULT_RX_CTL, align 4
  %258 = load i32, i32* %5, align 4
  %259 = call i32 @asix_write_rx_ctl(%struct.usbnet* %256, i32 %257, i32 %258)
  store i32 %259, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  br label %297

263:                                              ; preds = %255
  %264 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %265 = load i32, i32* @AX88772_MEDIUM_DEFAULT, align 4
  %266 = load i32, i32* %5, align 4
  %267 = call i32 @asix_write_medium_mode(%struct.usbnet* %264, i32 %265, i32 %266)
  store i32 %267, i32* %7, align 4
  %268 = load i32, i32* %7, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %263
  %271 = load i32, i32* %7, align 4
  store i32 %271, i32* %3, align 4
  br label %299

272:                                              ; preds = %263
  %273 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %274 = load i32, i32* @AX_DEFAULT_RX_CTL, align 4
  %275 = load i32, i32* %5, align 4
  %276 = call i32 @asix_write_rx_ctl(%struct.usbnet* %273, i32 %274, i32 %275)
  store i32 %276, i32* %7, align 4
  %277 = load i32, i32* %7, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %272
  br label %297

280:                                              ; preds = %272
  %281 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %282 = load i32, i32* %5, align 4
  %283 = call i32 @asix_read_rx_ctl(%struct.usbnet* %281, i32 %282)
  store i32 %283, i32* %9, align 4
  %284 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %285 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %284, i32 0, i32 0
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = load i32, i32* %9, align 4
  %288 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_6__* %286, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %287)
  %289 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %290 = load i32, i32* %5, align 4
  %291 = call i32 @asix_read_medium_status(%struct.usbnet* %289, i32 %290)
  store i32 %291, i32* %9, align 4
  %292 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %293 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %292, i32 0, i32 0
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %293, align 8
  %295 = load i32, i32* %9, align 4
  %296 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_6__* %294, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %295)
  store i32 0, i32* %3, align 4
  br label %299

297:                                              ; preds = %279, %262, %254, %227, %122, %108, %100, %84, %76, %67, %58, %42, %23
  %298 = load i32, i32* %7, align 4
  store i32 %298, i32* %3, align 4
  br label %299

299:                                              ; preds = %297, %280, %270
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local i32 @asix_write_gpio(%struct.usbnet*, i32, i32, i32) #1

declare dso_local i32 @asix_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @asix_sw_reset(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @asix_mdio_read_nopm(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @asix_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @asix_mdio_write_nopm(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @asix_write_rx_ctl(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @asix_read_rx_ctl(%struct.usbnet*, i32) #1

declare dso_local i32 @asix_read_medium_status(%struct.usbnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
