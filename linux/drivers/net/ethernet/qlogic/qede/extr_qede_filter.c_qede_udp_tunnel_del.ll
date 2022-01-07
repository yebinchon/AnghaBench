; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_udp_tunnel_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_udp_tunnel_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i32, i32 }
%struct.qede_dev = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, %struct.qed_tunn_params*)* }
%struct.qed_tunn_params = type { i32, i32, i32, i32 }

@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Deleted vxlan port=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Deleted geneve port=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qede_udp_tunnel_del(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qed_tunn_params, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %8)
  store %struct.qede_dev* %9, %struct.qede_dev** %5, align 8
  %10 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %11 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ntohs(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = call i32 @memset(%struct.qed_tunn_params* %6, i32 0, i32 16)
  %15 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %16 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %76 [
    i32 128, label %18
    i32 129, label %47
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %21 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %77

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.qed_tunn_params, %struct.qed_tunn_params* %6, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.qed_tunn_params, %struct.qed_tunn_params* %6, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %29 = call i32 @__qede_lock(%struct.qede_dev* %28)
  %30 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %31 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32, %struct.qed_tunn_params*)*, i32 (i32, %struct.qed_tunn_params*)** %33, align 8
  %35 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %36 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %34(i32 %37, %struct.qed_tunn_params* %6)
  %39 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %40 = call i32 @__qede_unlock(%struct.qede_dev* %39)
  %41 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %42 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %41, i32 0, i32 3
  store i32 0, i32* %42, align 8
  %43 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %44 = load i32, i32* @QED_MSG_DEBUG, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @DP_VERBOSE(%struct.qede_dev* %43, i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %77

47:                                               ; preds = %2
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %50 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %77

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.qed_tunn_params, %struct.qed_tunn_params* %6, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = getelementptr inbounds %struct.qed_tunn_params, %struct.qed_tunn_params* %6, i32 0, i32 2
  store i32 0, i32* %56, align 4
  %57 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %58 = call i32 @__qede_lock(%struct.qede_dev* %57)
  %59 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %60 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (i32, %struct.qed_tunn_params*)*, i32 (i32, %struct.qed_tunn_params*)** %62, align 8
  %64 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %65 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 %63(i32 %66, %struct.qed_tunn_params* %6)
  %68 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %69 = call i32 @__qede_unlock(%struct.qede_dev* %68)
  %70 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %71 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %73 = load i32, i32* @QED_MSG_DEBUG, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @DP_VERBOSE(%struct.qede_dev* %72, i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %77

76:                                               ; preds = %2
  br label %77

77:                                               ; preds = %24, %53, %76, %54, %25
  ret void
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @memset(%struct.qed_tunn_params*, i32, i32) #1

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
