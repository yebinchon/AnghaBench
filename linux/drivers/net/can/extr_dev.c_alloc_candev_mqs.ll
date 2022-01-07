; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_alloc_candev_mqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_alloc_candev_mqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.can_priv = type { i32, i32, i32, i8*, %struct.net_device* }

@NETDEV_ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"can%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@can_setup = common dso_local global i32 0, align 4
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@can_restart_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_candev_mqs(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.can_priv*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NETDEV_ALIGN, align 4
  %15 = call i32 @ALIGN(i32 %13, i32 %14)
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @ALIGN(i32 %22, i32 8)
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = add i64 %24, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %21, %4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %33 = load i32, i32* @can_setup, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.net_device* @alloc_netdev_mqs(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35)
  store %struct.net_device* %36, %struct.net_device** %10, align 8
  %37 = load %struct.net_device*, %struct.net_device** %10, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store %struct.net_device* null, %struct.net_device** %5, align 8
  br label %81

40:                                               ; preds = %30
  %41 = load %struct.net_device*, %struct.net_device** %10, align 8
  %42 = call %struct.can_priv* @netdev_priv(%struct.net_device* %41)
  store %struct.can_priv* %42, %struct.can_priv** %11, align 8
  %43 = load %struct.net_device*, %struct.net_device** %10, align 8
  %44 = load %struct.can_priv*, %struct.can_priv** %11, align 8
  %45 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %44, i32 0, i32 4
  store %struct.net_device* %43, %struct.net_device** %45, align 8
  %46 = load %struct.can_priv*, %struct.can_priv** %11, align 8
  %47 = bitcast %struct.can_priv* %46 to i8*
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @NETDEV_ALIGN, align 4
  %50 = call i32 @ALIGN(i32 %48, i32 %49)
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %47, i64 %51
  %53 = load %struct.net_device*, %struct.net_device** %10, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %40
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.can_priv*, %struct.can_priv** %11, align 8
  %60 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.can_priv*, %struct.can_priv** %11, align 8
  %62 = bitcast %struct.can_priv* %61 to i8*
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = mul i64 %66, 8
  %68 = sub i64 %64, %67
  %69 = getelementptr i8, i8* %62, i64 %68
  %70 = load %struct.can_priv*, %struct.can_priv** %11, align 8
  %71 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %57, %40
  %73 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %74 = load %struct.can_priv*, %struct.can_priv** %11, align 8
  %75 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.can_priv*, %struct.can_priv** %11, align 8
  %77 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %76, i32 0, i32 1
  %78 = load i32, i32* @can_restart_work, align 4
  %79 = call i32 @INIT_DELAYED_WORK(i32* %77, i32 %78)
  %80 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %80, %struct.net_device** %5, align 8
  br label %81

81:                                               ; preds = %72, %39
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  ret %struct.net_device* %82
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local %struct.net_device* @alloc_netdev_mqs(i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
