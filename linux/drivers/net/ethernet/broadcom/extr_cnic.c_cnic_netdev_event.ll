; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_netdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_netdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.cnic_dev = type { %struct.cnic_local*, i32 }
%struct.cnic_local = type { i32 }

@NETDEV_REGISTER = common dso_local global i64 0, align 8
@NETDEV_UNREGISTER = common dso_local global i64 0, align 8
@NETDEV_UP = common dso_local global i64 0, align 8
@NETDEV_GOING_DOWN = common dso_local global i64 0, align 8
@cnic_dev_lock = common dso_local global i32 0, align 4
@VLAN_CFI_MASK = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @cnic_netdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_netdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cnic_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cnic_local*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %13)
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.cnic_dev* @cnic_from_netdev(%struct.net_device* %15)
  store %struct.cnic_dev* %16, %struct.cnic_dev** %8, align 8
  %17 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %18 = icmp ne %struct.cnic_dev* %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @NETDEV_REGISTER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = call %struct.cnic_dev* @is_cnic_dev(%struct.net_device* %24)
  store %struct.cnic_dev* %25, %struct.cnic_dev** %8, align 8
  %26 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %27 = icmp ne %struct.cnic_dev* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  %29 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %30 = call i32 @cnic_hold(%struct.cnic_dev* %29)
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %19, %3
  %33 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %34 = icmp ne %struct.cnic_dev* %33, null
  br i1 %34, label %35, label %103

35:                                               ; preds = %32
  %36 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %37 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %36, i32 0, i32 0
  %38 = load %struct.cnic_local*, %struct.cnic_local** %37, align 8
  store %struct.cnic_local* %38, %struct.cnic_local** %10, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %43 = call i32 @cnic_ulp_init(%struct.cnic_dev* %42)
  br label %52

44:                                               ; preds = %35
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %50 = call i32 @cnic_ulp_exit(%struct.cnic_dev* %49)
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @NETDEV_UP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %58 = call i64 @cnic_register_netdev(%struct.cnic_dev* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %62 = call i32 @cnic_put(%struct.cnic_dev* %61)
  br label %128

63:                                               ; preds = %56
  %64 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %65 = call i32 @cnic_start_hw(%struct.cnic_dev* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %69 = call i32 @cnic_ulp_start(%struct.cnic_dev* %68)
  br label %70

70:                                               ; preds = %67, %63
  br label %71

71:                                               ; preds = %70, %52
  %72 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @cnic_rcv_netevent(%struct.cnic_local* %72, i64 %73, i32 0)
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @NETDEV_GOING_DOWN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %80 = call i32 @cnic_ulp_stop(%struct.cnic_dev* %79)
  %81 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %82 = call i32 @cnic_stop_hw(%struct.cnic_dev* %81)
  %83 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %84 = call i32 @cnic_unregister_netdev(%struct.cnic_dev* %83)
  br label %100

85:                                               ; preds = %71
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = call i32 @write_lock(i32* @cnic_dev_lock)
  %91 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %92 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %91, i32 0, i32 1
  %93 = call i32 @list_del_init(i32* %92)
  %94 = call i32 @write_unlock(i32* @cnic_dev_lock)
  %95 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %96 = call i32 @cnic_put(%struct.cnic_dev* %95)
  %97 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %98 = call i32 @cnic_free_dev(%struct.cnic_dev* %97)
  br label %128

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %78
  %101 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %102 = call i32 @cnic_put(%struct.cnic_dev* %101)
  br label %127

103:                                              ; preds = %32
  %104 = load %struct.net_device*, %struct.net_device** %7, align 8
  %105 = call i32 @cnic_get_vlan(%struct.net_device* %104, %struct.net_device** %11)
  store i32 %105, i32* %12, align 4
  %106 = load %struct.net_device*, %struct.net_device** %11, align 8
  %107 = icmp ne %struct.net_device* %106, null
  br i1 %107, label %108, label %126

108:                                              ; preds = %103
  %109 = load %struct.net_device*, %struct.net_device** %11, align 8
  %110 = call %struct.cnic_dev* @cnic_from_netdev(%struct.net_device* %109)
  store %struct.cnic_dev* %110, %struct.cnic_dev** %8, align 8
  %111 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %112 = icmp ne %struct.cnic_dev* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load i32, i32* @VLAN_CFI_MASK, align 4
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %118 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %117, i32 0, i32 0
  %119 = load %struct.cnic_local*, %struct.cnic_local** %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @cnic_rcv_netevent(%struct.cnic_local* %119, i64 %120, i32 %121)
  %123 = load %struct.cnic_dev*, %struct.cnic_dev** %8, align 8
  %124 = call i32 @cnic_put(%struct.cnic_dev* %123)
  br label %125

125:                                              ; preds = %113, %108
  br label %126

126:                                              ; preds = %125, %103
  br label %127

127:                                              ; preds = %126, %100
  br label %128

128:                                              ; preds = %127, %89, %60
  %129 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %129
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.cnic_dev* @cnic_from_netdev(%struct.net_device*) #1

declare dso_local %struct.cnic_dev* @is_cnic_dev(%struct.net_device*) #1

declare dso_local i32 @cnic_hold(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_ulp_init(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_ulp_exit(%struct.cnic_dev*) #1

declare dso_local i64 @cnic_register_netdev(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_put(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_start_hw(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_ulp_start(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_rcv_netevent(%struct.cnic_local*, i64, i32) #1

declare dso_local i32 @cnic_ulp_stop(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_stop_hw(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_unregister_netdev(%struct.cnic_dev*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @cnic_free_dev(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_get_vlan(%struct.net_device*, %struct.net_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
