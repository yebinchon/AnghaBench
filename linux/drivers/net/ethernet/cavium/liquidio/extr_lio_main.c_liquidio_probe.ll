; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handshake = type { i32, %struct.pci_dev*, i32 }
%struct.pci_dev = type { i64, i32, i32, i32, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.octeon_device = type { i32, i32, i64, i32, i32, %struct.TYPE_4__*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unable to allocate device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OCTEON_CN23XX_PF_VID = common dso_local global i64 0, align 8
@LIO_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@OCTEON_CN66XX = common dso_local global i64 0, align 8
@OCTEON_CN68XX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Initializing device %x:%x.\0A\00", align 1
@handshake = common dso_local global %struct.handshake* null, align 8
@first_stage = common dso_local global i32 0, align 4
@liquidio_watchdog = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"liowd/%02hhx:%02hhx.%hhx\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to create kernel_thread\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Device is ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @liquidio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.octeon_device*, align 8
  %7 = alloca %struct.handshake*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.octeon_device* null, %struct.octeon_device** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.octeon_device* @octeon_allocate_device(i64 %13, i32 4)
  store %struct.octeon_device* %14, %struct.octeon_device** %6, align 8
  %15 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %16 = icmp ne %struct.octeon_device* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 6
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %177

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OCTEON_CN23XX_PF_VID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @LIO_FLAG_MSIX_ENABLED, align 4
  %31 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %32 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OCTEON_CN66XX, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @OCTEON_CN68XX, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %33
  %46 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %47 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %51

48:                                               ; preds = %39
  %49 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %50 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 6
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @dev_info(i32* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %65 = call i32 @pci_set_drvdata(%struct.pci_dev* %63, %struct.octeon_device* %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = bitcast %struct.pci_dev* %66 to i8*
  %68 = bitcast i8* %67 to %struct.TYPE_4__*
  %69 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 5
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %70, align 8
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 16
  %78 = or i32 %73, %77
  %79 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %80 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.handshake*, %struct.handshake** @handshake, align 8
  %82 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %83 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.handshake, %struct.handshake* %81, i64 %84
  store %struct.handshake* %85, %struct.handshake** %7, align 8
  %86 = load %struct.handshake*, %struct.handshake** %7, align 8
  %87 = getelementptr inbounds %struct.handshake, %struct.handshake* %86, i32 0, i32 0
  %88 = call i32 @init_completion(i32* %87)
  %89 = load %struct.handshake*, %struct.handshake** %7, align 8
  %90 = getelementptr inbounds %struct.handshake, %struct.handshake* %89, i32 0, i32 2
  %91 = call i32 @init_completion(i32* %90)
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = load %struct.handshake*, %struct.handshake** %7, align 8
  %94 = getelementptr inbounds %struct.handshake, %struct.handshake* %93, i32 0, i32 1
  store %struct.pci_dev* %92, %struct.pci_dev** %94, align 8
  %95 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %96 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %51
  %100 = call i32 @complete(i32* @first_stage)
  br label %101

101:                                              ; preds = %99, %51
  %102 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %103 = call i64 @octeon_device_init(%struct.octeon_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load %struct.handshake*, %struct.handshake** %7, align 8
  %107 = getelementptr inbounds %struct.handshake, %struct.handshake* %106, i32 0, i32 0
  %108 = call i32 @complete(i32* %107)
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = call i32 @liquidio_remove(%struct.pci_dev* %109)
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %177

113:                                              ; preds = %101
  %114 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %115 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %167

117:                                              ; preds = %113
  %118 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %119 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @atomic_read(i32 %120)
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %166

123:                                              ; preds = %117
  %124 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %8, align 4
  %129 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %130 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @PCI_SLOT(i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %134 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @PCI_FUNC(i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* @liquidio_watchdog, align 4
  %138 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32* @kthread_create(i32 %137, %struct.octeon_device* %138, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %140, i32 %141)
  %143 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %144 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %143, i32 0, i32 6
  store i32* %142, i32** %144, align 8
  %145 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %146 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %145, i32 0, i32 6
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @IS_ERR(i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %123
  %151 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %152 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %151, i32 0, i32 6
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @wake_up_process(i32* %153)
  br label %165

155:                                              ; preds = %123
  %156 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %157 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %156, i32 0, i32 6
  store i32* null, i32** %157, align 8
  %158 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %159 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %158, i32 0, i32 5
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = call i32 @dev_err(i32* %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %163 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %164 = call i32 @liquidio_remove(%struct.pci_dev* %163)
  store i32 -1, i32* %3, align 4
  br label %177

165:                                              ; preds = %150
  br label %166

166:                                              ; preds = %165, %117
  br label %167

167:                                              ; preds = %166, %113
  %168 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %169 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %168, i32 0, i32 3
  store i32 1, i32* %169, align 8
  %170 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %171 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %170, i32 0, i32 4
  store i32 1, i32* %171, align 4
  %172 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %173 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %172, i32 0, i32 5
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = call i32 @dev_dbg(i32* %175, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %167, %155, %105, %17
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.octeon_device* @octeon_allocate_device(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.octeon_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i64 @octeon_device_init(%struct.octeon_device*) #1

declare dso_local i32 @liquidio_remove(%struct.pci_dev*) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i32 @atomic_read(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32* @kthread_create(i32, %struct.octeon_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @wake_up_process(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
