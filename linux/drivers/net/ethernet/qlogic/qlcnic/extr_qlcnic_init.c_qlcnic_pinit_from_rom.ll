; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_pinit_from_rom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_pinit_from_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.crb_addr_pair = type { i32, i32 }

@QLCNIC_CMDPEG_STATE = common dso_local global i32 0, align 4
@QLCNIC_RCVPEG_STATE = common dso_local global i32 0, align 4
@QLCNIC_CRB_I2Q = common dso_local global i32 0, align 4
@QLCNIC_CRB_NIU = common dso_local global i32 0, align 4
@QLCNIC_CRB_SRE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QLCNIC_CRB_EPG = common dso_local global i32 0, align 4
@QLCNIC_CRB_TIMER = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_0 = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_1 = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_2 = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_3 = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_4 = common dso_local global i32 0, align 4
@QLCNIC_ROMUSB_GLB_SW_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ERROR Reading crb_init area: val:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"QLOGIC card flash not initialized.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_ADDR_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"CRB init value out of range %x\0A\00", align 1
@QLCNIC_PCI_CRBSPACE = common dso_local global i64 0, align 8
@QLCNIC_CRB_I2C0 = common dso_local global i32 0, align 4
@ROMUSB_GLB = common dso_local global i32 0, align 4
@QLCNIC_CRB_DDR_NET = common dso_local global i32 0, align 4
@PCIE_SETUP_FUNCTION = common dso_local global i32 0, align 4
@PCIE_SETUP_FUNCTION2 = common dso_local global i32 0, align 4
@QLCNIC_CRB_SMB = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_D = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_I = common dso_local global i32 0, align 4
@QLCNIC_PEG_HALT_STATUS1 = common dso_local global i32 0, align 4
@QLCNIC_PEG_HALT_STATUS2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_pinit_from_rom(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.crb_addr_pair*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_dev*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %13, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = load i32, i32* @QLCNIC_CMDPEG_STATE, align 4
  %19 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %17, i32 %18, i32 0)
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = load i32, i32* @QLCNIC_RCVPEG_STATE, align 4
  %22 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %20, i32 %21, i32 0)
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %24 = load i32, i32* @QLCNIC_CRB_I2Q, align 4
  %25 = add nsw i32 %24, 16
  %26 = call i32 @QLCWR32(%struct.qlcnic_adapter* %23, i32 %25, i32 0)
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = load i32, i32* @QLCNIC_CRB_I2Q, align 4
  %29 = add nsw i32 %28, 20
  %30 = call i32 @QLCWR32(%struct.qlcnic_adapter* %27, i32 %29, i32 0)
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %32 = load i32, i32* @QLCNIC_CRB_I2Q, align 4
  %33 = add nsw i32 %32, 24
  %34 = call i32 @QLCWR32(%struct.qlcnic_adapter* %31, i32 %33, i32 0)
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = load i32, i32* @QLCNIC_CRB_I2Q, align 4
  %37 = add nsw i32 %36, 28
  %38 = call i32 @QLCWR32(%struct.qlcnic_adapter* %35, i32 %37, i32 0)
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %40 = load i32, i32* @QLCNIC_CRB_I2Q, align 4
  %41 = add nsw i32 %40, 32
  %42 = call i32 @QLCWR32(%struct.qlcnic_adapter* %39, i32 %41, i32 0)
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %44 = load i32, i32* @QLCNIC_CRB_I2Q, align 4
  %45 = add nsw i32 %44, 36
  %46 = call i32 @QLCWR32(%struct.qlcnic_adapter* %43, i32 %45, i32 0)
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %48 = load i32, i32* @QLCNIC_CRB_NIU, align 4
  %49 = add nsw i32 %48, 64
  %50 = call i32 @QLCWR32(%struct.qlcnic_adapter* %47, i32 %49, i32 255)
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %52 = load i32, i32* @QLCNIC_CRB_NIU, align 4
  %53 = add nsw i32 %52, 458752
  %54 = call i32 @QLCWR32(%struct.qlcnic_adapter* %51, i32 %53, i32 0)
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %56 = load i32, i32* @QLCNIC_CRB_NIU, align 4
  %57 = add nsw i32 %56, 524288
  %58 = call i32 @QLCWR32(%struct.qlcnic_adapter* %55, i32 %57, i32 0)
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %60 = load i32, i32* @QLCNIC_CRB_NIU, align 4
  %61 = add nsw i32 %60, 589824
  %62 = call i32 @QLCWR32(%struct.qlcnic_adapter* %59, i32 %61, i32 0)
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %64 = load i32, i32* @QLCNIC_CRB_NIU, align 4
  %65 = add nsw i32 %64, 655360
  %66 = call i32 @QLCWR32(%struct.qlcnic_adapter* %63, i32 %65, i32 0)
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %68 = load i32, i32* @QLCNIC_CRB_NIU, align 4
  %69 = add nsw i32 %68, 720896
  %70 = call i32 @QLCWR32(%struct.qlcnic_adapter* %67, i32 %69, i32 0)
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %72 = load i32, i32* @QLCNIC_CRB_SRE, align 4
  %73 = add nsw i32 %72, 4096
  %74 = call i32 @QLCRD32(%struct.qlcnic_adapter* %71, i32 %73, i32* %5)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %1
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %410

