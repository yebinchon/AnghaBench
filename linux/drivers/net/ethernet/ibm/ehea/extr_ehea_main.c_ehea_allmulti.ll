; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_allmulti.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_allmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i32 }

@H_REG_BCMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed enabling IFF_ALLMULTI\0A\00", align 1
@H_DEREG_BCMC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed disabling IFF_ALLMULTI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @ehea_allmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_allmulti(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehea_port*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %7)
  store %struct.ehea_port* %8, %struct.ehea_port** %5, align 8
  %9 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %10 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @ehea_drop_multicast_list(%struct.net_device* %17)
  %19 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %20 = load i32, i32* @H_REG_BCMC, align 4
  %21 = call i64 @ehea_multicast_reg_helper(%struct.ehea_port* %19, i32 0, i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %26 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %30

27:                                               ; preds = %16
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netdev_err(%struct.net_device* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %13
  br label %49

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %37 = load i32, i32* @H_DEREG_BCMC, align 4
  %38 = call i64 @ehea_multicast_reg_helper(%struct.ehea_port* %36, i32 0, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %43 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %47

44:                                               ; preds = %35
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @netdev_err(%struct.net_device* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %32
  br label %49

49:                                               ; preds = %48, %31
  ret void
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ehea_drop_multicast_list(%struct.net_device*) #1

declare dso_local i64 @ehea_multicast_reg_helper(%struct.ehea_port*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
