; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sealevel.c_slvl_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sealevel.c_slvl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slvl_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@sealevel_attach = common dso_local global i32 0, align 4
@sealevel_queue_xmit = common dso_local global i32 0, align 4
@sealevel_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unable to register HDLC device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slvl_device*, i32, i32)* @slvl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slvl_setup(%struct.slvl_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.slvl_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  store %struct.slvl_device* %0, %struct.slvl_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.slvl_device*, %struct.slvl_device** %5, align 8
  %10 = call %struct.net_device* @alloc_hdlcdev(%struct.slvl_device* %9)
  store %struct.net_device* %10, %struct.net_device** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %8, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

14:                                               ; preds = %3
  %15 = load i32, i32* @sealevel_attach, align 4
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @sealevel_queue_xmit, align 4
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = call %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 2
  store i32* @sealevel_ops, i32** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.net_device*, %struct.net_device** %8, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = call i64 @register_hdlc_device(%struct.net_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %14
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = call i32 @free_netdev(%struct.net_device* %36)
  store i32 -1, i32* %4, align 4
  br label %44

38:                                               ; preds = %14
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = load %struct.slvl_device*, %struct.slvl_device** %5, align 8
  %41 = getelementptr inbounds %struct.slvl_device, %struct.slvl_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.net_device* %39, %struct.net_device** %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %34, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.net_device* @alloc_hdlcdev(%struct.slvl_device*) #1

declare dso_local %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local i64 @register_hdlc_device(%struct.net_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
