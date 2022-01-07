; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_kim_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_kim_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ti_st_plat_data* }
%struct.ti_st_plat_data = type { i32, i32, i32, i32 }
%struct.kim_data_s = type { %struct.TYPE_5__*, i32, i32, i32, i32, i32, %struct.platform_device*, i32 }
%struct.TYPE_5__ = type { %struct.kim_data_s* }

@MAX_ST_DEVICES = common dso_local global i32 0, align 4
@st_kim_devices = common dso_local global %struct.platform_device** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no mem to allocate\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c" ST core init failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"kim\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" gpio %d request failed \00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c" unable to configure gpio %d\00", align 1
@uim_attr_grp = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to create sysfs entries\00", align 1
@UART_DEV_NAME_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"sysfs entries created\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ti-st\00", align 1
@kim_debugfs_dir = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@version_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"protocols\00", align 1
@list_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kim_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kim_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.kim_data_s*, align 8
  %5 = alloca %struct.ti_st_plat_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %9, align 8
  store %struct.ti_st_plat_data* %10, %struct.ti_st_plat_data** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAX_ST_DEVICES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.platform_device**, %struct.platform_device*** @st_kim_devices, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %23, i64 %27
  store %struct.platform_device* %22, %struct.platform_device** %28, align 8
  br label %33

29:                                               ; preds = %15, %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.platform_device**, %struct.platform_device*** @st_kim_devices, align 8
  %32 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %31, i64 0
  store %struct.platform_device* %30, %struct.platform_device** %32, align 8
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.kim_data_s* @kzalloc(i32 48, i32 %34)
  store %struct.kim_data_s* %35, %struct.kim_data_s** %4, align 8
  %36 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %37 = icmp ne %struct.kim_data_s* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %147

42:                                               ; preds = %33
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %43, %struct.kim_data_s* %44)
  %46 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %47 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %46, i32 0, i32 0
  %48 = call i32 @st_core_init(%struct.TYPE_5__** %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %143

55:                                               ; preds = %42
  %56 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %57 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %58 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store %struct.kim_data_s* %56, %struct.kim_data_s** %60, align 8
  %61 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %5, align 8
  %62 = getelementptr inbounds %struct.ti_st_plat_data, %struct.ti_st_plat_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %65 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 8
  %66 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %67 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @gpio_request(i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %55
  %74 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %75 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %138

78:                                               ; preds = %55
  %79 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %80 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @gpio_direction_output(i32 %81, i32 0)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %88 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %138

91:                                               ; preds = %78
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %94 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %93, i32 0, i32 6
  store %struct.platform_device* %92, %struct.platform_device** %94, align 8
  %95 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %96 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %95, i32 0, i32 5
  %97 = call i32 @init_completion(i32* %96)
  %98 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %99 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %98, i32 0, i32 4
  %100 = call i32 @init_completion(i32* %99)
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @sysfs_create_group(i32* %103, i32* @uim_attr_grp)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %91
  %108 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %138

109:                                              ; preds = %91
  %110 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %111 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %5, align 8
  %114 = getelementptr inbounds %struct.ti_st_plat_data, %struct.ti_st_plat_data* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @UART_DEV_NAME_LEN, align 4
  %117 = call i32 @strncpy(i32 %112, i32 %115, i32 %116)
  %118 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %5, align 8
  %119 = getelementptr inbounds %struct.ti_st_plat_data, %struct.ti_st_plat_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %122 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %5, align 8
  %124 = getelementptr inbounds %struct.ti_st_plat_data, %struct.ti_st_plat_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %127 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %129 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* null)
  store i32 %129, i32* @kim_debugfs_dir, align 4
  %130 = load i32, i32* @S_IRUGO, align 4
  %131 = load i32, i32* @kim_debugfs_dir, align 4
  %132 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %133 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %130, i32 %131, %struct.kim_data_s* %132, i32* @version_fops)
  %134 = load i32, i32* @S_IRUGO, align 4
  %135 = load i32, i32* @kim_debugfs_dir, align 4
  %136 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %137 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %134, i32 %135, %struct.kim_data_s* %136, i32* @list_fops)
  store i32 0, i32* %2, align 4
  br label %147

138:                                              ; preds = %107, %86, %73
  %139 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %140 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %139, i32 0, i32 0
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = call i32 @st_core_exit(%struct.TYPE_5__* %141)
  br label %143

143:                                              ; preds = %138, %51
  %144 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %145 = call i32 @kfree(%struct.kim_data_s* %144)
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %143, %109, %38
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.kim_data_s* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.kim_data_s*) #1

declare dso_local i32 @st_core_init(%struct.TYPE_5__**) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.kim_data_s*, i32*) #1

declare dso_local i32 @st_core_exit(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.kim_data_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
