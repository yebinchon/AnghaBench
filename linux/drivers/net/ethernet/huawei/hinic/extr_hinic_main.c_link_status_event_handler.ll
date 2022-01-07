; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_link_status_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_link_status_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_port_link_status = type { i64, i64 }
%struct.hinic_dev = type { i32, i32, i32 }

@HINIC_LINK_STATE_UP = common dso_local global i64 0, align 8
@HINIC_LINK_UP = common dso_local global i32 0, align 4
@HINIC_INTF_UP = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"HINIC_Link is UP\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"HINIC_Link is DOWN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*, i32*)* @link_status_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_status_event_handler(i8* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.hinic_port_link_status*, align 8
  %12 = alloca %struct.hinic_port_link_status*, align 8
  %13 = alloca %struct.hinic_dev*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.hinic_dev*
  store %struct.hinic_dev* %15, %struct.hinic_dev** %13, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.hinic_port_link_status*
  store %struct.hinic_port_link_status* %17, %struct.hinic_port_link_status** %11, align 8
  %18 = load %struct.hinic_port_link_status*, %struct.hinic_port_link_status** %11, align 8
  %19 = getelementptr inbounds %struct.hinic_port_link_status, %struct.hinic_port_link_status* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HINIC_LINK_STATE_UP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %5
  %24 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %25 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %24, i32 0, i32 2
  %26 = call i32 @down(i32* %25)
  %27 = load i32, i32* @HINIC_LINK_UP, align 4
  %28 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %29 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %33 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HINIC_LINK_UP, align 4
  %36 = load i32, i32* @HINIC_INTF_UP, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load i32, i32* @HINIC_LINK_UP, align 4
  %40 = load i32, i32* @HINIC_INTF_UP, align 4
  %41 = or i32 %39, %40
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %23
  %44 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %45 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @netif_carrier_on(i32 %46)
  %48 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %49 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netif_tx_wake_all_queues(i32 %50)
  br label %52

52:                                               ; preds = %43, %23
  %53 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %54 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %53, i32 0, i32 2
  %55 = call i32 @up(i32* %54)
  %56 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %57 = load i32, i32* @drv, align 4
  %58 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %59 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @netif_info(%struct.hinic_dev* %56, i32 %57, i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %89

62:                                               ; preds = %5
  %63 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %64 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %63, i32 0, i32 2
  %65 = call i32 @down(i32* %64)
  %66 = load i32, i32* @HINIC_LINK_UP, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %69 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %73 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @netif_carrier_off(i32 %74)
  %76 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %77 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @netif_tx_disable(i32 %78)
  %80 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %81 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %80, i32 0, i32 2
  %82 = call i32 @up(i32* %81)
  %83 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %84 = load i32, i32* @drv, align 4
  %85 = load %struct.hinic_dev*, %struct.hinic_dev** %13, align 8
  %86 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @netif_info(%struct.hinic_dev* %83, i32 %84, i32 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %62, %52
  %90 = load i8*, i8** %9, align 8
  %91 = bitcast i8* %90 to %struct.hinic_port_link_status*
  store %struct.hinic_port_link_status* %91, %struct.hinic_port_link_status** %12, align 8
  %92 = load %struct.hinic_port_link_status*, %struct.hinic_port_link_status** %12, align 8
  %93 = getelementptr inbounds %struct.hinic_port_link_status, %struct.hinic_port_link_status* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load i32*, i32** %10, align 8
  store i32 16, i32* %94, align 4
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_tx_wake_all_queues(i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @netif_info(%struct.hinic_dev*, i32, i32, i8*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_tx_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
