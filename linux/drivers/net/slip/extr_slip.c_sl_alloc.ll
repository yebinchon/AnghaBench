; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/slip/extr_slip.c_sl_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/slip/extr_slip.c_sl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.slip = type { i32, i32, i32, i32, i32, %struct.net_device*, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@slip_maxdev = common dso_local global i32 0, align 4
@slip_devs = common dso_local global %struct.net_device** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"sl%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@sl_setup = common dso_local global i32 0, align 4
@SLIP_MAGIC = common dso_local global i32 0, align 4
@slip_transmit = common dso_local global i32 0, align 4
@SL_MODE_DEFAULT = common dso_local global i32 0, align 4
@sl_keepalive = common dso_local global i32 0, align 4
@sl_outfill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slip* ()* @sl_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slip* @sl_alloc() #0 {
  %1 = alloca %struct.slip*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.slip*, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @IFNAMSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  store %struct.net_device* null, %struct.net_device** %5, align 8
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %26, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @slip_maxdev, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.net_device**, %struct.net_device*** @slip_devs, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 %19
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %5, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = icmp eq %struct.net_device* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %12

29:                                               ; preds = %24, %12
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @slip_maxdev, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store %struct.slip* null, %struct.slip** %1, align 8
  store i32 1, i32* %7, align 4
  br label %71

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %38 = load i32, i32* @sl_setup, align 4
  %39 = call %struct.net_device* @alloc_netdev(i32 40, i8* %11, i32 %37, i32 %38)
  store %struct.net_device* %39, %struct.net_device** %5, align 8
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = icmp ne %struct.net_device* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store %struct.slip* null, %struct.slip** %1, align 8
  store i32 1, i32* %7, align 4
  br label %71

43:                                               ; preds = %34
  %44 = load i32, i32* %2, align 4
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call %struct.slip* @netdev_priv(%struct.net_device* %47)
  store %struct.slip* %48, %struct.slip** %6, align 8
  %49 = load i32, i32* @SLIP_MAGIC, align 4
  %50 = load %struct.slip*, %struct.slip** %6, align 8
  %51 = getelementptr inbounds %struct.slip, %struct.slip* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = load %struct.slip*, %struct.slip** %6, align 8
  %54 = getelementptr inbounds %struct.slip, %struct.slip* %53, i32 0, i32 5
  store %struct.net_device* %52, %struct.net_device** %54, align 8
  %55 = load %struct.slip*, %struct.slip** %6, align 8
  %56 = getelementptr inbounds %struct.slip, %struct.slip* %55, i32 0, i32 4
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.slip*, %struct.slip** %6, align 8
  %59 = getelementptr inbounds %struct.slip, %struct.slip* %58, i32 0, i32 3
  %60 = load i32, i32* @slip_transmit, align 4
  %61 = call i32 @INIT_WORK(i32* %59, i32 %60)
  %62 = load i32, i32* @SL_MODE_DEFAULT, align 4
  %63 = load %struct.slip*, %struct.slip** %6, align 8
  %64 = getelementptr inbounds %struct.slip, %struct.slip* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = load %struct.net_device**, %struct.net_device*** @slip_devs, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.net_device*, %struct.net_device** %66, i64 %68
  store %struct.net_device* %65, %struct.net_device** %69, align 8
  %70 = load %struct.slip*, %struct.slip** %6, align 8
  store %struct.slip* %70, %struct.slip** %1, align 8
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %43, %42, %33
  %72 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load %struct.slip*, %struct.slip** %1, align 8
  ret %struct.slip* %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #2

declare dso_local %struct.slip* @netdev_priv(%struct.net_device*) #2

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
