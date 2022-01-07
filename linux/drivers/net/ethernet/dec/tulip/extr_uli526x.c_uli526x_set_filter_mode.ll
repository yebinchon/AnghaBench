; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_set_filter_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_set_filter_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.uli526x_board_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"uli526x_set_filter_mode()\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Enable PROM Mode\00", align 1
@CR6_PM = common dso_local global i32 0, align 4
@CR6_PBF = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ULI5261_MAX_MULTICAST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Pass all multicast address\00", align 1
@CR6_PAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Set multicast address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @uli526x_set_filter_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uli526x_set_filter_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.uli526x_board_info*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.uli526x_board_info* @netdev_priv(%struct.net_device* %5)
  store %struct.uli526x_board_info* %6, %struct.uli526x_board_info** %3, align 8
  %7 = call i32 @ULI526X_DBUG(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 0)
  %8 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %9 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_PROMISC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = call i32 @ULI526X_DBUG(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 0)
  %20 = load i32, i32* @CR6_PM, align 4
  %21 = load i32, i32* @CR6_PBF, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %24 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %28 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %31 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @update_cr6(i32 %29, i32 %32)
  %34 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %35 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %34, i32 0, i32 1
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  br label %83

38:                                               ; preds = %1
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFF_ALLMULTI, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i64 @netdev_mc_count(%struct.net_device* %46)
  %48 = load i64, i64* @ULI5261_MAX_MULTICAST, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %45, %38
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i64 @netdev_mc_count(%struct.net_device* %51)
  %53 = call i32 @ULI526X_DBUG(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @CR6_PM, align 4
  %55 = load i32, i32* @CR6_PBF, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %59 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @CR6_PAM, align 4
  %63 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %64 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %68 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %67, i32 0, i32 1
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  br label %83

71:                                               ; preds = %45
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = call i64 @netdev_mc_count(%struct.net_device* %72)
  %74 = call i32 @ULI526X_DBUG(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = call i64 @netdev_mc_count(%struct.net_device* %76)
  %78 = call i32 @send_filter_frame(%struct.net_device* %75, i64 %77)
  %79 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %80 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %79, i32 0, i32 1
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  br label %83

83:                                               ; preds = %71, %50, %18
  ret void
}

declare dso_local %struct.uli526x_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ULI526X_DBUG(i32, i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_cr6(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @send_filter_frame(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
