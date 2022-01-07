; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_udp_tunnel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_udp_tunnel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i32, i32 }
%struct.qede_dev = type { i8*, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i8* }
%struct.TYPE_6__ = type { i32 (i32, %struct.qed_tunn_params*)* }
%struct.qed_tunn_params = type { i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Added vxlan port=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to add vxlan UDP port=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Added geneve port=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to add geneve UDP port=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qede_udp_tunnel_add(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qed_tunn_params, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.qede_dev* %10, %struct.qede_dev** %5, align 8
  %11 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %12 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @ntohs(i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = call i32 @memset(%struct.qed_tunn_params* %6, i32 0, i32 24)
  %16 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %17 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %111 [
    i32 128, label %19
    i32 129, label %65
  ]

19:                                               ; preds = %2
  %20 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %21 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %112

27:                                               ; preds = %19
  %28 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %29 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %112

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.qed_tunn_params, %struct.qed_tunn_params* %6, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds %struct.qed_tunn_params, %struct.qed_tunn_params* %6, i32 0, i32 3
  store i8* %35, i8** %36, align 8
  %37 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %38 = call i32 @__qede_lock(%struct.qede_dev* %37)
  %39 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %40 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (i32, %struct.qed_tunn_params*)*, i32 (i32, %struct.qed_tunn_params*)** %42, align 8
  %44 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %45 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %43(i32 %46, %struct.qed_tunn_params* %6)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %49 = call i32 @__qede_unlock(%struct.qede_dev* %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %33
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %55 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %57 = load i32, i32* @QED_MSG_DEBUG, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @DP_VERBOSE(%struct.qede_dev* %56, i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %58)
  br label %64

60:                                               ; preds = %33
  %61 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @DP_NOTICE(%struct.qede_dev* %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %60, %52
  br label %112

65:                                               ; preds = %2
  %66 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %67 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %112

73:                                               ; preds = %65
  %74 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %75 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %112

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.qed_tunn_params, %struct.qed_tunn_params* %6, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds %struct.qed_tunn_params, %struct.qed_tunn_params* %6, i32 0, i32 2
  store i8* %81, i8** %82, align 8
  %83 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %84 = call i32 @__qede_lock(%struct.qede_dev* %83)
  %85 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %86 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32 (i32, %struct.qed_tunn_params*)*, i32 (i32, %struct.qed_tunn_params*)** %88, align 8
  %90 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %91 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 %89(i32 %92, %struct.qed_tunn_params* %6)
  store i32 %93, i32* %8, align 4
  %94 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %95 = call i32 @__qede_unlock(%struct.qede_dev* %94)
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %79
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %101 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %103 = load i32, i32* @QED_MSG_DEBUG, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @DP_VERBOSE(%struct.qede_dev* %102, i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %104)
  br label %110

106:                                              ; preds = %79
  %107 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @DP_NOTICE(%struct.qede_dev* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %106, %98
  br label %112

111:                                              ; preds = %2
  br label %112

112:                                              ; preds = %26, %32, %72, %78, %111, %110, %64
  ret void
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @memset(%struct.qed_tunn_params*, i32, i32) #1

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i8*) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
