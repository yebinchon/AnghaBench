; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_create_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_create_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { %struct.TYPE_2__*, i32, %struct.netfront_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.netfront_queue = type { i32, i32, %struct.netfront_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"only created %d queues\0A\00", align 1
@xennet_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"no queues\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_info*, i32*)* @xennet_create_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_create_queues(%struct.netfront_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netfront_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netfront_queue*, align 8
  store %struct.netfront_info* %0, %struct.netfront_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.netfront_queue* @kcalloc(i32 %10, i32 16, i32 %11)
  %13 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %14 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %13, i32 0, i32 2
  store %struct.netfront_queue* %12, %struct.netfront_queue** %14, align 8
  %15 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %16 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %15, i32 0, i32 2
  %17 = load %struct.netfront_queue*, %struct.netfront_queue** %16, align 8
  %18 = icmp ne %struct.netfront_queue* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %96

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %74, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %23
  %29 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %30 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %29, i32 0, i32 2
  %31 = load %struct.netfront_queue*, %struct.netfront_queue** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %31, i64 %33
  store %struct.netfront_queue* %34, %struct.netfront_queue** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.netfront_queue*, %struct.netfront_queue** %8, align 8
  %37 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %39 = load %struct.netfront_queue*, %struct.netfront_queue** %8, align 8
  %40 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %39, i32 0, i32 2
  store %struct.netfront_info* %38, %struct.netfront_info** %40, align 8
  %41 = load %struct.netfront_queue*, %struct.netfront_queue** %8, align 8
  %42 = call i32 @xennet_init_queue(%struct.netfront_queue* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %28
  %46 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %47 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %77

54:                                               ; preds = %28
  %55 = load %struct.netfront_queue*, %struct.netfront_queue** %8, align 8
  %56 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %55, i32 0, i32 2
  %57 = load %struct.netfront_info*, %struct.netfront_info** %56, align 8
  %58 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.netfront_queue*, %struct.netfront_queue** %8, align 8
  %61 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %60, i32 0, i32 1
  %62 = load i32, i32* @xennet_poll, align 4
  %63 = call i32 @netif_napi_add(i32 %59, i32* %61, i32 %62, i32 64)
  %64 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %65 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @netif_running(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load %struct.netfront_queue*, %struct.netfront_queue** %8, align 8
  %71 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %70, i32 0, i32 1
  %72 = call i32 @napi_enable(i32* %71)
  br label %73

73:                                               ; preds = %69, %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %23

77:                                               ; preds = %45, %23
  %78 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %79 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @netif_set_real_num_tx_queues(i32 %80, i32 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %77
  %88 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %89 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %87, %19
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.netfront_queue* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @xennet_init_queue(%struct.netfront_queue*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
