; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_rpmsg_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_rpmsg_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32 }
%struct.fastrpc_channel_ctx = type { i32, i32 }
%struct.fastrpc_invoke_rsp = type { i32, i32 }
%struct.fastrpc_invoke_ctx = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FASTRPC_CTXID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No context ID matches response\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*, i8*, i32, i8*, i32)* @fastrpc_rpmsg_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastrpc_rpmsg_callback(%struct.rpmsg_device* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpmsg_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fastrpc_channel_ctx*, align 8
  %13 = alloca %struct.fastrpc_invoke_rsp*, align 8
  %14 = alloca %struct.fastrpc_invoke_ctx*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %18 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %17, i32 0, i32 0
  %19 = call %struct.fastrpc_channel_ctx* @dev_get_drvdata(i32* %18)
  store %struct.fastrpc_channel_ctx* %19, %struct.fastrpc_channel_ctx** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.fastrpc_invoke_rsp*
  store %struct.fastrpc_invoke_rsp* %21, %struct.fastrpc_invoke_rsp** %13, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 8
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %68

28:                                               ; preds = %5
  %29 = load %struct.fastrpc_invoke_rsp*, %struct.fastrpc_invoke_rsp** %13, align 8
  %30 = getelementptr inbounds %struct.fastrpc_invoke_rsp, %struct.fastrpc_invoke_rsp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FASTRPC_CTXID_MASK, align 4
  %33 = and i32 %31, %32
  %34 = ashr i32 %33, 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %16, align 8
  %36 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %12, align 8
  %37 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %36, i32 0, i32 0
  %38 = load i64, i64* %15, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %12, align 8
  %41 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %40, i32 0, i32 1
  %42 = load i64, i64* %16, align 8
  %43 = call %struct.fastrpc_invoke_ctx* @idr_find(i32* %41, i64 %42)
  store %struct.fastrpc_invoke_ctx* %43, %struct.fastrpc_invoke_ctx** %14, align 8
  %44 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %12, align 8
  %45 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %44, i32 0, i32 0
  %46 = load i64, i64* %15, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %14, align 8
  %49 = icmp ne %struct.fastrpc_invoke_ctx* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %28
  %51 = load %struct.rpmsg_device*, %struct.rpmsg_device** %7, align 8
  %52 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %68

56:                                               ; preds = %28
  %57 = load %struct.fastrpc_invoke_rsp*, %struct.fastrpc_invoke_rsp** %13, align 8
  %58 = getelementptr inbounds %struct.fastrpc_invoke_rsp, %struct.fastrpc_invoke_rsp* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %14, align 8
  %61 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %14, align 8
  %63 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %62, i32 0, i32 1
  %64 = call i32 @complete(i32* %63)
  %65 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %14, align 8
  %66 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %65, i32 0, i32 0
  %67 = call i32 @schedule_work(i32* %66)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %56, %50, %25
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.fastrpc_channel_ctx* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.fastrpc_invoke_ctx* @idr_find(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
