; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_cb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_cb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.fastrpc_channel_ctx = type { i64, i32, %struct.fastrpc_session_ctx* }
%struct.fastrpc_session_ctx = type { i32, i32, i32, %struct.device* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"qcom,nsessions\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"FastRPC Session ID not specified in DT\0A\00", align 1
@FASTRPC_MAX_SESSIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"32-bit DMA enable failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fastrpc_cb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastrpc_cb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fastrpc_channel_ctx*, align 8
  %5 = alloca %struct.fastrpc_session_ctx*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fastrpc_session_ctx*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.fastrpc_channel_ctx* @dev_get_drvdata(i32 %16)
  store %struct.fastrpc_channel_ctx* %17, %struct.fastrpc_channel_ctx** %4, align 8
  %18 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %4, align 8
  %19 = icmp ne %struct.fastrpc_channel_ctx* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %110

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @of_property_read_u32(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %8)
  %28 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %28, i32 0, i32 1
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %32, i32 0, i32 2
  %34 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %33, align 8
  %35 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.fastrpc_session_ctx, %struct.fastrpc_session_ctx* %34, i64 %37
  store %struct.fastrpc_session_ctx* %38, %struct.fastrpc_session_ctx** %5, align 8
  %39 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.fastrpc_session_ctx, %struct.fastrpc_session_ctx* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.fastrpc_session_ctx, %struct.fastrpc_session_ctx* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.fastrpc_session_ctx, %struct.fastrpc_session_ctx* %44, i32 0, i32 3
  store %struct.device* %43, %struct.device** %45, align 8
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %5, align 8
  %48 = call i32 @dev_set_drvdata(%struct.device* %46, %struct.fastrpc_session_ctx* %47)
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.fastrpc_session_ctx, %struct.fastrpc_session_ctx* %52, i32 0, i32 2
  %54 = call i64 @of_property_read_u32(i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %23
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = call i32 @dev_info(%struct.device* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %23
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  br label %63

63:                                               ; preds = %87, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = load i32, i32* @FASTRPC_MAX_SESSIONS, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp uge i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %90

76:                                               ; preds = %67
  %77 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %4, align 8
  %78 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %77, i32 0, i32 2
  %79 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %78, align 8
  %80 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %4, align 8
  %81 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.fastrpc_session_ctx, %struct.fastrpc_session_ctx* %79, i64 %82
  store %struct.fastrpc_session_ctx* %83, %struct.fastrpc_session_ctx** %11, align 8
  %84 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %11, align 8
  %85 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %5, align 8
  %86 = call i32 @memcpy(%struct.fastrpc_session_ctx* %84, %struct.fastrpc_session_ctx* %85, i32 24)
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %63

90:                                               ; preds = %75, %63
  br label %91

91:                                               ; preds = %90, %59
  %92 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %4, align 8
  %93 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %96, i32 0, i32 1
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = call i32 @DMA_BIT_MASK(i32 32)
  %102 = call i32 @dma_set_mask(%struct.device* %100, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %91
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = call i32 @dev_err(%struct.device* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %2, align 4
  br label %110

109:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %105, %20
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.fastrpc_channel_ctx* @dev_get_drvdata(i32) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.fastrpc_session_ctx*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @memcpy(%struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_set_mask(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
