; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_device_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_device_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.fastrpc_user* }
%struct.fastrpc_user = type { i32, i32, i32, %struct.fastrpc_channel_ctx*, i32, i32, i32, i32 }
%struct.fastrpc_channel_ctx = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"No session available\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @fastrpc_device_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastrpc_device_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.fastrpc_channel_ctx*, align 8
  %7 = alloca %struct.fastrpc_user*, align 8
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.fastrpc_user*, %struct.fastrpc_user** %10, align 8
  %12 = call %struct.fastrpc_channel_ctx* @miscdev_to_cctx(%struct.fastrpc_user* %11)
  store %struct.fastrpc_channel_ctx* %12, %struct.fastrpc_channel_ctx** %6, align 8
  store %struct.fastrpc_user* null, %struct.fastrpc_user** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.fastrpc_user* @kzalloc(i32 40, i32 %13)
  store %struct.fastrpc_user* %14, %struct.fastrpc_user** %7, align 8
  %15 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %16 = icmp ne %struct.fastrpc_user* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %6, align 8
  %22 = call i32 @fastrpc_channel_ctx_get(%struct.fastrpc_channel_ctx* %21)
  %23 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  store %struct.fastrpc_user* %23, %struct.fastrpc_user** %25, align 8
  %26 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %27 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %26, i32 0, i32 7
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %30 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %29, i32 0, i32 1
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %33 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %32, i32 0, i32 6
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %36 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %35, i32 0, i32 5
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %39 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %38, i32 0, i32 0
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %45 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %6, align 8
  %47 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %48 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %47, i32 0, i32 3
  store %struct.fastrpc_channel_ctx* %46, %struct.fastrpc_channel_ctx** %48, align 8
  %49 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %6, align 8
  %50 = call i32 @fastrpc_session_alloc(%struct.fastrpc_channel_ctx* %49)
  %51 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %52 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %54 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %20
  %58 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %64 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %63, i32 0, i32 1
  %65 = call i32 @mutex_destroy(i32* %64)
  %66 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %67 = call i32 @kfree(%struct.fastrpc_user* %66)
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %84

70:                                               ; preds = %20
  %71 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %6, align 8
  %72 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %71, i32 0, i32 0
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.fastrpc_user*, %struct.fastrpc_user** %7, align 8
  %76 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %75, i32 0, i32 0
  %77 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %6, align 8
  %78 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %77, i32 0, i32 1
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  %80 = load %struct.fastrpc_channel_ctx*, %struct.fastrpc_channel_ctx** %6, align 8
  %81 = getelementptr inbounds %struct.fastrpc_channel_ctx, %struct.fastrpc_channel_ctx* %80, i32 0, i32 0
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %70, %57, %17
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.fastrpc_channel_ctx* @miscdev_to_cctx(%struct.fastrpc_user*) #1

declare dso_local %struct.fastrpc_user* @kzalloc(i32, i32) #1

declare dso_local i32 @fastrpc_channel_ctx_get(%struct.fastrpc_channel_ctx*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fastrpc_session_alloc(%struct.fastrpc_channel_ctx*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.fastrpc_user*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