81:                                               ; preds = %1
  %82 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %83 = load i32, i32* @QLCNIC_CRB_SRE, align 4
  %84 = add nsw i32 %83, 4096
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %85, -2
  %87 = call i32 @QLCWR32(%struct.qlcnic_adapter* %82, i32 %84, i32 %86)
  %88 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %89 = load i32, i32* @QLCNIC_CRB_EPG, align 4
  %90 = add nsw i32 %89, 4864
  %91 = call i32 @QLCWR32(%struct.qlcnic_adapter* %88, i32 %90, i32 1)
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %93 = load i32, i32* @QLCNIC_CRB_TIMER, align 4
  %94 = add nsw i32 %93, 0
  %95 = call i32 @QLCWR32(%struct.qlcnic_adapter* %92, i32 %94, i32 0)
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %97 = load i32, i32* @QLCNIC_CRB_TIMER, align 4
  %98 = add nsw i32 %97, 8
  %99 = call i32 @QLCWR32(%struct.qlcnic_adapter* %96, i32 %98, i32 0)
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %101 = load i32, i32* @QLCNIC_CRB_TIMER, align 4
  %102 = add nsw i32 %101, 16
  %103 = call i32 @QLCWR32(%struct.qlcnic_adapter* %100, i32 %102, i32 0)
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %105 = load i32, i32* @QLCNIC_CRB_TIMER, align 4
  %106 = add nsw i32 %105, 24
  %107 = call i32 @QLCWR32(%struct.qlcnic_adapter* %104, i32 %106, i32 0)
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %109 = load i32, i32* @QLCNIC_CRB_TIMER, align 4
  %110 = add nsw i32 %109, 256
  %111 = call i32 @QLCWR32(%struct.qlcnic_adapter* %108, i32 %110, i32 0)
  %112 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %113 = load i32, i32* @QLCNIC_CRB_TIMER, align 4
  %114 = add nsw i32 %113, 512
  %115 = call i32 @QLCWR32(%struct.qlcnic_adapter* %112, i32 %114, i32 0)
  %116 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %117 = load i32, i32* @QLCNIC_CRB_PEG_NET_0, align 4
  %118 = add nsw i32 %117, 60
  %119 = call i32 @QLCWR32(%struct.qlcnic_adapter* %116, i32 %118, i32 1)
  %120 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %121 = load i32, i32* @QLCNIC_CRB_PEG_NET_1, align 4
  %122 = add nsw i32 %121, 60
  %123 = call i32 @QLCWR32(%struct.qlcnic_adapter* %120, i32 %122, i32 1)
  %124 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %125 = load i32, i32* @QLCNIC_CRB_PEG_NET_2, align 4
  %126 = add nsw i32 %125, 60
  %127 = call i32 @QLCWR32(%struct.qlcnic_adapter* %124, i32 %126, i32 1)
  %128 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %129 = load i32, i32* @QLCNIC_CRB_PEG_NET_3, align 4
  %130 = add nsw i32 %129, 60
  %131 = call i32 @QLCWR32(%struct.qlcnic_adapter* %128, i32 %130, i32 1)
  %132 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %133 = load i32, i32* @QLCNIC_CRB_PEG_NET_4, align 4
  %134 = add nsw i32 %133, 60
  %135 = call i32 @QLCWR32(%struct.qlcnic_adapter* %132, i32 %134, i32 1)
  %136 = call i32 @msleep(i32 20)
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %138 = call i32 @qlcnic_rom_unlock(%struct.qlcnic_adapter* %137)
  %139 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %140 = load i32, i32* @QLCNIC_ROMUSB_GLB_SW_RESET, align 4
  %141 = call i32 @QLCWR32(%struct.qlcnic_adapter* %139, i32 %140, i32 -16777217)
  %142 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %143 = call i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %142, i32 0, i32* %7)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %81
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, -889271554
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %150 = call i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %149, i32 4, i32* %7)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %148, %145, %81
  %153 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %7, align 4
  %156 = call i32 (i32*, i8*, ...) @dev_err(i32* %154, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @EIO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %410

159:                                              ; preds = %148
  %160 = load i32, i32* %7, align 4
  %161 = and i32 %160, 65535
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %7, align 4
  %163 = ashr i32 %162, 16
  %164 = and i32 %163, 65535
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp sge i32 %165, 1024
  br i1 %166, label %167, label %173

167:                                              ; preds = %159
  %168 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %169 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %168, i32 0, i32 0
  %170 = call i32 (i32*, i8*, ...) @dev_err(i32* %169, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i32, i32* @EIO, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %410

173:                                              ; preds = %159
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = call %struct.crb_addr_pair* @kcalloc(i32 %174, i32 8, i32 %175)
  store %struct.crb_addr_pair* %176, %struct.crb_addr_pair** %9, align 8
  %177 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %178 = icmp eq %struct.crb_addr_pair* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %410

182:                                              ; preds = %173
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %224, %182
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %227

187:                                              ; preds = %183
  %188 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %189 = load i32, i32* %6, align 4
  %190 = mul nsw i32 8, %189
  %191 = load i32, i32* %10, align 4
  %192 = mul i32 4, %191
  %193 = add i32 %190, %192
  %194 = call i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %188, i32 %193, i32* %12)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %187
  %197 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %198 = load i32, i32* %6, align 4
  %199 = mul nsw i32 8, %198
  %200 = load i32, i32* %10, align 4
  %201 = mul i32 4, %200
  %202 = add i32 %199, %201
  %203 = add i32 %202, 4
  %204 = call i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %197, i32 %203, i32* %4)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %196, %187
  %207 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %208 = call i32 @kfree(%struct.crb_addr_pair* %207)
  %209 = load i32, i32* @EIO, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %410

