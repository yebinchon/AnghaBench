; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_slcan.c_slc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_slcan.c_slc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i8* }
%struct.slcan = type { i32, i32, %struct.net_device*, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@maxdev = common dso_local global i32 0, align 4
@slcan_devs = common dso_local global %struct.net_device** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"slcan%d\00", align 1
@NETDEV_ALIGN = common dso_local global i32 0, align 4
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@slc_setup = common dso_local global i32 0, align 4
@SLCAN_MAGIC = common dso_local global i32 0, align 4
@slcan_transmit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slcan* ()* @slc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slcan* @slc_alloc() #0 {
  %1 = alloca %struct.slcan*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.slcan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @IFNAMSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  store %struct.net_device* null, %struct.net_device** %5, align 8
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %27, %0
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @maxdev, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.net_device**, %struct.net_device*** @slcan_devs, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 %20
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = icmp eq %struct.net_device* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %13

30:                                               ; preds = %25, %13
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @maxdev, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store %struct.slcan* null, %struct.slcan** %1, align 8
  store i32 1, i32* %8, align 4
  br label %83

35:                                               ; preds = %30
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @NETDEV_ALIGN, align 4
  %39 = call i32 @ALIGN(i32 24, i32 %38)
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %45 = load i32, i32* @slc_setup, align 4
  %46 = call %struct.net_device* @alloc_netdev(i32 %43, i8* %12, i32 %44, i32 %45)
  store %struct.net_device* %46, %struct.net_device** %5, align 8
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = icmp ne %struct.net_device* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  store %struct.slcan* null, %struct.slcan** %1, align 8
  store i32 1, i32* %8, align 4
  br label %83

50:                                               ; preds = %35
  %51 = load i32, i32* %2, align 4
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = call %struct.slcan* @netdev_priv(%struct.net_device* %54)
  store %struct.slcan* %55, %struct.slcan** %6, align 8
  %56 = load %struct.slcan*, %struct.slcan** %6, align 8
  %57 = bitcast %struct.slcan* %56 to i8*
  %58 = load i32, i32* @NETDEV_ALIGN, align 4
  %59 = call i32 @ALIGN(i32 24, i32 %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %57, i64 %60
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @SLCAN_MAGIC, align 4
  %65 = load %struct.slcan*, %struct.slcan** %6, align 8
  %66 = getelementptr inbounds %struct.slcan, %struct.slcan* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = load %struct.slcan*, %struct.slcan** %6, align 8
  %69 = getelementptr inbounds %struct.slcan, %struct.slcan* %68, i32 0, i32 2
  store %struct.net_device* %67, %struct.net_device** %69, align 8
  %70 = load %struct.slcan*, %struct.slcan** %6, align 8
  %71 = getelementptr inbounds %struct.slcan, %struct.slcan* %70, i32 0, i32 1
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.slcan*, %struct.slcan** %6, align 8
  %74 = getelementptr inbounds %struct.slcan, %struct.slcan* %73, i32 0, i32 0
  %75 = load i32, i32* @slcan_transmit, align 4
  %76 = call i32 @INIT_WORK(i32* %74, i32 %75)
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = load %struct.net_device**, %struct.net_device*** @slcan_devs, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.net_device*, %struct.net_device** %78, i64 %80
  store %struct.net_device* %77, %struct.net_device** %81, align 8
  %82 = load %struct.slcan*, %struct.slcan** %6, align 8
  store %struct.slcan* %82, %struct.slcan** %1, align 8
  store i32 1, i32* %8, align 4
  br label %83

83:                                               ; preds = %50, %49, %34
  %84 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load %struct.slcan*, %struct.slcan** %1, align 8
  ret %struct.slcan* %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @ALIGN(i32, i32) #2

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #2

declare dso_local %struct.slcan* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
