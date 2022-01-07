; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_rpmsg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_rpmsg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { %struct.device }
%struct.device = type { i32 }
%struct.fastrpc_channel_ctx = type { i32, %struct.rpmsg_device*, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"FastRPC Domain not specified in DT\0A\00", align 1
@CDSP_DOMAIN_ID = common dso_local global i32 0, align 4
@domains = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"FastRPC Invalid Domain ID %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"fastrpc-%s\00", align 1
@fastrpc_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*)* @fastrpc_rpmsg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastrpc_rpmsg_probe(%struct.rpmsg_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpmsg_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fastrpc_channel_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %3, align 8
  %10 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %11 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 -1, i32* %8, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @of_property_read_string(i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %115

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @CDSP_DOMAIN_ID, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32*, i32** @domains, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @strcmp(i32 %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %8, align 4
  br label %42

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %23

42:                                               ; preds = %36, %23
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %115

51:                                               ; preds = %42
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.fastrpc_channel_ctx* @kzalloc(i32 48, i32 %52)
  store %struct.fastrpc_channel_ctx* %53, %struct.fastrpc_channel_ctx** %5, align 8
  %54 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %5, align 8
  %55 = icmp ne %struct.fastrpc_channel_ctx* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %115

59:                                               ; preds = %51
  %60 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %61 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = load i32*, i32** @domains, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @kasprintf(i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32* @fastrpc_fops, i32** %76, align 8
  %77 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %77, i32 0, i32 6
  %79 = call i32 @misc_register(%struct.TYPE_2__* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %59
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %115

84:                                               ; preds = %59
  %85 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %85, i32 0, i32 5
  %87 = call i32 @kref_init(i32* %86)
  %88 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %89 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %88, i32 0, i32 0
  %90 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %5, align 8
  %91 = call i32 @dev_set_drvdata(%struct.device* %89, %struct.fastrpc_channel_ctx* %90)
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i32 @DMA_BIT_MASK(i32 32)
  %94 = call i32 @dma_set_mask_and_coherent(%struct.device* %92, i32 %93)
  %95 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %95, i32 0, i32 4
  %97 = call i32 @INIT_LIST_HEAD(i32* %96)
  %98 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %5, align 8
  %99 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %98, i32 0, i32 3
  %100 = call i32 @spin_lock_init(i32* %99)
  %101 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %5, align 8
  %102 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %101, i32 0, i32 2
  %103 = call i32 @idr_init(i32* %102)
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %5, align 8
  %106 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %108 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %5, align 8
  %109 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %108, i32 0, i32 1
  store %struct.rpmsg_device* %107, %struct.rpmsg_device** %109, align 8
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = getelementptr inbounds %struct.device, %struct.device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = call i32 @of_platform_populate(i32 %112, i32* null, i32* null, %struct.device* %113)
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %84, %82, %56, %45, %18
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @of_property_read_string(i32, i8*, i8**) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.fastrpc_channel_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @misc_register(%struct.TYPE_2__*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.fastrpc_channel_ctx*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
