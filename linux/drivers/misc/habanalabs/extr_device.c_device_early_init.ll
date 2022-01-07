; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_device_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_device_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { {}*, {}* }

@.str = private unnamed_addr constant [5 x i8] c"GOYA\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unrecognized ASIC type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"hl-free-jobs\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to allocate CQ workqueue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"hl-events\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to allocate EQ workqueue\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@HL_IDLE_BUSY_TS_ARR_SIZE = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*)* @device_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_early_init(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %5 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %6 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %15 [
    i32 128, label %8
  ]

8:                                                ; preds = %1
  %9 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %10 = call i32 @goya_set_asic_funcs(%struct.hl_device* %9)
  %11 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 16
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strlcpy(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %17 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %16, i32 0, i32 15
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %20 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %170

25:                                               ; preds = %8
  %26 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %27 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.hl_device*)**
  %31 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %30, align 8
  %32 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %33 = call i32 %31(%struct.hl_device* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %170

38:                                               ; preds = %25
  %39 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %40 = call i32 @hl_asid_init(%struct.hl_device* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %151

44:                                               ; preds = %38
  %45 = load i32, i32* @WQ_UNBOUND, align 4
  %46 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 0)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %49 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %51 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %56 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %55, i32 0, i32 15
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %148

61:                                               ; preds = %44
  %62 = load i32, i32* @WQ_UNBOUND, align 4
  %63 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 0)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %66 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %65, i32 0, i32 3
  store i32* %64, i32** %66, align 8
  %67 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %68 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %73 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %72, i32 0, i32 15
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %143

78:                                               ; preds = %61
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i32 @kzalloc(i32 4, i32 %79)
  %81 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %82 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %84 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %138

90:                                               ; preds = %78
  %91 = load i32, i32* @HL_IDLE_BUSY_TS_ARR_SIZE, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = load i32, i32* @__GFP_ZERO, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @kmalloc_array(i32 %91, i32 4, i32 %94)
  %96 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %97 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %96, i32 0, i32 14
  store i32 %95, i32* %97, align 8
  %98 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %99 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %98, i32 0, i32 14
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %90
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %133

105:                                              ; preds = %90
  %106 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %107 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %106, i32 0, i32 13
  %108 = call i32 @hl_cb_mgr_init(i32* %107)
  %109 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %110 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %109, i32 0, i32 12
  %111 = call i32 @mutex_init(i32* %110)
  %112 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %113 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %112, i32 0, i32 11
  %114 = call i32 @mutex_init(i32* %113)
  %115 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %116 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %115, i32 0, i32 10
  %117 = call i32 @mutex_init(i32* %116)
  %118 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %119 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %118, i32 0, i32 9
  %120 = call i32 @INIT_LIST_HEAD(i32* %119)
  %121 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %122 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %121, i32 0, i32 8
  %123 = call i32 @spin_lock_init(i32* %122)
  %124 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %125 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %124, i32 0, i32 7
  %126 = call i32 @INIT_LIST_HEAD(i32* %125)
  %127 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %128 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %127, i32 0, i32 6
  %129 = call i32 @mutex_init(i32* %128)
  %130 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %131 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %130, i32 0, i32 5
  %132 = call i32 @atomic_set(i32* %131, i32 0)
  store i32 0, i32* %2, align 4
  br label %170

133:                                              ; preds = %102
  %134 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %135 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @kfree(i32 %136)
  br label %138

138:                                              ; preds = %133, %87
  %139 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %140 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @destroy_workqueue(i32* %141)
  br label %143

143:                                              ; preds = %138, %71
  %144 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %145 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @destroy_workqueue(i32* %146)
  br label %148

148:                                              ; preds = %143, %54
  %149 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %150 = call i32 @hl_asid_fini(%struct.hl_device* %149)
  br label %151

151:                                              ; preds = %148, %43
  %152 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %153 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %152, i32 0, i32 1
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = bitcast {}** %155 to i32 (%struct.hl_device*)**
  %157 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %156, align 8
  %158 = icmp ne i32 (%struct.hl_device*)* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %151
  %160 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %161 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %160, i32 0, i32 1
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = bitcast {}** %163 to i32 (%struct.hl_device*)**
  %165 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %164, align 8
  %166 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %167 = call i32 %165(%struct.hl_device* %166)
  br label %168

168:                                              ; preds = %159, %151
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %168, %105, %36, %15
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @goya_set_asic_funcs(%struct.hl_device*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @hl_asid_init(%struct.hl_device*) #1

declare dso_local i8* @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @hl_cb_mgr_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @hl_asid_fini(%struct.hl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
