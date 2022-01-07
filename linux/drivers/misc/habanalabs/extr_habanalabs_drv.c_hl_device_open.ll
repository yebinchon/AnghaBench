; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs_drv.c_hl_device_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs_drv.c_hl_device_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.hl_fpriv* }
%struct.hl_fpriv = type { i32, i32, i32, %struct.hl_device*, i32, i32, i32, %struct.file* }
%struct.hl_device = type { i32, i32, i32, i64, i64 }

@hl_devs_idr_lock = common dso_local global i32 0, align 4
@hl_devs_idr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't find device %d:%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Can't open %s because it is disabled or in reset\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Can't open %s because it is being debugged by another user\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Can't open %s because another user is working on it\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to create context %d\0A\00", align 1
@PLL_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_device_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca %struct.hl_fpriv*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = call i32 @mutex_lock(i32* @hl_devs_idr_lock)
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  %12 = call %struct.hl_device* @idr_find(i32* @hl_devs_idr, i32 %11)
  store %struct.hl_device* %12, %struct.hl_device** %6, align 8
  %13 = call i32 @mutex_unlock(i32* @hl_devs_idr_lock)
  %14 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %15 = icmp ne %struct.hl_device* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @imajor(%struct.inode* %17)
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i32 @iminor(%struct.inode* %19)
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %166

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.hl_fpriv* @kzalloc(i32 48, i32 %25)
  store %struct.hl_fpriv* %26, %struct.hl_fpriv** %7, align 8
  %27 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %28 = icmp ne %struct.hl_fpriv* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %166

32:                                               ; preds = %24
  %33 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %34 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %35 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %34, i32 0, i32 3
  store %struct.hl_device* %33, %struct.hl_device** %35, align 8
  %36 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  store %struct.hl_fpriv* %36, %struct.hl_fpriv** %38, align 8
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %41 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %40, i32 0, i32 7
  store %struct.file* %39, %struct.file** %41, align 8
  %42 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %43 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %42, i32 0, i32 1
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %46 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %45, i32 0, i32 6
  %47 = call i32 @kref_init(i32* %46)
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = load %struct.file*, %struct.file** %5, align 8
  %50 = call i32 @nonseekable_open(%struct.inode* %48, %struct.file* %49)
  %51 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %52 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %51, i32 0, i32 4
  %53 = call i32 @hl_cb_mgr_init(i32* %52)
  %54 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %55 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %54, i32 0, i32 2
  %56 = call i32 @hl_ctx_mgr_init(i32* %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @find_get_pid(i32 %59)
  %61 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %62 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %64 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %67 = call i64 @hl_device_disabled_or_in_reset(%struct.hl_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %32
  %70 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %71 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %74 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_name(i32 %75)
  %77 = call i32 @dev_err_ratelimited(i32 %72, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EPERM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %138

80:                                               ; preds = %32
  %81 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %82 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %87 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %90 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_name(i32 %91)
  %93 = call i32 @dev_err_ratelimited(i32 %88, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EPERM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %138

96:                                               ; preds = %80
  %97 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %98 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %103 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %106 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_name(i32 %107)
  %109 = call i32 @dev_dbg_ratelimited(i32 %104, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EBUSY, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %8, align 4
  br label %138

112:                                              ; preds = %96
  %113 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %114 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %115 = call i32 @hl_ctx_create(%struct.hl_device* %113, %struct.hl_fpriv* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %120 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @dev_err(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  br label %138

124:                                              ; preds = %112
  %125 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %126 = load i32, i32* @PLL_HIGH, align 4
  %127 = call i32 @hl_device_set_frequency(%struct.hl_device* %125, i32 %126)
  %128 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %129 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %128, i32 0, i32 5
  %130 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %131 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %130, i32 0, i32 1
  %132 = call i32 @list_add(i32* %129, i32* %131)
  %133 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %134 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %137 = call i32 @hl_debugfs_add_file(%struct.hl_fpriv* %136)
  store i32 0, i32* %3, align 4
  br label %166

138:                                              ; preds = %118, %101, %85, %69
  %139 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %140 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %139, i32 0, i32 0
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %143 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %142, i32 0, i32 3
  %144 = load %struct.hl_device*, %struct.hl_device** %143, align 8
  %145 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %146 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %145, i32 0, i32 4
  %147 = call i32 @hl_cb_mgr_fini(%struct.hl_device* %144, i32* %146)
  %148 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %149 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %148, i32 0, i32 3
  %150 = load %struct.hl_device*, %struct.hl_device** %149, align 8
  %151 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %152 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %151, i32 0, i32 2
  %153 = call i32 @hl_ctx_mgr_fini(%struct.hl_device* %150, i32* %152)
  %154 = load %struct.file*, %struct.file** %5, align 8
  %155 = getelementptr inbounds %struct.file, %struct.file* %154, i32 0, i32 0
  store %struct.hl_fpriv* null, %struct.hl_fpriv** %155, align 8
  %156 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %157 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %156, i32 0, i32 1
  %158 = call i32 @mutex_destroy(i32* %157)
  %159 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %160 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @put_pid(i32 %161)
  %163 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %164 = call i32 @kfree(%struct.hl_fpriv* %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %138, %124, %29, %16
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hl_device* @idr_find(i32*, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local %struct.hl_fpriv* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @hl_cb_mgr_init(i32*) #1

declare dso_local i32 @hl_ctx_mgr_init(i32*) #1

declare dso_local i32 @find_get_pid(i32) #1

declare dso_local i64 @hl_device_disabled_or_in_reset(%struct.hl_device*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @hl_ctx_create(%struct.hl_device*, %struct.hl_fpriv*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @hl_device_set_frequency(%struct.hl_device*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hl_debugfs_add_file(%struct.hl_fpriv*) #1

declare dso_local i32 @hl_cb_mgr_fini(%struct.hl_device*, i32*) #1

declare dso_local i32 @hl_ctx_mgr_fini(%struct.hl_device*, i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @kfree(%struct.hl_fpriv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
