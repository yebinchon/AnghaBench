; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_devm_arcnet_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_devm_arcnet_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arcnet_local = type { i32, i32, i32, i32 }

@arcnet_led_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot register LED triggers\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"arc%d-%d-tx\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"arc%d-%d-recon\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devm_arcnet_led_init(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.arcnet_local*, align 8
  %8 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %9)
  store %struct.arcnet_local* %10, %struct.arcnet_local** %7, align 8
  %11 = load i32, i32* @arcnet_led_release, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @devres_alloc(i32 %11, i32 0, i32 %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i32 @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %48

19:                                               ; preds = %3
  %20 = load %struct.arcnet_local*, %struct.arcnet_local** %7, align 8
  %21 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @snprintf(i32 %22, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.arcnet_local*, %struct.arcnet_local** %7, align 8
  %27 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.arcnet_local*, %struct.arcnet_local** %7, align 8
  %33 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.arcnet_local*, %struct.arcnet_local** %7, align 8
  %36 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %35, i32 0, i32 2
  %37 = call i32 @led_trigger_register_simple(i32 %34, i32* %36)
  %38 = load %struct.arcnet_local*, %struct.arcnet_local** %7, align 8
  %39 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.arcnet_local*, %struct.arcnet_local** %7, align 8
  %42 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %41, i32 0, i32 0
  %43 = call i32 @led_trigger_register_simple(i32 %40, i32* %42)
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @devres_add(i32* %45, i8* %46)
  br label %48

48:                                               ; preds = %19, %16
  ret void
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @led_trigger_register_simple(i32, i32*) #1

declare dso_local i32 @devres_add(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
