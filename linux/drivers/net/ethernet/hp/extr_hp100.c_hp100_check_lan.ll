; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_check_lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_check_lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hp100_private = type { i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"hp100: %s: no connection found - check wire\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HP100_LAN_100 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hp100_check_lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp100_check_lan(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hp100_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.hp100_private* @netdev_priv(%struct.net_device* %5)
  store %struct.hp100_private* %6, %struct.hp100_private** %4, align 8
  %7 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %8 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @hp100_stop_interface(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i64 @hp100_sense_lan(%struct.net_device* %14)
  %16 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %17 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = icmp slt i64 %15, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @hp100_start_interface(%struct.net_device* %24)
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %43

28:                                               ; preds = %11
  %29 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %30 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HP100_LAN_100, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @hp100_login_to_vg_hub(%struct.net_device* %35, i32 0)
  %37 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %38 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @hp100_start_interface(%struct.net_device* %40)
  br label %42

42:                                               ; preds = %39, %1
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.hp100_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hp100_stop_interface(%struct.net_device*) #1

declare dso_local i64 @hp100_sense_lan(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @hp100_start_interface(%struct.net_device*) #1

declare dso_local i32 @hp100_login_to_vg_hub(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
