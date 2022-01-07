; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_module.c_ibmasm_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_module.c_ibmasm_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.service_processor = type { i32, i32, i32, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to enable PCI device\0A\00", align 1
@DRIVER_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to allocate PCI resources\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IBMASM_NAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to allocate event buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Failed to allocate heartbeat command\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to ioremap pci memory\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ibmasm_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to register interrupt handler\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to initialize remote queue\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Failed to send driver VPD to service processor\0A\00", align 1
@SYSTEM_STATE_OS_UP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [46 x i8] c"Failed to send OS state to service processor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ibmasm_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmasm_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.service_processor*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pci_enable_device(%struct.pci_dev* %8)
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 2
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %210

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i8*, i8** @DRIVER_NAME, align 8
  %19 = call i32 @pci_request_regions(%struct.pci_dev* %17, i8* %18)
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 2
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %206

25:                                               ; preds = %16
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pci_set_master(%struct.pci_dev* %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.service_processor* @kzalloc(i32 40, i32 %28)
  store %struct.service_processor* %29, %struct.service_processor** %7, align 8
  %30 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %31 = icmp eq %struct.service_processor* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 2
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %203

38:                                               ; preds = %25
  %39 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %40 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %39, i32 0, i32 7
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %43 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %42, i32 0, i32 6
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %47 = bitcast %struct.service_processor* %46 to i8*
  %48 = call i32 @pci_set_drvdata(%struct.pci_dev* %45, i8* %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 2
  %51 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %52 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %51, i32 0, i32 3
  store i32* %50, i32** %52, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %59 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %61 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IBMASM_NAME_SIZE, align 4
  %64 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %65 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %62, i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %69 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IBMASM_NAME_SIZE, align 4
  %72 = load i8*, i8** @DRIVER_NAME, align 8
  %73 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %74 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %70, i32 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %72, i32 %75)
  %77 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %78 = call i32 @ibmasm_event_buffer_init(%struct.service_processor* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %38
  %82 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %83 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %200

86:                                               ; preds = %38
  %87 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %88 = call i32 @ibmasm_heartbeat_init(%struct.service_processor* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %93 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %197

96:                                               ; preds = %86
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %101 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = call i32 @pci_ioremap_bar(%struct.pci_dev* %102, i32 0)
  %104 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %105 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %107 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %96
  %111 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %112 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %194

117:                                              ; preds = %96
  %118 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %119 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ibmasm_interrupt_handler, align 4
  %122 = load i32, i32* @IRQF_SHARED, align 4
  %123 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %124 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %127 = bitcast %struct.service_processor* %126 to i8*
  %128 = call i32 @request_irq(i32 %120, i32 %121, i32 %122, i32 %125, i8* %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %117
  %132 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %133 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @dev_err(i32* %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %189

136:                                              ; preds = %117
  %137 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %138 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @enable_sp_interrupts(i32 %139)
  %141 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %142 = call i32 @ibmasm_init_remote_input_dev(%struct.service_processor* %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %136
  %146 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %147 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @dev_err(i32* %148, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %176

150:                                              ; preds = %136
  %151 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %152 = call i32 @ibmasm_send_driver_vpd(%struct.service_processor* %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %157 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @dev_err(i32* %158, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %176

160:                                              ; preds = %150
  %161 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %162 = load i32, i32* @SYSTEM_STATE_OS_UP, align 4
  %163 = call i32 @ibmasm_send_os_state(%struct.service_processor* %161, i32 %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %168 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @dev_err(i32* %169, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  br label %176

171:                                              ; preds = %160
  %172 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %173 = call i32 @ibmasmfs_add_sp(%struct.service_processor* %172)
  %174 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %175 = call i32 @ibmasm_register_uart(%struct.service_processor* %174)
  store i32 0, i32* %3, align 4
  br label %210

176:                                              ; preds = %166, %155, %145
  %177 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %178 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @disable_sp_interrupts(i32 %179)
  %181 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %182 = call i32 @ibmasm_free_remote_input_dev(%struct.service_processor* %181)
  %183 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %184 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %187 = bitcast %struct.service_processor* %186 to i8*
  %188 = call i32 @free_irq(i32 %185, i8* %187)
  br label %189

189:                                              ; preds = %176, %131
  %190 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %191 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @iounmap(i32 %192)
  br label %194

194:                                              ; preds = %189, %110
  %195 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %196 = call i32 @ibmasm_heartbeat_exit(%struct.service_processor* %195)
  br label %197

197:                                              ; preds = %194, %91
  %198 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %199 = call i32 @ibmasm_event_buffer_exit(%struct.service_processor* %198)
  br label %200

200:                                              ; preds = %197, %81
  %201 = load %struct.service_processor*, %struct.service_processor** %7, align 8
  %202 = call i32 @kfree(%struct.service_processor* %201)
  br label %203

203:                                              ; preds = %200, %32
  %204 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %205 = call i32 @pci_release_regions(%struct.pci_dev* %204)
  br label %206

206:                                              ; preds = %203, %21
  %207 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %208 = call i32 @pci_disable_device(%struct.pci_dev* %207)
  %209 = load i32, i32* %6, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %206, %171, %11
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.service_processor* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @ibmasm_event_buffer_init(%struct.service_processor*) #1

declare dso_local i32 @ibmasm_heartbeat_init(%struct.service_processor*) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @enable_sp_interrupts(i32) #1

declare dso_local i32 @ibmasm_init_remote_input_dev(%struct.service_processor*) #1

declare dso_local i32 @ibmasm_send_driver_vpd(%struct.service_processor*) #1

declare dso_local i32 @ibmasm_send_os_state(%struct.service_processor*, i32) #1

declare dso_local i32 @ibmasmfs_add_sp(%struct.service_processor*) #1

declare dso_local i32 @ibmasm_register_uart(%struct.service_processor*) #1

declare dso_local i32 @disable_sp_interrupts(i32) #1

declare dso_local i32 @ibmasm_free_remote_input_dev(%struct.service_processor*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @ibmasm_heartbeat_exit(%struct.service_processor*) #1

declare dso_local i32 @ibmasm_event_buffer_exit(%struct.service_processor*) #1

declare dso_local i32 @kfree(%struct.service_processor*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
