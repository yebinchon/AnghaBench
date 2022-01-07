; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-ipc.c_delta_ipc_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-ipc.c_delta_ipc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ipc_ctx = type { i32, i32, i32* }
%struct.delta_ctx = type { i32, i32, %struct.delta_dev* }
%struct.delta_dev = type { i32, %struct.rpmsg_device* }
%struct.rpmsg_device = type { i32 }
%struct.delta_ipc_close_msg = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s   ipc: failed to close, invalid ipc handle\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%s   ipc: failed to close, rpmsg is not initialized\0A\00", align 1
@DELTA_IPC_CLOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"%s   ipc: failed to close, rpmsg_send failed (%d) for DELTA_IPC_CLOSE\0A\00", align 1
@IPC_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"%s   ipc: failed to close, timeout waiting for DELTA_IPC_CLOSE callback\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"%s   ipc: failed to close, DELTA_IPC_CLOSE completed but with error (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delta_ipc_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.delta_ipc_ctx*, align 8
  %4 = alloca %struct.delta_ctx*, align 8
  %5 = alloca %struct.delta_dev*, align 8
  %6 = alloca %struct.rpmsg_device*, align 8
  %7 = alloca %struct.delta_ipc_close_msg, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call %struct.delta_ipc_ctx* @to_ctx(i8* %9)
  store %struct.delta_ipc_ctx* %10, %struct.delta_ipc_ctx** %3, align 8
  %11 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %3, align 8
  %12 = call %struct.delta_ctx* @to_pctx(%struct.delta_ipc_ctx* %11)
  store %struct.delta_ctx* %12, %struct.delta_ctx** %4, align 8
  %13 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %13, i32 0, i32 2
  %15 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  store %struct.delta_dev* %15, %struct.delta_dev** %5, align 8
  %16 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %17 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %16, i32 0, i32 1
  %18 = load %struct.rpmsg_device*, %struct.rpmsg_device** %17, align 8
  store %struct.rpmsg_device* %18, %struct.rpmsg_device** %6, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %1
  %22 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %23 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %116

29:                                               ; preds = %1
  %30 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %36 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @hw_free(%struct.delta_ctx* %35, i32* %38)
  %40 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.rpmsg_device*, %struct.rpmsg_device** %6, align 8
  %44 = icmp ne %struct.rpmsg_device* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %47 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %116

53:                                               ; preds = %42
  %54 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %3, align 8
  %55 = load i32, i32* @DELTA_IPC_CLOSE, align 4
  %56 = getelementptr inbounds %struct.delta_ipc_close_msg, %struct.delta_ipc_close_msg* %7, i32 0, i32 0
  %57 = call i32 @build_msg_header(%struct.delta_ipc_ctx* %54, i32 %55, i32* %56)
  %58 = load %struct.rpmsg_device*, %struct.rpmsg_device** %6, align 8
  %59 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rpmsg_send(i32 %60, %struct.delta_ipc_close_msg* %7, i32 4)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %53
  %65 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %66 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %116

77:                                               ; preds = %53
  %78 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %78, i32 0, i32 1
  %80 = load i32, i32* @IPC_TIMEOUT, align 4
  %81 = call i32 @msecs_to_jiffies(i32 %80)
  %82 = call i32 @wait_for_completion_timeout(i32* %79, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %77
  %85 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %86 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %89 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %93 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %116

96:                                               ; preds = %77
  %97 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %3, align 8
  %98 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %103 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %106 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %104, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %113 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %21, %45, %64, %84, %101, %96
  ret void
}

declare dso_local %struct.delta_ipc_ctx* @to_ctx(i8*) #1

declare dso_local %struct.delta_ctx* @to_pctx(%struct.delta_ipc_ctx*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @hw_free(%struct.delta_ctx*, i32*) #1

declare dso_local i32 @build_msg_header(%struct.delta_ipc_ctx*, i32, i32*) #1

declare dso_local i32 @rpmsg_send(i32, %struct.delta_ipc_close_msg*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
