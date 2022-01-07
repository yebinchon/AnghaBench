; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.cobalt = type { i32, %struct.TYPE_4__, i32*, %struct.pci_dev*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@cobalt_instance = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"cobalt: v4l2_device_register of card %d failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"cobalt-%d\00", align 1
@cobalt_notify = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Initializing card %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Could not create workqueue\0A\00", align 1
@cobalt_irq_work_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Not able to read the HDL info\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@COBALT_SYS_STAT_BASE = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_HSMA_PRSNTN_MSK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Error %d registering device nodes\0A\00", align 1
@core = common dso_local global i32 0, align 4
@interrupt_service_routine = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Initialized cobalt card\0A\00", align 1
@COBALT_SYS_CTRL_HSMA_TX_ENABLE_BIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"error %d on initialization\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cobalt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.cobalt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 @atomic_inc_return(i32* @cobalt_instance)
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cobalt* @kzalloc(i32 40, i32 %11)
  store %struct.cobalt* %12, %struct.cobalt** %6, align 8
  %13 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %14 = icmp eq %struct.cobalt* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %177

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %21 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %20, i32 0, i32 3
  store %struct.pci_dev* %19, %struct.pci_dev** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %24 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %28 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %27, i32 0, i32 1
  %29 = call i32 @v4l2_device_register(i32* %26, %struct.TYPE_4__* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %18
  %33 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %34 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %38 = call i32 @kfree(%struct.cobalt* %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %177

40:                                               ; preds = %18
  %41 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %42 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %46 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @snprintf(i32 %44, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @cobalt_notify, align 4
  %50 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %51 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %54 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %58 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @create_singlethread_workqueue(i32 %60)
  %62 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %63 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %65 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %40
  %69 = call i32 (i8*, ...) @cobalt_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %168

72:                                               ; preds = %40
  %73 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %74 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %73, i32 0, i32 5
  %75 = load i32, i32* @cobalt_irq_work_handler, align 4
  %76 = call i32 @INIT_WORK(i32* %74, i32 %75)
  %77 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %80 = call i32 @cobalt_setup_pci(%struct.cobalt* %77, %struct.pci_dev* %78, %struct.pci_device_id* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %163

84:                                               ; preds = %72
  %85 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %86 = call i64 @cobalt_hdl_info_get(%struct.cobalt* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %95

90:                                               ; preds = %84
  %91 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %92 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %90, %88
  %96 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %97 = call i32 @cobalt_i2c_init(%struct.cobalt* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %148

101:                                              ; preds = %95
  %102 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %103 = call i32 @cobalt_stream_struct_init(%struct.cobalt* %102)
  %104 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %105 = call i32 @cobalt_subdevs_init(%struct.cobalt* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %142

109:                                              ; preds = %101
  %110 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %111 = load i32, i32* @COBALT_SYS_STAT_BASE, align 4
  %112 = call i32 @cobalt_read_bar1(%struct.cobalt* %110, i32 %111)
  %113 = load i32, i32* @COBALT_SYSSTAT_HSMA_PRSNTN_MSK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %118 = call i32 @cobalt_subdevs_hsma_init(%struct.cobalt* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %142

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %109
  %124 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %125 = call i32 @cobalt_nodes_register(%struct.cobalt* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* %7, align 4
  %130 = call i32 (i8*, ...) @cobalt_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  br label %142

131:                                              ; preds = %123
  %132 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %133 = call i32 @cobalt_set_interrupt(%struct.cobalt* %132, i32 1)
  %134 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %135 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %134, i32 0, i32 1
  %136 = load i32, i32* @core, align 4
  %137 = load i32, i32* @interrupt_service_routine, align 4
  %138 = call i32 @v4l2_device_call_all(%struct.TYPE_4__* %135, i32 0, i32 %136, i32 %137, i32 0, i32* null)
  %139 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %140 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %141 = call i32 @cobalt_flash_probe(%struct.cobalt* %140)
  store i32 0, i32* %3, align 4
  br label %177

142:                                              ; preds = %128, %121, %108
  %143 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %144 = call i32 @cobalt_i2c_exit(%struct.cobalt* %143)
  %145 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %146 = load i32, i32* @COBALT_SYS_CTRL_HSMA_TX_ENABLE_BIT, align 4
  %147 = call i32 @cobalt_s_bit_sysctrl(%struct.cobalt* %145, i32 %146, i32 0)
  br label %148

148:                                              ; preds = %142, %100
  %149 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %150 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %151 = call i32 @cobalt_free_msi(%struct.cobalt* %149, %struct.pci_dev* %150)
  %152 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %153 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %154 = call i32 @cobalt_pci_iounmap(%struct.cobalt* %152, %struct.pci_dev* %153)
  %155 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %156 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %155, i32 0, i32 3
  %157 = load %struct.pci_dev*, %struct.pci_dev** %156, align 8
  %158 = call i32 @pci_release_regions(%struct.pci_dev* %157)
  %159 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %160 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %159, i32 0, i32 3
  %161 = load %struct.pci_dev*, %struct.pci_dev** %160, align 8
  %162 = call i32 @pci_disable_device(%struct.pci_dev* %161)
  br label %163

163:                                              ; preds = %148, %83
  %164 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %165 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @destroy_workqueue(i32* %166)
  br label %168

168:                                              ; preds = %163, %68
  %169 = load i32, i32* %7, align 4
  %170 = call i32 (i8*, ...) @cobalt_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %169)
  %171 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %172 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %171, i32 0, i32 1
  %173 = call i32 @v4l2_device_unregister(%struct.TYPE_4__* %172)
  %174 = load %struct.cobalt*, %struct.cobalt** %6, align 8
  %175 = call i32 @kfree(%struct.cobalt* %174)
  %176 = load i32, i32* %7, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %168, %131, %32, %15
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.cobalt* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(%struct.cobalt*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @cobalt_info(i8*, ...) #1

declare dso_local i32* @create_singlethread_workqueue(i32) #1

declare dso_local i32 @cobalt_err(i8*, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @cobalt_setup_pci(%struct.cobalt*, %struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i64 @cobalt_hdl_info_get(%struct.cobalt*) #1

declare dso_local i32 @cobalt_i2c_init(%struct.cobalt*) #1

declare dso_local i32 @cobalt_stream_struct_init(%struct.cobalt*) #1

declare dso_local i32 @cobalt_subdevs_init(%struct.cobalt*) #1

declare dso_local i32 @cobalt_read_bar1(%struct.cobalt*, i32) #1

declare dso_local i32 @cobalt_subdevs_hsma_init(%struct.cobalt*) #1

declare dso_local i32 @cobalt_nodes_register(%struct.cobalt*) #1

declare dso_local i32 @cobalt_set_interrupt(%struct.cobalt*, i32) #1

declare dso_local i32 @v4l2_device_call_all(%struct.TYPE_4__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cobalt_flash_probe(%struct.cobalt*) #1

declare dso_local i32 @cobalt_i2c_exit(%struct.cobalt*) #1

declare dso_local i32 @cobalt_s_bit_sysctrl(%struct.cobalt*, i32, i32) #1

declare dso_local i32 @cobalt_free_msi(%struct.cobalt*, %struct.pci_dev*) #1

declare dso_local i32 @cobalt_pci_iounmap(%struct.cobalt*, %struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
