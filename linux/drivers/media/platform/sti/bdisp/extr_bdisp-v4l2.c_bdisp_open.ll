; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.bdisp_dev = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.bdisp_ctx = type { %struct.TYPE_7__, i8*, i8*, i32, %struct.bdisp_dev* }

@ERESTARTSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no memory for nodes\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to create control\0A\00", align 1
@bdisp_dflt_fmt = common dso_local global i8* null, align 8
@queue_init = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to initialize m2m context\0A\00", align 1
@ST_M2M_OPEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"driver opened, ctx = 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @bdisp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.bdisp_dev*, align 8
  %5 = alloca %struct.bdisp_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.bdisp_dev* @video_drvdata(%struct.file* %7)
  store %struct.bdisp_dev* %8, %struct.bdisp_dev** %4, align 8
  store %struct.bdisp_ctx* null, %struct.bdisp_ctx** %5, align 8
  %9 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %10 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %9, i32 0, i32 0
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ERESTARTSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %138

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.bdisp_ctx* @kzalloc(i32 48, i32 %17)
  store %struct.bdisp_ctx* %18, %struct.bdisp_ctx** %5, align 8
  %19 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %20 = icmp ne %struct.bdisp_ctx* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %133

24:                                               ; preds = %16
  %25 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %26 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %26, i32 0, i32 4
  store %struct.bdisp_dev* %25, %struct.bdisp_dev** %27, align 8
  %28 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %29 = call i64 @bdisp_hw_alloc_nodes(%struct.bdisp_ctx* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %33 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %130

38:                                               ; preds = %24
  %39 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %39, i32 0, i32 0
  %41 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %42 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @v4l2_fh_init(%struct.TYPE_7__* %40, i32 %44)
  %46 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %47 = call i32 @bdisp_ctrls_create(%struct.bdisp_ctx* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %52 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %124

55:                                               ; preds = %38
  %56 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %56, i32 0, i32 3
  %58 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32* %57, i32** %60, align 8
  %61 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %61, i32 0, i32 0
  %63 = load %struct.file*, %struct.file** %3, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %64, align 8
  %65 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %65, i32 0, i32 0
  %67 = call i32 @v4l2_fh_add(%struct.TYPE_7__* %66)
  %68 = load i8*, i8** @bdisp_dflt_fmt, align 8
  %69 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @bdisp_dflt_fmt, align 8
  %72 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %75 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %79 = load i32, i32* @queue_init, align 4
  %80 = call i32 @v4l2_m2m_ctx_init(i32 %77, %struct.bdisp_ctx* %78, i32 %79)
  %81 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %55
  %91 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %92 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @PTR_ERR(i32 %98)
  store i32 %99, i32* %6, align 4
  br label %118

100:                                              ; preds = %55
  %101 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %102 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* @ST_M2M_OPEN, align 4
  %107 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %108 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %107, i32 0, i32 2
  %109 = call i32 @set_bit(i32 %106, i32* %108)
  %110 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %111 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %114 = call i32 @dev_dbg(i32 %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), %struct.bdisp_ctx* %113)
  %115 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %116 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %115, i32 0, i32 0
  %117 = call i32 @mutex_unlock(i32* %116)
  store i32 0, i32* %2, align 4
  br label %138

118:                                              ; preds = %90
  %119 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %120 = call i32 @bdisp_ctrls_delete(%struct.bdisp_ctx* %119)
  %121 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %122 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %121, i32 0, i32 0
  %123 = call i32 @v4l2_fh_del(%struct.TYPE_7__* %122)
  br label %124

124:                                              ; preds = %118, %50
  %125 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %126 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %125, i32 0, i32 0
  %127 = call i32 @v4l2_fh_exit(%struct.TYPE_7__* %126)
  %128 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %129 = call i32 @bdisp_hw_free_nodes(%struct.bdisp_ctx* %128)
  br label %130

130:                                              ; preds = %124, %31
  %131 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %5, align 8
  %132 = call i32 @kfree(%struct.bdisp_ctx* %131)
  br label %133

133:                                              ; preds = %130, %21
  %134 = load %struct.bdisp_dev*, %struct.bdisp_dev** %4, align 8
  %135 = getelementptr inbounds %struct.bdisp_dev, %struct.bdisp_dev* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %133, %100, %13
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.bdisp_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.bdisp_ctx* @kzalloc(i32, i32) #1

declare dso_local i64 @bdisp_hw_alloc_nodes(%struct.bdisp_ctx*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bdisp_ctrls_create(%struct.bdisp_ctx*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.bdisp_ctx*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.bdisp_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bdisp_ctrls_delete(%struct.bdisp_ctx*) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_7__*) #1

declare dso_local i32 @bdisp_hw_free_nodes(%struct.bdisp_ctx*) #1

declare dso_local i32 @kfree(%struct.bdisp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
