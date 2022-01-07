; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs_drv.c_create_hdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs_drv.c_create_hdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i64, i32, i32, i32, i32, %struct.pci_dev*, i32, i64, i32, i32 }
%struct.pci_dev = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASIC_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Unsupported ASIC\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@hl_major = common dso_local global i32 0, align 4
@reset_on_lockup = common dso_local global i32 0, align 4
@timeout_locked = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@hl_devs_idr_lock = common dso_local global i32 0, align 4
@hl_devs_idr = common dso_local global i32 0, align 4
@HL_MAX_MINORS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"too many devices in the system\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_hdev(%struct.hl_device** %0, %struct.pci_dev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hl_device**, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hl_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hl_device** %0, %struct.hl_device*** %6, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.hl_device**, %struct.hl_device*** %6, align 8
  store %struct.hl_device* null, %struct.hl_device** %14, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.hl_device* @kzalloc(i32 56, i32 %15)
  store %struct.hl_device* %16, %struct.hl_device** %10, align 8
  %17 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %18 = icmp ne %struct.hl_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %138

22:                                               ; preds = %4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %24 = icmp ne %struct.pci_dev* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @get_asic_type(i32 %28)
  %30 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %31 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %33 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ASIC_INVALID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %134

43:                                               ; preds = %25
  br label %49

44:                                               ; preds = %22
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %48 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %43
  %50 = load i32, i32* @hl_major, align 4
  %51 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %52 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @reset_on_lockup, align 4
  %54 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %55 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 8
  %56 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %57 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %59 = call i32 @set_driver_behavior_per_device(%struct.hl_device* %58)
  %60 = load i32, i32* @timeout_locked, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load i32, i32* @timeout_locked, align 4
  %64 = mul nsw i32 %63, 1000
  %65 = call i32 @msecs_to_jiffies(i32 %64)
  %66 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %67 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  br label %72

68:                                               ; preds = %49
  %69 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %70 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %71 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %62
  %73 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %74 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %76 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %77 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %76, i32 0, i32 5
  store %struct.pci_dev* %75, %struct.pci_dev** %77, align 8
  %78 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %79 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %78, i32 0, i32 2
  store i32 32, i32* %79, align 4
  %80 = call i32 @mutex_lock(i32* @hl_devs_idr_lock)
  %81 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %82 = load i32, i32* @HL_MAX_MINORS, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i32 @idr_alloc(i32* @hl_devs_idr, %struct.hl_device* %81, i32 0, i32 %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %72
  %88 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 2
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i32 @idr_alloc(i32* @hl_devs_idr, %struct.hl_device* %88, i32 %90, i32 %92, i32 %93)
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %87, %72
  %96 = call i32 @mutex_unlock(i32* @hl_devs_idr_lock)
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %99, %95
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @ENOSPC, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @ENOSPC, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %107, %102
  %113 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32, i32* %12, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = call i32 @mutex_lock(i32* @hl_devs_idr_lock)
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @idr_remove(i32* @hl_devs_idr, i32 %119)
  %121 = call i32 @mutex_unlock(i32* @hl_devs_idr_lock)
  br label %122

122:                                              ; preds = %117, %114
  %123 = load i32, i32* @EBUSY, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %11, align 4
  br label %134

125:                                              ; preds = %99
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %128 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %131 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %133 = load %struct.hl_device**, %struct.hl_device*** %6, align 8
  store %struct.hl_device* %132, %struct.hl_device** %133, align 8
  store i32 0, i32* %5, align 4
  br label %138

134:                                              ; preds = %122, %37
  %135 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %136 = call i32 @kfree(%struct.hl_device* %135)
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %134, %125, %19
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.hl_device* @kzalloc(i32, i32) #1

declare dso_local i64 @get_asic_type(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @set_driver_behavior_per_device(%struct.hl_device*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.hl_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.hl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