211:                                              ; preds = %196
  %212 = load i32, i32* %4, align 4
  %213 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %213, i64 %215
  %217 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %216, i32 0, i32 0
  store i32 %212, i32* %217, align 4
  %218 = load i32, i32* %12, align 4
  %219 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %219, i64 %221
  %223 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %222, i32 0, i32 1
  store i32 %218, i32* %223, align 4
  br label %224

224:                                              ; preds = %211
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %183

227:                                              ; preds = %183
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %345, %227
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %348

232:                                              ; preds = %228
  %233 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %233, i64 %235
  %237 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @qlcnic_decode_crb_addr(i32 %238)
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* @QLCNIC_ADDR_ERROR, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %232
  %244 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %245 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %244, i32 0, i32 0
  %246 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %246, i64 %248
  %250 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (i32*, i8*, ...) @dev_err(i32* %245, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %251)
  br label %345

253:                                              ; preds = %232
  %254 = load i64, i64* @QLCNIC_PCI_CRBSPACE, align 8
  %255 = load i32, i32* %11, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %256, %254
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %11, align 4
  %260 = and i32 %259, 1
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %253
  br label %345

263:                                              ; preds = %253
  %264 = load i32, i32* %11, align 4
  %265 = call i32 @QLCNIC_CAM_RAM(i32 508)
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %263
  br label %345

