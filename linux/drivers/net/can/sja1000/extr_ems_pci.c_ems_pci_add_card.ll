; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_ems_pci.c_ems_pci_add_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_ems_pci.c_ems_pci_add_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.sja1000_priv = type { i32*, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.ems_pci_card* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ems_pci_card = type { i32, i64, i32*, i32*, %struct.net_device**, %struct.pci_dev* }
%struct.net_device = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Enabling PCI device failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_PLX = common dso_local global i64 0, align 8
@EMS_PCI_V2_MAX_CHAN = common dso_local global i32 0, align 4
@EMS_PCI_V2_BASE_BAR = common dso_local global i32 0, align 4
@EMS_PCI_V2_CONF_SIZE = common dso_local global i32 0, align 4
@EMS_PCI_V1_MAX_CHAN = common dso_local global i32 0, align 4
@EMS_PCI_V1_BASE_BAR = common dso_local global i32 0, align 4
@EMS_PCI_V1_CONF_SIZE = common dso_local global i32 0, align 4
@EMS_PCI_BASE_SIZE = common dso_local global i32 0, align 4
@PITA2_MISC_CONFIG = common dso_local global i32 0, align 4
@PITA2_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Not EMS Dr. Thomas Wuensche interface\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@EMS_PCI_CAN_BASE_OFFSET = common dso_local global i32 0, align 4
@EMS_PCI_CAN_CTRL_SIZE = common dso_local global i32 0, align 4
@ems_pci_v1_read_reg = common dso_local global i32 0, align 4
@ems_pci_v1_write_reg = common dso_local global i32 0, align 4
@ems_pci_v1_post_irq = common dso_local global i32 0, align 4
@ems_pci_v2_read_reg = common dso_local global i32 0, align 4
@ems_pci_v2_write_reg = common dso_local global i32 0, align 4
@ems_pci_v2_post_irq = common dso_local global i32 0, align 4
@EMS_PCI_CAN_CLOCK = common dso_local global i32 0, align 4
@EMS_PCI_OCR = common dso_local global i32 0, align 4
@EMS_PCI_CDR = common dso_local global i32 0, align 4
@PITA2_ICR_INT0_EN = common dso_local global i32 0, align 4
@PITA2_ICR_INT0 = common dso_local global i32 0, align 4
@PITA2_ICR = common dso_local global i32 0, align 4
@PLX_ICSR_ENA_CLR = common dso_local global i32 0, align 4
@PLX_ICSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Registering device failed (err=%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Channel #%d at 0x%p, irq %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Error: %d. Cleaning Up.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ems_pci_add_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ems_pci_add_card(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.sja1000_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ems_pci_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i64 @pci_enable_device(%struct.pci_dev* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %291

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ems_pci_card* @kzalloc(i32 48, i32 %24)
  store %struct.ems_pci_card* %25, %struct.ems_pci_card** %8, align 8
  %26 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %27 = icmp eq %struct.ems_pci_card* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @pci_disable_device(%struct.pci_dev* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %291

33:                                               ; preds = %23
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %36 = call i32 @pci_set_drvdata(%struct.pci_dev* %34, %struct.ems_pci_card* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %39 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %38, i32 0, i32 5
  store %struct.pci_dev* %37, %struct.pci_dev** %39, align 8
  %40 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %41 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCI_VENDOR_ID_PLX, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %33
  %48 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %49 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %48, i32 0, i32 0
  store i32 2, i32* %49, align 8
  %50 = load i32, i32* @EMS_PCI_V2_MAX_CHAN, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @EMS_PCI_V2_BASE_BAR, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @EMS_PCI_V2_CONF_SIZE, align 4
  store i32 %52, i32* %10, align 4
  br label %59

53:                                               ; preds = %33
  %54 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %55 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* @EMS_PCI_V1_MAX_CHAN, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @EMS_PCI_V1_BASE_BAR, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @EMS_PCI_V1_CONF_SIZE, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i8* @pci_iomap(%struct.pci_dev* %60, i32 0, i32 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %65 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %67 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %283

73:                                               ; preds = %59
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @EMS_PCI_BASE_SIZE, align 4
  %77 = call i8* @pci_iomap(%struct.pci_dev* %74, i32 %75, i32 %76)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %80 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %79, i32 0, i32 3
  store i32* %78, i32** %80, align 8
  %81 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %82 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %12, align 4
  br label %283

88:                                               ; preds = %73
  %89 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %90 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %128

93:                                               ; preds = %88
  %94 = load i32, i32* @PITA2_MISC_CONFIG, align 4
  %95 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %96 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @PITA2_MISC, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @writel(i32 %94, i32* %100)
  %102 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %103 = call i32 @ems_pci_v1_readb(%struct.ems_pci_card* %102, i32 0)
  %104 = icmp ne i32 %103, 85
  br i1 %104, label %121, label %105

105:                                              ; preds = %93
  %106 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %107 = call i32 @ems_pci_v1_readb(%struct.ems_pci_card* %106, i32 1)
  %108 = icmp ne i32 %107, 170
  br i1 %108, label %121, label %109

109:                                              ; preds = %105
  %110 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %111 = call i32 @ems_pci_v1_readb(%struct.ems_pci_card* %110, i32 2)
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %115 = call i32 @ems_pci_v1_readb(%struct.ems_pci_card* %114, i32 3)
  %116 = icmp ne i32 %115, 203
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %119 = call i32 @ems_pci_v1_readb(%struct.ems_pci_card* %118, i32 4)
  %120 = icmp ne i32 %119, 17
  br i1 %120, label %121, label %127

121:                                              ; preds = %117, %113, %109, %105, %93
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 1
  %124 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %12, align 4
  br label %283

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %88
  %129 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %130 = call i32 @ems_pci_card_reset(%struct.ems_pci_card* %129)
  store i32 0, i32* %13, align 4
  br label %131

131:                                              ; preds = %279, %128
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %282

135:                                              ; preds = %131
  %136 = call %struct.net_device* @alloc_sja1000dev(i32 0)
  store %struct.net_device* %136, %struct.net_device** %7, align 8
  %137 = load %struct.net_device*, %struct.net_device** %7, align 8
  %138 = icmp eq %struct.net_device* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %12, align 4
  br label %283

142:                                              ; preds = %135
  %143 = load %struct.net_device*, %struct.net_device** %7, align 8
  %144 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %145 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %144, i32 0, i32 4
  %146 = load %struct.net_device**, %struct.net_device*** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.net_device*, %struct.net_device** %146, i64 %148
  store %struct.net_device* %143, %struct.net_device** %149, align 8
  %150 = load %struct.net_device*, %struct.net_device** %7, align 8
  %151 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %150)
  store %struct.sja1000_priv* %151, %struct.sja1000_priv** %6, align 8
  %152 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %153 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %154 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %153, i32 0, i32 8
  store %struct.ems_pci_card* %152, %struct.ems_pci_card** %154, align 8
  %155 = load i32, i32* @IRQF_SHARED, align 4
  %156 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %157 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 8
  %158 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.net_device*, %struct.net_device** %7, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %164 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* @EMS_PCI_CAN_BASE_OFFSET, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* @EMS_PCI_CAN_CTRL_SIZE, align 4
  %171 = mul nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  %174 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %175 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %174, i32 0, i32 0
  store i32* %173, i32** %175, align 8
  %176 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %177 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %190

180:                                              ; preds = %142
  %181 = load i32, i32* @ems_pci_v1_read_reg, align 4
  %182 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %183 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %182, i32 0, i32 6
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @ems_pci_v1_write_reg, align 4
  %185 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %186 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %185, i32 0, i32 5
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* @ems_pci_v1_post_irq, align 4
  %188 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %189 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 4
  br label %200

190:                                              ; preds = %142
  %191 = load i32, i32* @ems_pci_v2_read_reg, align 4
  %192 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %193 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %192, i32 0, i32 6
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @ems_pci_v2_write_reg, align 4
  %195 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %196 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* @ems_pci_v2_post_irq, align 4
  %198 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %199 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %198, i32 0, i32 4
  store i32 %197, i32* %199, align 4
  br label %200

200:                                              ; preds = %190, %180
  %201 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %202 = call i64 @ems_pci_check_chan(%struct.sja1000_priv* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %275

204:                                              ; preds = %200
  %205 = load i32, i32* @EMS_PCI_CAN_CLOCK, align 4
  %206 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %207 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  store i32 %205, i32* %209, align 8
  %210 = load i32, i32* @EMS_PCI_OCR, align 4
  %211 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %212 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* @EMS_PCI_CDR, align 4
  %214 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %215 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 8
  %216 = load %struct.net_device*, %struct.net_device** %7, align 8
  %217 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %218 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %217, i32 0, i32 1
  %219 = call i32 @SET_NETDEV_DEV(%struct.net_device* %216, i32* %218)
  %220 = load i32, i32* %13, align 4
  %221 = load %struct.net_device*, %struct.net_device** %7, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 4
  %223 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %224 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %238

227:                                              ; preds = %204
  %228 = load i32, i32* @PITA2_ICR_INT0_EN, align 4
  %229 = load i32, i32* @PITA2_ICR_INT0, align 4
  %230 = or i32 %228, %229
  %231 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %232 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* @PITA2_ICR, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = call i32 @writel(i32 %230, i32* %236)
  br label %247

238:                                              ; preds = %204
  %239 = load i32, i32* @PLX_ICSR_ENA_CLR, align 4
  %240 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %241 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* @PLX_ICSR, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = call i32 @writel(i32 %239, i32* %245)
  br label %247

247:                                              ; preds = %238, %227
  %248 = load %struct.net_device*, %struct.net_device** %7, align 8
  %249 = call i32 @register_sja1000dev(%struct.net_device* %248)
  store i32 %249, i32* %12, align 4
  %250 = load i32, i32* %12, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %247
  %253 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %254 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %253, i32 0, i32 1
  %255 = load i32, i32* %12, align 4
  %256 = call i32 (i32*, i8*, ...) @dev_err(i32* %254, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %255)
  %257 = load %struct.net_device*, %struct.net_device** %7, align 8
  %258 = call i32 @free_sja1000dev(%struct.net_device* %257)
  br label %283

259:                                              ; preds = %247
  %260 = load %struct.ems_pci_card*, %struct.ems_pci_card** %8, align 8
  %261 = getelementptr inbounds %struct.ems_pci_card, %struct.ems_pci_card* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %262, 1
  store i64 %263, i64* %261, align 8
  %264 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %265 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %264, i32 0, i32 1
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %266, 1
  %268 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %269 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.net_device*, %struct.net_device** %7, align 8
  %272 = getelementptr inbounds %struct.net_device, %struct.net_device* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @dev_info(i32* %265, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %267, i32* %270, i32 %273)
  br label %278

275:                                              ; preds = %200
  %276 = load %struct.net_device*, %struct.net_device** %7, align 8
  %277 = call i32 @free_sja1000dev(%struct.net_device* %276)
  br label %278

278:                                              ; preds = %275, %259
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %13, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %13, align 4
  br label %131

282:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %291

283:                                              ; preds = %252, %139, %121, %85, %70
  %284 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %285 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %284, i32 0, i32 1
  %286 = load i32, i32* %12, align 4
  %287 = call i32 (i32*, i8*, ...) @dev_err(i32* %285, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %286)
  %288 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %289 = call i32 @ems_pci_del_card(%struct.pci_dev* %288)
  %290 = load i32, i32* %12, align 4
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %283, %282, %28, %17
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.ems_pci_card* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ems_pci_card*) #1

declare dso_local i8* @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @ems_pci_v1_readb(%struct.ems_pci_card*, i32) #1

declare dso_local i32 @ems_pci_card_reset(%struct.ems_pci_card*) #1

declare dso_local %struct.net_device* @alloc_sja1000dev(i32) #1

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ems_pci_check_chan(%struct.sja1000_priv*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_sja1000dev(%struct.net_device*) #1

declare dso_local i32 @free_sja1000dev(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @ems_pci_del_card(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
