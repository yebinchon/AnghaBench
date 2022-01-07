; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_gluebi.c_gluebi_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_gluebi.c_gluebi_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device_info = type { i32, i32 }
%struct.ubi_volume_info = type { i64, i64, i64, i32, i32, i64, i64, i32 }
%struct.gluebi_device = type { i32, %struct.mtd_info, i32, i32 }
%struct.mtd_info = type { i64, %struct.gluebi_device*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTD_UBIVOLUME = common dso_local global i32 0, align 4
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@gluebi_read = common dso_local global i32 0, align 4
@gluebi_write = common dso_local global i32 0, align 4
@gluebi_erase = common dso_local global i32 0, align 4
@gluebi_get_device = common dso_local global i32 0, align 4
@gluebi_put_device = common dso_local global i32 0, align 4
@UBI_DYNAMIC_VOLUME = common dso_local global i64 0, align 8
@devices_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"gluebi MTD device %d form UBI device %d volume %d already exists\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot add MTD device\00", align 1
@ENFILE = common dso_local global i32 0, align 4
@gluebi_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device_info*, %struct.ubi_volume_info*)* @gluebi_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gluebi_create(%struct.ubi_device_info* %0, %struct.ubi_volume_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device_info*, align 8
  %5 = alloca %struct.ubi_volume_info*, align 8
  %6 = alloca %struct.gluebi_device*, align 8
  %7 = alloca %struct.gluebi_device*, align 8
  %8 = alloca %struct.mtd_info*, align 8
  store %struct.ubi_device_info* %0, %struct.ubi_device_info** %4, align 8
  store %struct.ubi_volume_info* %1, %struct.ubi_volume_info** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.gluebi_device* @kzalloc(i32 80, i32 %9)
  store %struct.gluebi_device* %10, %struct.gluebi_device** %6, align 8
  %11 = load %struct.gluebi_device*, %struct.gluebi_device** %6, align 8
  %12 = icmp ne %struct.gluebi_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %155

16:                                               ; preds = %2
  %17 = load %struct.gluebi_device*, %struct.gluebi_device** %6, align 8
  %18 = getelementptr inbounds %struct.gluebi_device, %struct.gluebi_device* %17, i32 0, i32 1
  store %struct.mtd_info* %18, %struct.mtd_info** %8, align 8
  %19 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %20 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %23 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.gluebi_device* @kmemdup(i32 %21, i64 %25, i32 %26)
  %28 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 1
  store %struct.gluebi_device* %27, %struct.gluebi_device** %29, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 1
  %32 = load %struct.gluebi_device*, %struct.gluebi_device** %31, align 8
  %33 = icmp ne %struct.gluebi_device* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %16
  %35 = load %struct.gluebi_device*, %struct.gluebi_device** %6, align 8
  %36 = call i32 @kfree(%struct.gluebi_device* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %155

39:                                               ; preds = %16
  %40 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %41 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.gluebi_device*, %struct.gluebi_device** %6, align 8
  %44 = getelementptr inbounds %struct.gluebi_device, %struct.gluebi_device* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %46 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.gluebi_device*, %struct.gluebi_device** %6, align 8
  %49 = getelementptr inbounds %struct.gluebi_device, %struct.gluebi_device* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @MTD_UBIVOLUME, align 4
  %51 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %52 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ubi_device_info*, %struct.ubi_device_info** %4, align 8
  %54 = getelementptr inbounds %struct.ubi_device_info, %struct.ubi_device_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %39
  %58 = load i32, i32* @MTD_WRITEABLE, align 4
  %59 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %60 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %59, i32 0, i32 11
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %39
  %62 = load i32, i32* @THIS_MODULE, align 4
  %63 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %64 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ubi_device_info*, %struct.ubi_device_info** %4, align 8
  %66 = getelementptr inbounds %struct.ubi_device_info, %struct.ubi_device_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %69 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %71 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %74 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %73, i32 0, i32 8
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @gluebi_read, align 4
  %76 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %77 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @gluebi_write, align 4
  %79 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %80 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @gluebi_erase, align 4
  %82 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %83 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @gluebi_get_device, align 4
  %85 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %86 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @gluebi_put_device, align 4
  %88 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %89 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %91 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @UBI_DYNAMIC_VOLUME, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %61
  %96 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %97 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %100 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = mul i64 %98, %101
  %103 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %104 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %111

105:                                              ; preds = %61
  %106 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %107 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %110 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %105, %95
  %112 = call i32 @mutex_lock(i32* @devices_mutex)
  %113 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %114 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %117 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call %struct.gluebi_device* @find_gluebi_nolock(i32 %115, i32 %118)
  store %struct.gluebi_device* %119, %struct.gluebi_device** %7, align 8
  %120 = load %struct.gluebi_device*, %struct.gluebi_device** %7, align 8
  %121 = icmp ne %struct.gluebi_device* %120, null
  br i1 %121, label %122, label %134

122:                                              ; preds = %111
  %123 = load %struct.gluebi_device*, %struct.gluebi_device** %7, align 8
  %124 = getelementptr inbounds %struct.gluebi_device, %struct.gluebi_device* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %128 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %5, align 8
  %131 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i8*, ...) @err_msg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %122, %111
  %135 = call i32 @mutex_unlock(i32* @devices_mutex)
  %136 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %137 = call i64 @mtd_device_register(%struct.mtd_info* %136, i32* null, i32 0)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = call i32 (i8*, ...) @err_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %142 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %141, i32 0, i32 1
  %143 = load %struct.gluebi_device*, %struct.gluebi_device** %142, align 8
  %144 = call i32 @kfree(%struct.gluebi_device* %143)
  %145 = load %struct.gluebi_device*, %struct.gluebi_device** %6, align 8
  %146 = call i32 @kfree(%struct.gluebi_device* %145)
  %147 = load i32, i32* @ENFILE, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %155

149:                                              ; preds = %134
  %150 = call i32 @mutex_lock(i32* @devices_mutex)
  %151 = load %struct.gluebi_device*, %struct.gluebi_device** %6, align 8
  %152 = getelementptr inbounds %struct.gluebi_device, %struct.gluebi_device* %151, i32 0, i32 0
  %153 = call i32 @list_add_tail(i32* %152, i32* @gluebi_devices)
  %154 = call i32 @mutex_unlock(i32* @devices_mutex)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %149, %139, %34, %13
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.gluebi_device* @kzalloc(i32, i32) #1

declare dso_local %struct.gluebi_device* @kmemdup(i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.gluebi_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gluebi_device* @find_gluebi_nolock(i32, i32) #1

declare dso_local i32 @err_msg(i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