268:                                              ; preds = %263
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* @QLCNIC_CRB_I2C0, align 4
  %271 = add nsw i32 %270, 28
  %272 = icmp eq i32 %269, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  br label %345

274:                                              ; preds = %268
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* @ROMUSB_GLB, align 4
  %277 = add nsw i32 %276, 188
  %278 = icmp eq i32 %275, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  br label %345

280:                                              ; preds = %274
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* @ROMUSB_GLB, align 4
  %283 = add nsw i32 %282, 168
  %284 = icmp eq i32 %281, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  br label %345

286:                                              ; preds = %280
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* @ROMUSB_GLB, align 4
  %289 = add nsw i32 %288, 200
  %290 = icmp eq i32 %287, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  br label %345

292:                                              ; preds = %286
  %293 = load i32, i32* %11, align 4
  %294 = load i32, i32* @ROMUSB_GLB, align 4
  %295 = add nsw i32 %294, 36
  %296 = icmp eq i32 %293, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %345

298:                                              ; preds = %292
  %299 = load i32, i32* %11, align 4
  %300 = load i32, i32* @ROMUSB_GLB, align 4
  %301 = add nsw i32 %300, 28
  %302 = icmp eq i32 %299, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  br label %345

304:                                              ; preds = %298
  %305 = load i32, i32* %11, align 4
  %306 = and i32 %305, 267386880
  %307 = load i32, i32* @QLCNIC_CRB_DDR_NET, align 4
  %308 = icmp eq i32 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  br label %345

310:                                              ; preds = %304
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* @PCIE_SETUP_FUNCTION, align 4
  %313 = call i32 @QLCNIC_PCIE_REG(i32 %312)
  %314 = icmp eq i32 %311, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %310
  br label %345

316:                                              ; preds = %310
  %317 = load i32, i32* %11, align 4
  %318 = load i32, i32* @PCIE_SETUP_FUNCTION2, align 4
  %319 = call i32 @QLCNIC_PCIE_REG(i32 %318)
  %320 = icmp eq i32 %317, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  br label %345

322:                                              ; preds = %316
  %323 = load i32, i32* %11, align 4
  %324 = and i32 %323, 267386880
  %325 = load i32, i32* @QLCNIC_CRB_SMB, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %322
  br label %345

328:                                              ; preds = %322
  store i32 1, i32* %8, align 4
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* @QLCNIC_ROMUSB_GLB_SW_RESET, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %328
  store i32 1000, i32* %8, align 4
  br label %333

333:                                              ; preds = %332, %328
  %334 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %335 = load i32, i32* %11, align 4
  %336 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %336, i64 %338
  %340 = getelementptr inbounds %struct.crb_addr_pair, %struct.crb_addr_pair* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @QLCWR32(%struct.qlcnic_adapter* %334, i32 %335, i32 %341)
  %343 = load i32, i32* %8, align 4
  %344 = call i32 @msleep(i32 %343)
  br label %345

345:                                              ; preds = %333, %327, %321, %315, %309, %303, %297, %291, %285, %279, %273, %267, %262, %243
  %346 = load i32, i32* %6, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %6, align 4
  br label %228

