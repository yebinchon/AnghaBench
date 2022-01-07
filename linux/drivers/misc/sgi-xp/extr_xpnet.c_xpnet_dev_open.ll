; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpnet.c_xpnet_dev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpnet.c_xpnet_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@xpnet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"calling xpc_connect(%d, 0x%p, NULL, %ld, %ld, %ld, %ld)\0A\00", align 1
@XPC_NET_CHANNEL = common dso_local global i32 0, align 4
@xpnet_connection_activity = common dso_local global i32 0, align 4
@XPNET_MSG_SIZE = common dso_local global i64 0, align 8
@XPNET_MSG_NENTRIES = common dso_local global i64 0, align 8
@XPNET_MAX_KTHREADS = common dso_local global i64 0, align 8
@XPNET_MAX_IDLE_KTHREADS = common dso_local global i64 0, align 8
@xpSuccess = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ifconfig up of %s failed on XPC connect, ret=%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ifconfig up of %s; XPC connected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xpnet_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpnet_dev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load i32, i32* @xpnet, align 4
  %6 = load i32, i32* @XPC_NET_CHANNEL, align 4
  %7 = load i32, i32* @xpnet_connection_activity, align 4
  %8 = load i64, i64* @XPNET_MSG_SIZE, align 8
  %9 = load i64, i64* @XPNET_MSG_NENTRIES, align 8
  %10 = load i64, i64* @XPNET_MAX_KTHREADS, align 8
  %11 = load i64, i64* @XPNET_MAX_IDLE_KTHREADS, align 8
  %12 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %5, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, i64 %8, i64 %9, i64 %10, i64 %11)
  %13 = load i32, i32* @XPC_NET_CHANNEL, align 4
  %14 = load i32, i32* @xpnet_connection_activity, align 4
  %15 = load i64, i64* @XPNET_MSG_SIZE, align 8
  %16 = load i64, i64* @XPNET_MSG_NENTRIES, align 8
  %17 = load i64, i64* @XPNET_MAX_KTHREADS, align 8
  %18 = load i64, i64* @XPNET_MAX_IDLE_KTHREADS, align 8
  %19 = call i32 @xpc_connect(i32 %13, i32 %14, i32* null, i64 %15, i64 %16, i64 %17, i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @xpSuccess, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @xpnet, align 4
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %38

32:                                               ; preds = %1
  %33 = load i32, i32* @xpnet, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %32, %23
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @xpc_connect(i32, i32, i32*, i64, i64, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
