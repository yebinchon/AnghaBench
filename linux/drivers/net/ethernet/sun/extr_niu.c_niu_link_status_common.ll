; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_link_status_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_link_status_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.net_device*, %struct.niu_link_config }
%struct.net_device = type { i32 }
%struct.niu_link_config = type { i64, i64 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Link is up at %s, %s duplex\0A\00", align 1
@SPEED_10000 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"10Gb/sec\00", align 1
@SPEED_1000 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"1Gb/sec\00", align 1
@SPEED_100 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"100Mbit/sec\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"10Mbit/sec\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Link is down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32)* @niu_link_status_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_link_status_common(%struct.niu* %0, i32 %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.niu_link_config*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.niu*, %struct.niu** %3, align 8
  %9 = getelementptr inbounds %struct.niu, %struct.niu* %8, i32 0, i32 2
  store %struct.niu_link_config* %9, %struct.niu_link_config** %5, align 8
  %10 = load %struct.niu*, %struct.niu** %3, align 8
  %11 = getelementptr inbounds %struct.niu, %struct.niu* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call i64 @netif_carrier_ok(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %70, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %70

19:                                               ; preds = %16
  %20 = load %struct.niu*, %struct.niu** %3, align 8
  %21 = load i32, i32* @link, align 4
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = load %struct.niu_link_config*, %struct.niu_link_config** %5, align 8
  %24 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SPEED_10000, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %46

29:                                               ; preds = %19
  %30 = load %struct.niu_link_config*, %struct.niu_link_config** %5, align 8
  %31 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SPEED_1000, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %44

36:                                               ; preds = %29
  %37 = load %struct.niu_link_config*, %struct.niu_link_config** %5, align 8
  %38 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPEED_100, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  br label %44

44:                                               ; preds = %36, %35
  %45 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %35 ], [ %43, %36 ]
  br label %46

46:                                               ; preds = %44, %28
  %47 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %28 ], [ %45, %44 ]
  %48 = load %struct.niu_link_config*, %struct.niu_link_config** %5, align 8
  %49 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DUPLEX_FULL, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %55 = call i32 @netif_info(%struct.niu* %20, i32 %21, %struct.net_device* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %54)
  %56 = load %struct.niu*, %struct.niu** %3, align 8
  %57 = getelementptr inbounds %struct.niu, %struct.niu* %56, i32 0, i32 0
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.niu*, %struct.niu** %3, align 8
  %61 = call i32 @niu_init_xif(%struct.niu* %60)
  %62 = load %struct.niu*, %struct.niu** %3, align 8
  %63 = call i32 @niu_handle_led(%struct.niu* %62, i32 1)
  %64 = load %struct.niu*, %struct.niu** %3, align 8
  %65 = getelementptr inbounds %struct.niu, %struct.niu* %64, i32 0, i32 0
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = call i32 @netif_carrier_on(%struct.net_device* %68)
  br label %95

70:                                               ; preds = %16, %2
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = call i64 @netif_carrier_ok(%struct.net_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %74
  %78 = load %struct.niu*, %struct.niu** %3, align 8
  %79 = load i32, i32* @link, align 4
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = call i32 @netif_warn(%struct.niu* %78, i32 %79, %struct.net_device* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %82 = load %struct.niu*, %struct.niu** %3, align 8
  %83 = getelementptr inbounds %struct.niu, %struct.niu* %82, i32 0, i32 0
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.niu*, %struct.niu** %3, align 8
  %87 = call i32 @niu_handle_led(%struct.niu* %86, i32 0)
  %88 = load %struct.niu*, %struct.niu** %3, align 8
  %89 = getelementptr inbounds %struct.niu, %struct.niu* %88, i32 0, i32 0
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load %struct.net_device*, %struct.net_device** %6, align 8
  %93 = call i32 @netif_carrier_off(%struct.net_device* %92)
  br label %94

94:                                               ; preds = %77, %74, %70
  br label %95

95:                                               ; preds = %94, %46
  ret i32 0
}

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.niu*, i32, %struct.net_device*, i8*, i8*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @niu_init_xif(%struct.niu*) #1

declare dso_local i32 @niu_handle_led(%struct.niu*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_warn(%struct.niu*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
