; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_phantom.c_phantom_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_phantom.c_phantom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.phantom_device = type { i32*, i32*, i32*, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"pci_enable_device failed!\0A\00", align 1
@PHANTOM_MAX_MINORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"too many devices found!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@phantom_devices = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"phantom\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"pci_request_regions failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"unable to allocate device\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"can't remap conf space\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"can't remap input space\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"can't remap output space\0A\00", align 1
@phantom_file_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@PHN_IRQCTL = common dso_local global i32 0, align 4
@phantom_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"can't establish ISR\0A\00", align 1
@phantom_major = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"chardev registration failed\0A\00", align 1
@phantom_class = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"phantom%u\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"can't create device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @phantom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phantom_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.phantom_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %208

17:                                               ; preds = %2
  %18 = call i32 (...) @phantom_get_free()
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PHANTOM_MAX_MINORS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %205

28:                                               ; preds = %17
  %29 = load i32*, i32** @phantom_devices, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 1, i32* %32, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pci_request_regions(%struct.pci_dev* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 1
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %200

41:                                               ; preds = %28
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.phantom_device* @kzalloc(i32 40, i32 %44)
  store %struct.phantom_device* %45, %struct.phantom_device** %6, align 8
  %46 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %47 = icmp eq %struct.phantom_device* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 1
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %197

52:                                               ; preds = %41
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i8* @pci_iomap(%struct.pci_dev* %53, i32 0, i32 0)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %57 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %59 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 1
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %194

66:                                               ; preds = %52
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i8* @pci_iomap(%struct.pci_dev* %67, i32 2, i32 0)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %71 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %73 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 1
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %188

80:                                               ; preds = %66
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = call i8* @pci_iomap(%struct.pci_dev* %81, i32 3, i32 0)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %85 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  %86 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %87 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 1
  %93 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %182

94:                                               ; preds = %80
  %95 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %96 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %95, i32 0, i32 6
  %97 = call i32 @mutex_init(i32* %96)
  %98 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %99 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %98, i32 0, i32 5
  %100 = call i32 @spin_lock_init(i32* %99)
  %101 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %102 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %101, i32 0, i32 4
  %103 = call i32 @init_waitqueue_head(i32* %102)
  %104 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %105 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %104, i32 0, i32 3
  %106 = call i32 @cdev_init(%struct.TYPE_3__* %105, i32* @phantom_file_ops)
  %107 = load i32, i32* @THIS_MODULE, align 4
  %108 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %109 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %112 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @PHN_IRQCTL, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = call i32 @iowrite32(i32 0, i32* %116)
  %118 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %119 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @PHN_IRQCTL, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i32 @ioread32(i32* %123)
  %125 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @phantom_isr, align 4
  %129 = load i32, i32* @IRQF_SHARED, align 4
  %130 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %131 = call i32 @request_irq(i32 %127, i32 %128, i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.phantom_device* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %94
  %135 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 1
  %137 = call i32 @dev_err(i32* %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %176

138:                                              ; preds = %94
  %139 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %140 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %139, i32 0, i32 3
  %141 = load i32, i32* @phantom_major, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @MKDEV(i32 %141, i32 %142)
  %144 = call i32 @cdev_add(%struct.TYPE_3__* %140, i32 %143, i32 1)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %138
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %148, i32 0, i32 1
  %150 = call i32 @dev_err(i32* %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %170

151:                                              ; preds = %138
  %152 = load i32, i32* @phantom_class, align 4
  %153 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 1
  %155 = load i32, i32* @phantom_major, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @MKDEV(i32 %155, i32 %156)
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @device_create(i32 %152, i32* %154, i32 %157, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %158)
  %160 = call i64 @IS_ERR(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %151
  %163 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %164 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %163, i32 0, i32 1
  %165 = call i32 @dev_err(i32* %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %166

166:                                              ; preds = %162, %151
  %167 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %168 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %169 = call i32 @pci_set_drvdata(%struct.pci_dev* %167, %struct.phantom_device* %168)
  store i32 0, i32* %3, align 4
  br label %210

170:                                              ; preds = %147
  %171 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %172 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %175 = call i32 @free_irq(i32 %173, %struct.phantom_device* %174)
  br label %176

176:                                              ; preds = %170, %134
  %177 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %178 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %179 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @pci_iounmap(%struct.pci_dev* %177, i32* %180)
  br label %182

182:                                              ; preds = %176, %90
  %183 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %184 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %185 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @pci_iounmap(%struct.pci_dev* %183, i32* %186)
  br label %188

188:                                              ; preds = %182, %76
  %189 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %190 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %191 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @pci_iounmap(%struct.pci_dev* %189, i32* %192)
  br label %194

194:                                              ; preds = %188, %62
  %195 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %196 = call i32 @kfree(%struct.phantom_device* %195)
  br label %197

197:                                              ; preds = %194, %48
  %198 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %199 = call i32 @pci_release_regions(%struct.pci_dev* %198)
  br label %200

200:                                              ; preds = %197, %37
  %201 = load i32*, i32** @phantom_devices, align 8
  %202 = load i32, i32* %7, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 0, i32* %204, align 4
  br label %205

205:                                              ; preds = %200, %22
  %206 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %207 = call i32 @pci_disable_device(%struct.pci_dev* %206)
  br label %208

208:                                              ; preds = %205, %13
  %209 = load i32, i32* %8, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %208, %166
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @phantom_get_free(...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local %struct.phantom_device* @kzalloc(i32, i32) #1

declare dso_local i8* @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.phantom_device*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.phantom_device*) #1

declare dso_local i32 @free_irq(i32, %struct.phantom_device*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32*) #1

declare dso_local i32 @kfree(%struct.phantom_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
