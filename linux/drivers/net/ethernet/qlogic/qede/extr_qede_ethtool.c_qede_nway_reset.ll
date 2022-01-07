; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_nway_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_nway_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qede_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, %struct.qed_link_params*)*, i32 (i32, %struct.qed_link_params*)*, i32 (i32)* }
%struct.qed_link_params = type { i32 }
%struct.qed_link_output = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Link settings are not allowed to be changed\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @qede_nway_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_nway_reset(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.qed_link_output, align 4
  %6 = alloca %struct.qed_link_params, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.qede_dev* %8, %struct.qede_dev** %4, align 8
  %9 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %10 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %15 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %22 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %20(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %13, %1
  %27 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %28 = call i32 @DP_INFO(%struct.qede_dev* %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %81

31:                                               ; preds = %13
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @netif_running(%struct.net_device* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %81

36:                                               ; preds = %31
  %37 = bitcast %struct.qed_link_output* %5 to %struct.qed_link_params*
  %38 = call i32 @memset(%struct.qed_link_params* %37, i32 0, i32 4)
  %39 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %40 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (i32, %struct.qed_link_params*)*, i32 (i32, %struct.qed_link_params*)** %44, align 8
  %46 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %47 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = bitcast %struct.qed_link_output* %5 to %struct.qed_link_params*
  %50 = call i32 %45(i32 %48, %struct.qed_link_params* %49)
  %51 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %81

55:                                               ; preds = %36
  %56 = call i32 @memset(%struct.qed_link_params* %6, i32 0, i32 4)
  %57 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %6, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %59 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (i32, %struct.qed_link_params*)*, i32 (i32, %struct.qed_link_params*)** %63, align 8
  %65 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %66 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %64(i32 %67, %struct.qed_link_params* %6)
  %69 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %6, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %71 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32 (i32, %struct.qed_link_params*)*, i32 (i32, %struct.qed_link_params*)** %75, align 8
  %77 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %78 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %76(i32 %79, %struct.qed_link_params* %6)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %55, %54, %35, %26
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.qed_link_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
