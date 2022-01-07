; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_hpilo.c_ilo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_hpilo.c_ilo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.ilo_hwinfo = type { %struct.TYPE_3__, i32, i32, i32, %struct.pci_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@ilo_blacklist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Not supported on this device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@max_ccb = common dso_local global i32 0, align 4
@MAX_CCB = common dso_local global i32 0, align 4
@MIN_CCB = common dso_local global i32 0, align 4
@MAX_ILO_DEV = common dso_local global i32 0, align 4
@ilo_hwdev = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Error finding free device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ILO_NAME = common dso_local global i32 0, align 4
@ilo_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"hpilo\00", align 1
@ilo_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ilo_major = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Could not add cdev\0A\00", align 1
@ilo_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"hpilo!d%dccb%d\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Could not create files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ilo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilo_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ilo_hwinfo*, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @ilo_blacklist, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i64 @pci_match_id(i32 %12, %struct.pci_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 1
  %19 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %202

22:                                               ; preds = %2
  %23 = load i32, i32* @max_ccb, align 4
  %24 = load i32, i32* @MAX_CCB, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @MAX_CCB, align 4
  store i32 %27, i32* @max_ccb, align 4
  br label %35

28:                                               ; preds = %22
  %29 = load i32, i32* @max_ccb, align 4
  %30 = load i32, i32* @MIN_CCB, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @MIN_CCB, align 4
  store i32 %33, i32* @max_ccb, align 4
  br label %34

34:                                               ; preds = %32, %28
  br label %35

35:                                               ; preds = %34, %26
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MAX_ILO_DEV, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i32*, i32** @ilo_hwdev, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32*, i32** @ilo_hwdev, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 1, i32* %51, align 4
  br label %56

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %36

56:                                               ; preds = %47, %36
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @MAX_ILO_DEV, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 1
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %202

66:                                               ; preds = %56
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.ilo_hwinfo* @kzalloc(i32 24, i32 %69)
  store %struct.ilo_hwinfo* %70, %struct.ilo_hwinfo** %10, align 8
  %71 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %72 = icmp ne %struct.ilo_hwinfo* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  br label %196

74:                                               ; preds = %66
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %77 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %76, i32 0, i32 4
  store %struct.pci_dev* %75, %struct.pci_dev** %77, align 8
  %78 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %79 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %78, i32 0, i32 3
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %82 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %81, i32 0, i32 2
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %85 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %84, i32 0, i32 1
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = call i32 @pci_enable_device(%struct.pci_dev* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  br label %193

92:                                               ; preds = %74
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = call i32 @pci_set_master(%struct.pci_dev* %93)
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = load i32, i32* @ILO_NAME, align 4
  %97 = call i32 @pci_request_regions(%struct.pci_dev* %95, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %192

101:                                              ; preds = %92
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %104 = call i32 @ilo_map_device(%struct.pci_dev* %102, %struct.ilo_hwinfo* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %189

108:                                              ; preds = %101
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %111 = call i32 @pci_set_drvdata(%struct.pci_dev* %109, %struct.ilo_hwinfo* %110)
  %112 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %113 = call i32 @clear_device(%struct.ilo_hwinfo* %112)
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ilo_isr, align 4
  %118 = load i32, i32* @IRQF_SHARED, align 4
  %119 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %120 = call i32 @request_irq(i32 %116, i32 %117, i32 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.ilo_hwinfo* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %108
  br label %185

124:                                              ; preds = %108
  %125 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %126 = call i32 @ilo_enable_interrupts(%struct.ilo_hwinfo* %125)
  %127 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %128 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %127, i32 0, i32 0
  %129 = call i32 @cdev_init(%struct.TYPE_3__* %128, i32* @ilo_fops)
  %130 = load i32, i32* @THIS_MODULE, align 4
  %131 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %132 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @max_ccb, align 4
  %136 = mul nsw i32 %134, %135
  store i32 %136, i32* %8, align 4
  %137 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %138 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %137, i32 0, i32 0
  %139 = load i32, i32* @ilo_major, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @MKDEV(i32 %139, i32 %140)
  %142 = load i32, i32* @max_ccb, align 4
  %143 = call i32 @cdev_add(%struct.TYPE_3__* %138, i32 %141, i32 %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %124
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %147, i32 0, i32 1
  %149 = call i32 @dev_err(i32* %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %177

150:                                              ; preds = %124
  store i32 0, i32* %7, align 4
  br label %151

151:                                              ; preds = %173, %150
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @max_ccb, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %176

155:                                              ; preds = %151
  %156 = load i32, i32* @ilo_class, align 4
  %157 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %158 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %157, i32 0, i32 1
  %159 = load i32, i32* @ilo_major, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @MKDEV(i32 %159, i32 %160)
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call %struct.device* @device_create(i32 %156, i32* %158, i32 %161, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 %163)
  store %struct.device* %164, %struct.device** %11, align 8
  %165 = load %struct.device*, %struct.device** %11, align 8
  %166 = call i64 @IS_ERR(%struct.device* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %155
  %169 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %170 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %169, i32 0, i32 1
  %171 = call i32 @dev_err(i32* %170, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %172

172:                                              ; preds = %168, %155
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  br label %151

176:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %202

177:                                              ; preds = %146
  %178 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %179 = call i32 @ilo_disable_interrupts(%struct.ilo_hwinfo* %178)
  %180 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %181 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %184 = call i32 @free_irq(i32 %182, %struct.ilo_hwinfo* %183)
  br label %185

185:                                              ; preds = %177, %123
  %186 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %187 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %188 = call i32 @ilo_unmap_device(%struct.pci_dev* %186, %struct.ilo_hwinfo* %187)
  br label %189

189:                                              ; preds = %185, %107
  %190 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %191 = call i32 @pci_release_regions(%struct.pci_dev* %190)
  br label %192

192:                                              ; preds = %189, %100
  br label %193

193:                                              ; preds = %192, %91
  %194 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %10, align 8
  %195 = call i32 @kfree(%struct.ilo_hwinfo* %194)
  br label %196

196:                                              ; preds = %193, %73
  %197 = load i32*, i32** @ilo_hwdev, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 0, i32* %200, align 4
  %201 = load i32, i32* %9, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %196, %176, %60, %16
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i64 @pci_match_id(i32, %struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ilo_hwinfo* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @ilo_map_device(%struct.pci_dev*, %struct.ilo_hwinfo*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ilo_hwinfo*) #1

declare dso_local i32 @clear_device(%struct.ilo_hwinfo*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ilo_hwinfo*) #1

declare dso_local i32 @ilo_enable_interrupts(%struct.ilo_hwinfo*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local %struct.device* @device_create(i32, i32*, i32, i32*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @ilo_disable_interrupts(%struct.ilo_hwinfo*) #1

declare dso_local i32 @free_irq(i32, %struct.ilo_hwinfo*) #1

declare dso_local i32 @ilo_unmap_device(%struct.pci_dev*, %struct.ilo_hwinfo*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.ilo_hwinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
