; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qede_dev = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 (i32, i32)*, i32 (i32, i32)* }
%struct.TYPE_3__ = type { i32 (i32, i32)* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"The MAC address is not valid\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"qed prevents setting MAC %pM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QEDE_STATE_OPEN = common dso_local global i64 0, align 8
@QED_FILTER_XCAST_TYPE_DEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Setting device MAC to %pM\0A\00", align 1
@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"The device is currently down\0A\00", align 1
@QED_FILTER_XCAST_TYPE_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_set_mac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %8)
  store %struct.qede_dev* %9, %struct.qede_dev** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %13 = call i32 @__qede_lock(%struct.qede_dev* %12)
  %14 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @is_valid_ether_addr(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %21 = call i32 (%struct.qede_dev*, i8*, ...) @DP_NOTICE(%struct.qede_dev* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %130

24:                                               ; preds = %2
  %25 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %26 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %28, align 8
  %30 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %31 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %29(i32 %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %24
  %39 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %40 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %41 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.qede_dev*, i8*, ...) @DP_NOTICE(%struct.qede_dev* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %130

46:                                               ; preds = %24
  %47 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %48 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @QEDE_STATE_OPEN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %54 = load i32, i32* @QED_FILTER_XCAST_TYPE_DEL, align 4
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @qede_set_ucast_rx_mac(%struct.qede_dev* %53, i32 %54, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %130

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %46
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %68 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ether_addr_copy(i32 %66, i32 %69)
  %71 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %72 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %73 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @DP_INFO(%struct.qede_dev* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %77 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @QEDE_STATE_OPEN, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %63
  %82 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %83 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %84 = call i32 @DP_VERBOSE(%struct.qede_dev* %82, i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %86 = call i64 @IS_VF(%struct.qede_dev* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %81
  %89 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %90 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32 (i32, i32)*, i32 (i32, i32)** %92, align 8
  %94 = icmp ne i32 (i32, i32)* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %97 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32 (i32, i32)*, i32 (i32, i32)** %99, align 8
  %101 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %102 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 %100(i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %95, %88, %81
  br label %130

109:                                              ; preds = %63
  %110 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %111 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32 (i32, i32)*, i32 (i32, i32)** %115, align 8
  %117 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %118 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 %116(i32 %119, i32 %122)
  %124 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %125 = load i32, i32* @QED_FILTER_XCAST_TYPE_ADD, align 4
  %126 = load %struct.net_device*, %struct.net_device** %3, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @qede_set_ucast_rx_mac(%struct.qede_dev* %124, i32 %125, i32 %128)
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %109, %108, %61, %38, %19
  %131 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %132 = call i32 @__qede_unlock(%struct.qede_dev* %131)
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*, ...) #1

declare dso_local i32 @qede_set_ucast_rx_mac(%struct.qede_dev*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*) #1

declare dso_local i64 @IS_VF(%struct.qede_dev*) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
