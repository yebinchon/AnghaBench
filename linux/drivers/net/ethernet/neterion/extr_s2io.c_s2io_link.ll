; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i32, i8*, %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.swStat }
%struct.swStat = type { i64, i8*, i64, i8* }
%struct.net_device = type { i32 }

@LINK_DOWN = common dso_local global i32 0, align 4
@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: Link down\0A\00", align 1
@jiffies = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%s: Link Up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*, i32)* @s2io_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_link(%struct.s2io_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.s2io_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.swStat*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %8 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %7, i32 0, i32 3
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %11 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.swStat* %14, %struct.swStat** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %17 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %88

20:                                               ; preds = %2
  %21 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @init_tti(%struct.s2io_nic* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @LINK_DOWN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %20
  %28 = load i32, i32* @ERR_DBG, align 4
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DBG_PRINT(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %34 = call i32 @s2io_stop_all_tx_queue(%struct.s2io_nic* %33)
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @netif_carrier_off(%struct.net_device* %35)
  %37 = load %struct.swStat*, %struct.swStat** %6, align 8
  %38 = getelementptr inbounds %struct.swStat, %struct.swStat* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %27
  %42 = load i8*, i8** @jiffies, align 8
  %43 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %44 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %42 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.swStat*, %struct.swStat** %6, align 8
  %51 = getelementptr inbounds %struct.swStat, %struct.swStat* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %41, %27
  %53 = load %struct.swStat*, %struct.swStat** %6, align 8
  %54 = getelementptr inbounds %struct.swStat, %struct.swStat* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %87

57:                                               ; preds = %20
  %58 = load i32, i32* @ERR_DBG, align 4
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DBG_PRINT(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.swStat*, %struct.swStat** %6, align 8
  %64 = getelementptr inbounds %struct.swStat, %struct.swStat* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %57
  %68 = load i8*, i8** @jiffies, align 8
  %69 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %70 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = ptrtoint i8* %68 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.swStat*, %struct.swStat** %6, align 8
  %77 = getelementptr inbounds %struct.swStat, %struct.swStat* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %67, %57
  %79 = load %struct.swStat*, %struct.swStat** %6, align 8
  %80 = getelementptr inbounds %struct.swStat, %struct.swStat* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = call i32 @netif_carrier_on(%struct.net_device* %83)
  %85 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %86 = call i32 @s2io_wake_all_tx_queue(%struct.s2io_nic* %85)
  br label %87

87:                                               ; preds = %78, %52
  br label %88

88:                                               ; preds = %87, %2
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %91 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** @jiffies, align 8
  %93 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %94 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  ret void
}

declare dso_local i32 @init_tti(%struct.s2io_nic*, i32) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i32) #1

declare dso_local i32 @s2io_stop_all_tx_queue(%struct.s2io_nic*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @s2io_wake_all_tx_queue(%struct.s2io_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
