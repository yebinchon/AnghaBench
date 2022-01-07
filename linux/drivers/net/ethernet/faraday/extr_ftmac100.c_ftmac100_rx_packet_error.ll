; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_rx_packet_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_rx_packet_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftmac100 = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ftmac100_rxdes = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"rx err\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rx crc err\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"rx frame too long\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rx runt\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"rx odd nibble\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftmac100*, %struct.ftmac100_rxdes*)* @ftmac100_rx_packet_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftmac100_rx_packet_error(%struct.ftmac100* %0, %struct.ftmac100_rxdes* %1) #0 {
  %3 = alloca %struct.ftmac100*, align 8
  %4 = alloca %struct.ftmac100_rxdes*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ftmac100* %0, %struct.ftmac100** %3, align 8
  store %struct.ftmac100_rxdes* %1, %struct.ftmac100_rxdes** %4, align 8
  %7 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %8 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %11 = call i32 @ftmac100_rxdes_rx_error(%struct.ftmac100_rxdes* %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = call i64 (...) @net_ratelimit()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call i32 @netdev_info(%struct.net_device* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %28 = call i32 @ftmac100_rxdes_crc_error(%struct.ftmac100_rxdes* %27)
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = call i64 (...) @net_ratelimit()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @netdev_info(%struct.net_device* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %37, %26
  %44 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %45 = call i32 @ftmac100_rxdes_frame_too_long(%struct.ftmac100_rxdes* %44)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = call i64 (...) @net_ratelimit()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call i32 @netdev_info(%struct.net_device* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  store i32 1, i32* %6, align 4
  br label %96

60:                                               ; preds = %43
  %61 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %62 = call i32 @ftmac100_rxdes_runt(%struct.ftmac100_rxdes* %61)
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = call i64 (...) @net_ratelimit()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = call i32 @netdev_info(%struct.net_device* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  store i32 1, i32* %6, align 4
  br label %95

77:                                               ; preds = %60
  %78 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %79 = call i32 @ftmac100_rxdes_odd_nibble(%struct.ftmac100_rxdes* %78)
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = call i64 (...) @net_ratelimit()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = call i32 @netdev_info(%struct.net_device* %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.net_device*, %struct.net_device** %5, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  store i32 1, i32* %6, align 4
  br label %94

94:                                               ; preds = %88, %77
  br label %95

95:                                               ; preds = %94, %71
  br label %96

96:                                               ; preds = %95, %54
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ftmac100_rxdes_rx_error(%struct.ftmac100_rxdes*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @ftmac100_rxdes_crc_error(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @ftmac100_rxdes_frame_too_long(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @ftmac100_rxdes_runt(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @ftmac100_rxdes_odd_nibble(%struct.ftmac100_rxdes*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
