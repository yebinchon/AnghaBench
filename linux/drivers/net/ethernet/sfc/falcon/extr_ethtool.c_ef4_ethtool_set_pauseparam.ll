; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.ef4_nic = type { i64, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.ef4_nic*)* }
%struct.TYPE_3__ = type { i32 (%struct.ef4_nic*)* }

@EF4_FC_RX = common dso_local global i32 0, align 4
@EF4_FC_TX = common dso_local global i32 0, align 4
@EF4_FC_AUTO = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Flow control unsupported: tx ON rx OFF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Autonegotiation is disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Unable to advertise requested flow control setting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @ef4_ethtool_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_ethtool_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.ef4_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %10)
  store %struct.ef4_nic* %11, %struct.ef4_nic** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %13 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EF4_FC_RX, align 4
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @EF4_FC_TX, align 4
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = or i32 %23, %32
  %34 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @EF4_FC_AUTO, align 4
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = or i32 %33, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @EF4_FC_TX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EF4_FC_RX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %55 = load i32, i32* @drv, align 4
  %56 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %57 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @netif_dbg(%struct.ef4_nic* %54, i32 %55, i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %153

62:                                               ; preds = %48, %41
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @EF4_FC_AUTO, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %69 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %74 = load i32, i32* @drv, align 4
  %75 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %76 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @netif_dbg(%struct.ef4_nic* %73, i32 %74, i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %153

81:                                               ; preds = %67, %62
  %82 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %83 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %82, i32 0, i32 5
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %85, align 8
  %87 = icmp ne i32 (%struct.ef4_nic*)* %86, null
  br i1 %87, label %88, label %108

88:                                               ; preds = %81
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @EF4_FC_TX, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %95 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @EF4_FC_TX, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %93
  %101 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %102 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %101, i32 0, i32 5
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %104, align 8
  %106 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %107 = call i32 %105(%struct.ef4_nic* %106)
  br label %108

108:                                              ; preds = %100, %93, %88, %81
  %109 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %110 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %8, align 8
  %112 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %113 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %7, align 4
  %115 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @ef4_link_set_wanted_fc(%struct.ef4_nic* %115, i32 %116)
  %118 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %119 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %132, label %123

123:                                              ; preds = %108
  %124 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %125 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = xor i32 %126, %127
  %129 = load i32, i32* @EF4_FC_AUTO, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %123, %108
  %133 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %134 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %133, i32 0, i32 4
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %136, align 8
  %138 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %139 = call i32 %137(%struct.ef4_nic* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %132
  %143 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %144 = load i32, i32* @drv, align 4
  %145 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %146 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @netif_err(%struct.ef4_nic* %143, i32 %144, i32 %147, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %153

149:                                              ; preds = %132
  br label %150

150:                                              ; preds = %149, %123
  %151 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %152 = call i32 @ef4_mac_reconfigure(%struct.ef4_nic* %151)
  br label %153

153:                                              ; preds = %150, %142, %72, %53
  %154 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %155 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %154, i32 0, i32 2
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %9, align 4
  ret i32 %157
}

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @ef4_link_set_wanted_fc(%struct.ef4_nic*, i32) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @ef4_mac_reconfigure(%struct.ef4_nic*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
