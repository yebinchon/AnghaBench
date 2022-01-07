; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_ezx_pcap_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_ezx_pcap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32 }
%struct.pcap_platform_data = type { i32, i32, i32, i32 (%struct.pcap_chip*)*, i32* }
%struct.pcap_chip = type opaque
%struct.pcap_chip.0 = type { i32, i32, i32, %struct.spi_device*, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcap_isr_work = common dso_local global i32 0, align 4
@pcap_msr_work = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@PCAP_CS_AH = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pcapd\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"can't create pcap thread\0A\00", align 1
@PCAP_SECOND_PORT = common dso_local global i32 0, align 4
@PCAP_REG_INT_SEL = common dso_local global i32 0, align 4
@PCAP_IRQ_ADCDONE2 = common dso_local global i32 0, align 4
@PCAP_NIRQS = common dso_local global i32 0, align 4
@pcap_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32* null, align 8
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@PCAP_REG_MSR = common dso_local global i32 0, align 4
@PCAP_MASK_ALL_INTERRUPT = common dso_local global i32 0, align 4
@PCAP_REG_ISR = common dso_local global i32 0, align 4
@PCAP_CLEAR_INTERRUPT_REGISTER = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@pcap_irq_handler = common dso_local global i32 0, align 4
@PCAP_IRQ_ADCDONE = common dso_local global i32 0, align 4
@pcap_adc_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@pcap_remove_subdev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ezx_pcap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ezx_pcap_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.pcap_platform_data*, align 8
  %5 = alloca %struct.pcap_chip.0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 2
  %11 = call %struct.pcap_platform_data* @dev_get_platdata(i32* %10)
  store %struct.pcap_platform_data* %11, %struct.pcap_platform_data** %4, align 8
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.pcap_platform_data*, %struct.pcap_platform_data** %4, align 8
  %15 = icmp ne %struct.pcap_platform_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %243

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pcap_chip.0* @devm_kzalloc(i32* %19, i32 40, i32 %20)
  store %struct.pcap_chip.0* %21, %struct.pcap_chip.0** %5, align 8
  %22 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %23 = icmp ne %struct.pcap_chip.0* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %243

27:                                               ; preds = %17
  %28 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %29 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %28, i32 0, i32 7
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %32 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %31, i32 0, i32 6
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %35 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %34, i32 0, i32 5
  %36 = load i32, i32* @pcap_isr_work, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %39 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %38, i32 0, i32 4
  %40 = load i32, i32* @pcap_msr_work, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %44 = call i32 @spi_set_drvdata(%struct.spi_device* %42, %struct.pcap_chip.0* %43)
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 0
  store i32 32, i32* %46, align 4
  %47 = load i32, i32* @SPI_MODE_0, align 4
  %48 = load %struct.pcap_platform_data*, %struct.pcap_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.pcap_platform_data, %struct.pcap_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PCAP_CS_AH, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %27
  %55 = load i32, i32* @SPI_CS_HIGH, align 4
  br label %57

56:                                               ; preds = %27
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = or i32 %47, %58
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = call i32 @spi_setup(%struct.spi_device* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %243

67:                                               ; preds = %57
  %68 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %69 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %70 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %69, i32 0, i32 3
  store %struct.spi_device* %68, %struct.spi_device** %70, align 8
  %71 = load %struct.pcap_platform_data*, %struct.pcap_platform_data** %4, align 8
  %72 = getelementptr inbounds %struct.pcap_platform_data, %struct.pcap_platform_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %75 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %78 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %80 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %67
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  %86 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %87 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %86, i32 0, i32 2
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %243

89:                                               ; preds = %67
  %90 = load %struct.pcap_platform_data*, %struct.pcap_platform_data** %4, align 8
  %91 = getelementptr inbounds %struct.pcap_platform_data, %struct.pcap_platform_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PCAP_SECOND_PORT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %98 = load i32, i32* @PCAP_REG_INT_SEL, align 4
  %99 = load i32, i32* @PCAP_IRQ_ADCDONE2, align 4
  %100 = shl i32 1, %99
  %101 = call i32 @ezx_pcap_write(%struct.pcap_chip.0* %97, i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %96, %89
  %103 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %104 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %126, %102
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %109 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @PCAP_NIRQS, align 4
  %112 = add nsw i32 %110, %111
  %113 = icmp slt i32 %107, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %106
  %115 = load i32, i32* %6, align 4
  %116 = load i32*, i32** @handle_simple_irq, align 8
  %117 = call i32 @irq_set_chip_and_handler(i32 %115, i32* @pcap_irq_chip, i32* %116)
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %120 = call i32 @irq_set_chip_data(i32 %118, %struct.pcap_chip.0* %119)
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @IRQ_NOREQUEST, align 4
  %123 = load i32, i32* @IRQ_NOPROBE, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @irq_clear_status_flags(i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %106

129:                                              ; preds = %106
  %130 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %131 = load i32, i32* @PCAP_REG_MSR, align 4
  %132 = load i32, i32* @PCAP_MASK_ALL_INTERRUPT, align 4
  %133 = call i32 @ezx_pcap_write(%struct.pcap_chip.0* %130, i32 %131, i32 %132)
  %134 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %135 = load i32, i32* @PCAP_REG_ISR, align 4
  %136 = load i32, i32* @PCAP_CLEAR_INTERRUPT_REGISTER, align 4
  %137 = call i32 @ezx_pcap_write(%struct.pcap_chip.0* %134, i32 %135, i32 %136)
  %138 = load i32, i32* @PCAP_MASK_ALL_INTERRUPT, align 4
  %139 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %140 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %142 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %145 = call i32 @irq_set_irq_type(i32 %143, i32 %144)
  %146 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %147 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @pcap_irq_handler, align 4
  %150 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %151 = call i32 @irq_set_chained_handler_and_data(i32 %148, i32 %149, %struct.pcap_chip.0* %150)
  %152 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %153 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @irq_set_irq_wake(i32 %154, i32 1)
  %156 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %157 = load %struct.pcap_platform_data*, %struct.pcap_platform_data** %4, align 8
  %158 = getelementptr inbounds %struct.pcap_platform_data, %struct.pcap_platform_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @PCAP_SECOND_PORT, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %129
  %164 = load i32, i32* @PCAP_IRQ_ADCDONE2, align 4
  br label %167

165:                                              ; preds = %129
  %166 = load i32, i32* @PCAP_IRQ_ADCDONE, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  %169 = call i32 @pcap_to_irq(%struct.pcap_chip.0* %156, i32 %168)
  store i32 %169, i32* %7, align 4
  %170 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %171 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %170, i32 0, i32 2
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @pcap_adc_irq, align 4
  %174 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %175 = call i32 @devm_request_irq(i32* %171, i32 %172, i32 %173, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.pcap_chip.0* %174)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  br label %220

179:                                              ; preds = %167
  store i32 0, i32* %6, align 4
  br label %180

180:                                              ; preds = %199, %179
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.pcap_platform_data*, %struct.pcap_platform_data** %4, align 8
  %183 = getelementptr inbounds %struct.pcap_platform_data, %struct.pcap_platform_data* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %180
  %187 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %188 = load %struct.pcap_platform_data*, %struct.pcap_platform_data** %4, align 8
  %189 = getelementptr inbounds %struct.pcap_platform_data, %struct.pcap_platform_data* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = call i32 @pcap_add_subdev(%struct.pcap_chip.0* %187, i32* %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %186
  br label %215

198:                                              ; preds = %186
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %180

202:                                              ; preds = %180
  %203 = load %struct.pcap_platform_data*, %struct.pcap_platform_data** %4, align 8
  %204 = getelementptr inbounds %struct.pcap_platform_data, %struct.pcap_platform_data* %203, i32 0, i32 3
  %205 = load i32 (%struct.pcap_chip*)*, i32 (%struct.pcap_chip*)** %204, align 8
  %206 = icmp ne i32 (%struct.pcap_chip*)* %205, null
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load %struct.pcap_platform_data*, %struct.pcap_platform_data** %4, align 8
  %209 = getelementptr inbounds %struct.pcap_platform_data, %struct.pcap_platform_data* %208, i32 0, i32 3
  %210 = load i32 (%struct.pcap_chip*)*, i32 (%struct.pcap_chip*)** %209, align 8
  %211 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %212 = bitcast %struct.pcap_chip.0* %211 to %struct.pcap_chip*
  %213 = call i32 %210(%struct.pcap_chip* %212)
  br label %214

214:                                              ; preds = %207, %202
  store i32 0, i32* %2, align 4
  br label %245

215:                                              ; preds = %197
  %216 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %217 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %216, i32 0, i32 2
  %218 = load i32, i32* @pcap_remove_subdev, align 4
  %219 = call i32 @device_for_each_child(i32* %217, i32* null, i32 %218)
  br label %220

220:                                              ; preds = %215, %178
  %221 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %222 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %235, %220
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %227 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @PCAP_NIRQS, align 4
  %230 = add nsw i32 %228, %229
  %231 = icmp slt i32 %225, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %224
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @irq_set_chip_and_handler(i32 %233, i32* null, i32* null)
  br label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %224

238:                                              ; preds = %224
  %239 = load %struct.pcap_chip.0*, %struct.pcap_chip.0** %5, align 8
  %240 = getelementptr inbounds %struct.pcap_chip.0, %struct.pcap_chip.0* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @destroy_workqueue(i32 %241)
  br label %243

243:                                              ; preds = %238, %83, %66, %24, %16
  %244 = load i32, i32* %8, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %243, %214
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local %struct.pcap_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.pcap_chip.0* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.pcap_chip.0*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ezx_pcap_write(%struct.pcap_chip.0*, i32, i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32*) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.pcap_chip.0*) #1

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.pcap_chip.0*) #1

declare dso_local i32 @irq_set_irq_wake(i32, i32) #1

declare dso_local i32 @pcap_to_irq(%struct.pcap_chip.0*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.pcap_chip.0*) #1

declare dso_local i32 @pcap_add_subdev(%struct.pcap_chip.0*, i32*) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
