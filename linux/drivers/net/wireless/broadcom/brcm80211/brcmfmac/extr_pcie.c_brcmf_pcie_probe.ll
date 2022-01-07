; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.brcmf_fw_request = type { i64, %struct.TYPE_7__*, %struct.brcmf_fw_request*, i32*, %struct.pci_dev*, i32, i32, i32, i32, i32*, %struct.TYPE_6__, %struct.brcmf_fw_request*, %struct.brcmf_fw_request* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.brcmf_pciedev_info* }
%struct.brcmf_pciedev_info = type { i64, %struct.TYPE_7__*, %struct.brcmf_pciedev_info*, i32*, %struct.pci_dev*, i32, i32, i32, i32, i32*, %struct.TYPE_6__, %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info* }
%struct.brcmf_pciedev = type { i64, %struct.TYPE_7__*, %struct.brcmf_pciedev*, i32*, %struct.pci_dev*, i32, i32, i32, i32, i32*, %struct.TYPE_6__, %struct.brcmf_pciedev*, %struct.brcmf_pciedev* }
%struct.brcmf_bus = type { i64, %struct.TYPE_7__*, %struct.brcmf_bus*, i32*, %struct.pci_dev*, i32, i32, i32, i32, i32*, %struct.TYPE_6__, %struct.brcmf_bus*, %struct.brcmf_bus* }

@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Enter %x:%x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@brcmf_pcie_buscore_ops = common dso_local global i32 0, align 4
@BRCMF_BUSTYPE_PCIE = common dso_local global i32 0, align 4
@brcmf_pcie_bus_ops = common dso_local global i32 0, align 4
@BRCMF_PROTO_MSGBUF = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@brcmf_pcie_setup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"failed %x:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @brcmf_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pcie_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_fw_request*, align 8
  %8 = alloca %struct.brcmf_pciedev_info*, align 8
  %9 = alloca %struct.brcmf_pciedev*, align 8
  %10 = alloca %struct.brcmf_bus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load i32, i32* @PCIE, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @brcmf_dbg(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 88, i32 %21)
  %23 = bitcast i8* %22 to %struct.brcmf_pciedev_info*
  store %struct.brcmf_pciedev_info* %23, %struct.brcmf_pciedev_info** %8, align 8
  %24 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %25 = icmp eq %struct.brcmf_pciedev_info* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %226

