; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_check_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_check_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i64, i64, i32, i32, i32, i64, %struct.TYPE_4__, i32, i32, i32, i8*, %struct.pci_dev*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_3__ = type { i32* }

@NETXEN_MAX_SHORT_NAME = common dso_local global i32 0, align 4
@NX_FW_SERIAL_NUM_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error reading board info\0A\00", align 1
@NETXEN_FW_VERSION_MAJOR = common dso_local global i32 0, align 4
@NETXEN_FW_VERSION_MINOR = common dso_local global i32 0, align 4
@NETXEN_FW_VERSION_SUB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to setup minidump rcode = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: %s Board S/N %s  Chip rev 0x%x\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"firmware version %d.%d.%d unsupported\0A\00", align 1
@NETXEN_SRE_MISC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Driver v%s, firmware v%d.%d.%d [%s]\0A\00", align 1
@NETXEN_NIC_LINUX_VERSIONID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"cut-through\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@CRB_FW_CAPABILITIES_1 = common dso_local global i32 0, align 4
@NETXEN_NIC_XGBE = common dso_local global i64 0, align 8
@DEFAULT_RCV_DESCRIPTORS_10G = common dso_local global i32 0, align 4
@MAX_JUMBO_RCV_DESCRIPTORS_10G = common dso_local global i32 0, align 4
@NETXEN_NIC_GBE = common dso_local global i64 0, align 8
@DEFAULT_RCV_DESCRIPTORS_1G = common dso_local global i32 0, align 4
@MAX_JUMBO_RCV_DESCRIPTORS_1G = common dso_local global i32 0, align 4
@use_msi_x = common dso_local global i32 0, align 4
@NX_FW_VERSION_OFFSET = common dso_local global i32 0, align 4
@MAX_CMD_DESCRIPTORS = common dso_local global i32 0, align 4
@MAX_LRO_RCV_DESCRIPTORS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @netxen_check_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_check_options(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.pci_dev*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %18 = load i32, i32* @NETXEN_MAX_SHORT_NAME, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %22, i32 0, i32 12
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %15, align 8
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = bitcast [32 x i8]* %9 to i32*
  store i32* %27, i32** %14, align 8
  %28 = load i32, i32* @NX_FW_SERIAL_NUM_OFFSET, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %55, %1
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @netxen_rom_fast_read(%struct.netxen_adapter* %33, i32 %34, i32* %12)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  store i32 1, i32* %16, align 4
  br label %316

44:                                               ; preds = %32
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @cpu_to_le32(i32 %45)
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %29

58:                                               ; preds = %29
  %59 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %60 = load i32, i32* @NETXEN_FW_VERSION_MAJOR, align 4
  %61 = call i8* @NXRD32(%struct.netxen_adapter* %59, i32 %60)
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %3, align 8
  %63 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %64 = load i32, i32* @NETXEN_FW_VERSION_MINOR, align 4
  %65 = call i8* @NXRD32(%struct.netxen_adapter* %63, i32 %64)
  %66 = ptrtoint i8* %65 to i64
  store i64 %66, i64* %4, align 8
  %67 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %68 = load i32, i32* @NETXEN_FW_VERSION_SUB, align 4
  %69 = call i8* @NXRD32(%struct.netxen_adapter* %67, i32 %68)
  %70 = ptrtoint i8* %69 to i64
  store i64 %70, i64* %5, align 8
  %71 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %3, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* %4, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i64, i64* %5, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i64 @NETXEN_VERSION_CODE(i32 %75, i32 %77, i32 %79)
  %81 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @NX_IS_REVISION_P3(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %58
  %90 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %90, i32 0, i32 13
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %95, %89
  %102 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %102, i32 0, i32 13
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @kfree(i32* %105)
  %107 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %107, i32 0, i32 13
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  %110 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %111 = call i32 @netxen_setup_minidump(%struct.netxen_adapter* %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %101
  %115 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %116 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %115, i32 0, i32 12
  %117 = load %struct.pci_dev*, %struct.pci_dev** %116, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = load i32, i32* %13, align 4
  %120 = call i32 (i32*, i8*, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %114, %101
  br label %122

122:                                              ; preds = %121, %95
  br label %123

123:                                              ; preds = %122, %58
  %124 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %125 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %123
  %129 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %130 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @netxen_nic_get_brd_name_by_type(i32 %132, i8* %21)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %137 = call i32 @strcpy(i8* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %128
  %139 = load i32, i32* @THIS_MODULE, align 4
  %140 = call i32 @module_name(i32 %139)
  %141 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %142 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %143 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %140, i8* %21, i8* %141, i32 %145)
  br label %147

147:                                              ; preds = %138, %123
  %148 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %149 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @NETXEN_VERSION_CODE(i32 3, i32 4, i32 216)
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %147
  %154 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %155 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %157 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %156, i32 0, i32 0
  %158 = load i64, i64* %3, align 8
  %159 = load i64, i64* %4, align 8
  %160 = load i64, i64* %5, align 8
  %161 = call i32 @dev_warn(i32* %157, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %158, i64 %159, i64 %160)
  store i32 1, i32* %16, align 4
  br label %316

162:                                              ; preds = %147
  %163 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %164 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @NX_IS_REVISION_P3(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %162
  %170 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %171 = load i32, i32* @NETXEN_SRE_MISC, align 4
  %172 = call i8* @NXRD32(%struct.netxen_adapter* %170, i32 %171)
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = and i32 %174, 32768
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 1, i32 0
  %179 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %180 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %179, i32 0, i32 7
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  br label %182

182:                                              ; preds = %169, %162
  %183 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %184 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %183, i32 0, i32 0
  %185 = load i32, i32* @NETXEN_NIC_LINUX_VERSIONID, align 4
  %186 = load i64, i64* %3, align 8
  %187 = load i64, i64* %4, align 8
  %188 = load i64, i64* %5, align 8
  %189 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %190 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %189, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %196 = call i32 @dev_info(i32* %184, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %185, i64 %186, i64 %187, i64 %188, i8* %195)
  %197 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %198 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @NETXEN_VERSION_CODE(i32 4, i32 0, i32 222)
  %201 = icmp sge i64 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %182
  %203 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %204 = load i32, i32* @CRB_FW_CAPABILITIES_1, align 4
  %205 = call i8* @NXRD32(%struct.netxen_adapter* %203, i32 %204)
  %206 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %207 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %206, i32 0, i32 11
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %202, %182
  %209 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %210 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %209, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @NETXEN_NIC_XGBE, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %208
  %216 = load i32, i32* @DEFAULT_RCV_DESCRIPTORS_10G, align 4
  %217 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %218 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %217, i32 0, i32 10
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* @MAX_JUMBO_RCV_DESCRIPTORS_10G, align 4
  %220 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %221 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %220, i32 0, i32 9
  store i32 %219, i32* %221, align 4
  br label %237

222:                                              ; preds = %208
  %223 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %224 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %223, i32 0, i32 7
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @NETXEN_NIC_GBE, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %222
  %230 = load i32, i32* @DEFAULT_RCV_DESCRIPTORS_1G, align 4
  %231 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %232 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %231, i32 0, i32 10
  store i32 %230, i32* %232, align 8
  %233 = load i32, i32* @MAX_JUMBO_RCV_DESCRIPTORS_1G, align 4
  %234 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %235 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %234, i32 0, i32 9
  store i32 %233, i32* %235, align 4
  br label %236

236:                                              ; preds = %229, %222
  br label %237

237:                                              ; preds = %236, %215
  %238 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %239 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %238, i32 0, i32 3
  store i32 0, i32* %239, align 8
  %240 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %241 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %240, i32 0, i32 7
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = call i64 @NX_IS_REVISION_P3(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %237
  %247 = load i32, i32* @use_msi_x, align 4
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  %250 = xor i1 %249, true
  %251 = zext i1 %250 to i32
  %252 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %253 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* @use_msi_x, align 4
  %255 = icmp ne i32 %254, 0
  %256 = xor i1 %255, true
  %257 = xor i1 %256, true
  %258 = zext i1 %257 to i32
  %259 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %260 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %259, i32 0, i32 4
  store i32 %258, i32* %260, align 4
  br label %294

261:                                              ; preds = %237
  store i64 0, i64* %17, align 8
  %262 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %263 = load i32, i32* @NX_FW_VERSION_OFFSET, align 4
  %264 = bitcast i64* %17 to i32*
  %265 = call i32 @netxen_rom_fast_read(%struct.netxen_adapter* %262, i32 %263, i32* %264)
  %266 = load i64, i64* %17, align 8
  %267 = call i64 @NETXEN_DECODE_VERSION(i64 %266)
  store i64 %267, i64* %17, align 8
  %268 = load i64, i64* %17, align 8
  %269 = call i64 @NETXEN_VERSION_CODE(i32 3, i32 4, i32 336)
  %270 = icmp sge i64 %268, %269
  br i1 %270, label %271, label %293

271:                                              ; preds = %261
  %272 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %273 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %272, i32 0, i32 7
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  switch i32 %275, label %291 [
    i32 129, label %276
    i32 128, label %276
  ]

276:                                              ; preds = %271, %271
  %277 = load i32, i32* @use_msi_x, align 4
  %278 = icmp ne i32 %277, 0
  %279 = xor i1 %278, true
  %280 = xor i1 %279, true
  %281 = zext i1 %280 to i32
  %282 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %283 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 8
  %284 = load i32, i32* @use_msi_x, align 4
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  %287 = xor i1 %286, true
  %288 = zext i1 %287 to i32
  %289 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %290 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %289, i32 0, i32 4
  store i32 %288, i32* %290, align 4
  br label %292

291:                                              ; preds = %271
  br label %292

292:                                              ; preds = %291, %276
  br label %293

293:                                              ; preds = %292, %261
  br label %294

294:                                              ; preds = %293, %246
  %295 = load i32, i32* @MAX_CMD_DESCRIPTORS, align 4
  %296 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %297 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %296, i32 0, i32 8
  store i32 %295, i32* %297, align 8
  %298 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %299 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %298, i32 0, i32 7
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = call i64 @NX_IS_REVISION_P2(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %294
  %305 = load i64, i64* @MAX_LRO_RCV_DESCRIPTORS, align 8
  %306 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %307 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %306, i32 0, i32 6
  store i64 %305, i64* %307, align 8
  %308 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %309 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %308, i32 0, i32 5
  store i32 3, i32* %309, align 8
  br label %315

310:                                              ; preds = %294
  %311 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %312 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %311, i32 0, i32 6
  store i64 0, i64* %312, align 8
  %313 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %314 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %313, i32 0, i32 5
  store i32 2, i32* %314, align 8
  br label %315

315:                                              ; preds = %310, %304
  store i32 0, i32* %16, align 4
  br label %316

316:                                              ; preds = %315, %153, %38
  %317 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %317)
  %318 = load i32, i32* %16, align 4
  switch i32 %318, label %320 [
    i32 0, label %319
    i32 1, label %319
  ]

319:                                              ; preds = %316, %316
  ret void

320:                                              ; preds = %316
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netxen_rom_fast_read(%struct.netxen_adapter*, i32, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i8* @NXRD32(%struct.netxen_adapter*, i32) #2

declare dso_local i64 @NETXEN_VERSION_CODE(i32, i32, i32) #2

declare dso_local i64 @NX_IS_REVISION_P3(i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @netxen_setup_minidump(%struct.netxen_adapter*) #2

declare dso_local i64 @netxen_nic_get_brd_name_by_type(i32, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @pr_info(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @module_name(i32) #2

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64, i64) #2

declare dso_local i32 @dev_info(i32*, i8*, i32, i64, i64, i64, i8*) #2

declare dso_local i64 @NETXEN_DECODE_VERSION(i64) #2

declare dso_local i64 @NX_IS_REVISION_P2(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