348:                                              ; preds = %228
  %349 = load %struct.crb_addr_pair*, %struct.crb_addr_pair** %9, align 8
  %350 = call i32 @kfree(%struct.crb_addr_pair* %349)
  %351 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %352 = load i32, i32* @QLCNIC_CRB_PEG_NET_D, align 4
  %353 = add nsw i32 %352, 236
  %354 = call i32 @QLCWR32(%struct.qlcnic_adapter* %351, i32 %353, i32 30)
  %355 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %356 = load i32, i32* @QLCNIC_CRB_PEG_NET_D, align 4
  %357 = add nsw i32 %356, 76
  %358 = call i32 @QLCWR32(%struct.qlcnic_adapter* %355, i32 %357, i32 8)
  %359 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %360 = load i32, i32* @QLCNIC_CRB_PEG_NET_I, align 4
  %361 = add nsw i32 %360, 76
  %362 = call i32 @QLCWR32(%struct.qlcnic_adapter* %359, i32 %361, i32 8)
  %363 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %364 = load i32, i32* @QLCNIC_CRB_PEG_NET_0, align 4
  %365 = add nsw i32 %364, 8
  %366 = call i32 @QLCWR32(%struct.qlcnic_adapter* %363, i32 %365, i32 0)
  %367 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %368 = load i32, i32* @QLCNIC_CRB_PEG_NET_0, align 4
  %369 = add nsw i32 %368, 12
  %370 = call i32 @QLCWR32(%struct.qlcnic_adapter* %367, i32 %369, i32 0)
  %371 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %372 = load i32, i32* @QLCNIC_CRB_PEG_NET_1, align 4
  %373 = add nsw i32 %372, 8
  %374 = call i32 @QLCWR32(%struct.qlcnic_adapter* %371, i32 %373, i32 0)
  %375 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %376 = load i32, i32* @QLCNIC_CRB_PEG_NET_1, align 4
  %377 = add nsw i32 %376, 12
  %378 = call i32 @QLCWR32(%struct.qlcnic_adapter* %375, i32 %377, i32 0)
  %379 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %380 = load i32, i32* @QLCNIC_CRB_PEG_NET_2, align 4
  %381 = add nsw i32 %380, 8
  %382 = call i32 @QLCWR32(%struct.qlcnic_adapter* %379, i32 %381, i32 0)
  %383 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %384 = load i32, i32* @QLCNIC_CRB_PEG_NET_2, align 4
  %385 = add nsw i32 %384, 12
  %386 = call i32 @QLCWR32(%struct.qlcnic_adapter* %383, i32 %385, i32 0)
  %387 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %388 = load i32, i32* @QLCNIC_CRB_PEG_NET_3, align 4
  %389 = add nsw i32 %388, 8
  %390 = call i32 @QLCWR32(%struct.qlcnic_adapter* %387, i32 %389, i32 0)
  %391 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %392 = load i32, i32* @QLCNIC_CRB_PEG_NET_3, align 4
  %393 = add nsw i32 %392, 12
  %394 = call i32 @QLCWR32(%struct.qlcnic_adapter* %391, i32 %393, i32 0)
  %395 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %396 = load i32, i32* @QLCNIC_CRB_PEG_NET_4, align 4
  %397 = add nsw i32 %396, 8
  %398 = call i32 @QLCWR32(%struct.qlcnic_adapter* %395, i32 %397, i32 0)
  %399 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %400 = load i32, i32* @QLCNIC_CRB_PEG_NET_4, align 4
  %401 = add nsw i32 %400, 12
  %402 = call i32 @QLCWR32(%struct.qlcnic_adapter* %399, i32 %401, i32 0)
  %403 = call i32 @usleep_range(i32 1000, i32 1500)
  %404 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %405 = load i32, i32* @QLCNIC_PEG_HALT_STATUS1, align 4
  %406 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %404, i32 %405, i32 0)
  %407 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %408 = load i32, i32* @QLCNIC_PEG_HALT_STATUS2, align 4
  %409 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %407, i32 %408, i32 0)
  store i32 0, i32* %2, align 4
  br label %410

410:                                              ; preds = %348, %206, %179, %167, %152, %79
  %411 = load i32, i32* %2, align 4
  ret i32 %411
}

declare dso_local i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qlcnic_rom_unlock(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_rom_fast_read(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.crb_addr_pair* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.crb_addr_pair*) #1

declare dso_local i32 @qlcnic_decode_crb_addr(i32) #1

declare dso_local i32 @QLCNIC_CAM_RAM(i32) #1

declare dso_local i32 @QLCNIC_PCIE_REG(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