28:                                               ; preds = %2
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %31 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %30, i32 0, i32 4
  store %struct.pci_dev* %29, %struct.pci_dev** %31, align 8
  store %struct.brcmf_pciedev* null, %struct.brcmf_pciedev** %9, align 8
  %32 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %33 = call %struct.TYPE_7__* @brcmf_chip_attach(%struct.brcmf_pciedev_info* %32, i32* @brcmf_pcie_buscore_ops)
  %34 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %35 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %34, i32 0, i32 1
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %37 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = call i64 @IS_ERR(%struct.TYPE_7__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %28
  %42 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %43 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = call i32 @PTR_ERR(%struct.TYPE_7__* %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %47 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %46, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %47, align 8
  br label %190

48:                                               ; preds = %28
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kzalloc(i32 88, i32 %49)
  %51 = bitcast i8* %50 to %struct.brcmf_pciedev*
  store %struct.brcmf_pciedev* %51, %struct.brcmf_pciedev** %9, align 8
  %52 = load %struct.brcmf_pciedev*, %struct.brcmf_pciedev** %9, align 8
  %53 = icmp eq %struct.brcmf_pciedev* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %190

57:                                               ; preds = %48
  %58 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %59 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %58, i32 0, i32 4
  %60 = load %struct.pci_dev*, %struct.pci_dev** %59, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 2
  %62 = load i32, i32* @BRCMF_BUSTYPE_PCIE, align 4
  %63 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %64 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %69 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @brcmf_get_module_param(i32* %61, i32 %62, i32 %67, i32 %72)
  %74 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %75 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %77 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %57
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %190

83:                                               ; preds = %57
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @kzalloc(i32 88, i32 %84)
  %86 = bitcast i8* %85 to %struct.brcmf_bus*
  store %struct.brcmf_bus* %86, %struct.brcmf_bus** %10, align 8
  %87 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %88 = icmp ne %struct.brcmf_bus* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %190

92:                                               ; preds = %83
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i8* @kzalloc(i32 88, i32 %93)
  %95 = bitcast i8* %94 to %struct.brcmf_bus*
  %96 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %97 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %96, i32 0, i32 2
  store %struct.brcmf_bus* %95, %struct.brcmf_bus** %97, align 8
  %98 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %99 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %98, i32 0, i32 2
  %100 = load %struct.brcmf_bus*, %struct.brcmf_bus** %99, align 8
  %101 = icmp ne %struct.brcmf_bus* %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %92
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  %105 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %106 = bitcast %struct.brcmf_bus* %105 to %struct.brcmf_pciedev_info*
  %107 = call i32 @kfree(%struct.brcmf_pciedev_info* %106)
  br label %190

108:                                              ; preds = %92
  %109 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %110 = bitcast %struct.brcmf_pciedev_info* %109 to %struct.brcmf_pciedev*
  %111 = load %struct.brcmf_pciedev*, %struct.brcmf_pciedev** %9, align 8
  %112 = getelementptr inbounds %struct.brcmf_pciedev, %struct.brcmf_pciedev* %111, i32 0, i32 12
  store %struct.brcmf_pciedev* %110, %struct.brcmf_pciedev** %112, align 8
  %113 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %114 = bitcast %struct.brcmf_bus* %113 to %struct.brcmf_pciedev*
  %115 = load %struct.brcmf_pciedev*, %struct.brcmf_pciedev** %9, align 8
  %116 = getelementptr inbounds %struct.brcmf_pciedev, %struct.brcmf_pciedev* %115, i32 0, i32 11
  store %struct.brcmf_pciedev* %114, %struct.brcmf_pciedev** %116, align 8
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 2
  %119 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %120 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %119, i32 0, i32 3
  store i32* %118, i32** %120, align 8
  %121 = load %struct.brcmf_pciedev*, %struct.brcmf_pciedev** %9, align 8
  %122 = bitcast %struct.brcmf_pciedev* %121 to %struct.brcmf_pciedev_info*
  %123 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %124 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %123, i32 0, i32 10
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store %struct.brcmf_pciedev_info* %122, %struct.brcmf_pciedev_info** %125, align 8
  %126 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %127 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %126, i32 0, i32 9
  store i32* @brcmf_pcie_bus_ops, i32** %127, align 8
  %128 = load i32, i32* @BRCMF_PROTO_MSGBUF, align 4
  %129 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %130 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 4
  %131 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %132 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %135 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 8
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = load i32, i32* @PCI_D3hot, align 4
  %138 = call i32 @pci_pme_capable(%struct.pci_dev* %136, i32 %137)
  %139 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %140 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 8
  %141 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 2
  %143 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %144 = bitcast %struct.brcmf_bus* %143 to %struct.brcmf_pciedev_info*
  %145 = call i32 @dev_set_drvdata(i32* %142, %struct.brcmf_pciedev_info* %144)
  %146 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %147 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %146, i32 0, i32 4
  %148 = load %struct.pci_dev*, %struct.pci_dev** %147, align 8
  %149 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %148, i32 0, i32 2
  %150 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %151 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @brcmf_alloc(i32* %149, i64 %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %108
  br label %181

157:                                              ; preds = %108
  %158 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %159 = call %struct.brcmf_pciedev_info* @brcmf_pcie_prepare_fw_request(%struct.brcmf_pciedev_info* %158)
  %160 = bitcast %struct.brcmf_pciedev_info* %159 to %struct.brcmf_fw_request*
  store %struct.brcmf_fw_request* %160, %struct.brcmf_fw_request** %7, align 8
  %161 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  %162 = icmp ne %struct.brcmf_fw_request* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %157
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %6, align 4
  br label %181

166:                                              ; preds = %157
  %167 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %168 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  %171 = bitcast %struct.brcmf_fw_request* %170 to %struct.brcmf_pciedev_info*
  %172 = load i32, i32* @brcmf_pcie_setup, align 4
  %173 = call i32 @brcmf_fw_get_firmwares(i32* %169, %struct.brcmf_pciedev_info* %171, i32 %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %166
  %177 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  %178 = bitcast %struct.brcmf_fw_request* %177 to %struct.brcmf_pciedev_info*
  %179 = call i32 @kfree(%struct.brcmf_pciedev_info* %178)
  br label %181

180:                                              ; preds = %166
  store i32 0, i32* %3, align 4
  br label %226

181:                                              ; preds = %176, %163, %156
  %182 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %183 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %182, i32 0, i32 2
  %184 = load %struct.brcmf_bus*, %struct.brcmf_bus** %183, align 8
  %185 = bitcast %struct.brcmf_bus* %184 to %struct.brcmf_pciedev_info*
  %186 = call i32 @kfree(%struct.brcmf_pciedev_info* %185)
  %187 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %188 = bitcast %struct.brcmf_bus* %187 to %struct.brcmf_pciedev_info*
  %189 = call i32 @kfree(%struct.brcmf_pciedev_info* %188)
  br label %190

190:                                              ; preds = %181, %102, %89, %80, %54, %41
  %191 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %192 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %195 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @brcmf_err(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %193, i32 %196)
  %198 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %199 = call i32 @brcmf_pcie_release_resource(%struct.brcmf_pciedev_info* %198)
  %200 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %201 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %200, i32 0, i32 1
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = icmp ne %struct.TYPE_7__* %202, null
  br i1 %203, label %204, label %209

204:                                              ; preds = %190
  %205 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %206 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %205, i32 0, i32 1
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = call i32 @brcmf_chip_detach(%struct.TYPE_7__* %207)
  br label %209

209:                                              ; preds = %204, %190
  %210 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %211 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %216 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @brcmf_release_module_param(i64 %217)
  br label %219

219:                                              ; preds = %214, %209
  %220 = load %struct.brcmf_pciedev*, %struct.brcmf_pciedev** %9, align 8
  %221 = bitcast %struct.brcmf_pciedev* %220 to %struct.brcmf_pciedev_info*
  %222 = call i32 @kfree(%struct.brcmf_pciedev_info* %221)
  %223 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %8, align 8
  %224 = call i32 @kfree(%struct.brcmf_pciedev_info* %223)
  %225 = load i32, i32* %6, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %219, %180, %26
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_7__* @brcmf_chip_attach(%struct.brcmf_pciedev_info*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i64 @brcmf_get_module_param(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @pci_pme_capable(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_alloc(i32*, i64) #1

declare dso_local %struct.brcmf_pciedev_info* @brcmf_pcie_prepare_fw_request(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_fw_get_firmwares(i32*, %struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @brcmf_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @brcmf_pcie_release_resource(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_chip_detach(%struct.TYPE_7__*) #1

declare dso_local i32 @brcmf_release_module_param(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
