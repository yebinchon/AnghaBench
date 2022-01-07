; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.efx_nic = type { i64*, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.efx_nic*)* }
%struct.TYPE_3__ = type { i32 (%struct.efx_nic*)* }

@EFX_FC_RX = common dso_local global i32 0, align 4
@EFX_FC_TX = common dso_local global i32 0, align 4
@EFX_FC_AUTO = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Flow control unsupported: tx ON rx OFF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Autonegotiation is disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Unable to advertise requested flow control setting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @efx_ethtool_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %10)
  store %struct.efx_nic* %11, %struct.efx_nic** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EFX_FC_RX, align 4
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
  %29 = load i32, i32* @EFX_FC_TX, align 4
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
  %39 = load i32, i32* @EFX_FC_AUTO, align 4
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = or i32 %33, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @EFX_FC_TX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EFX_FC_RX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %55 = load i32, i32* @drv, align 4
  %56 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @netif_dbg(%struct.efx_nic* %54, i32 %55, i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %159

62:                                               ; preds = %48, %41
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @EFX_FC_AUTO, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %69 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %67
  %75 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %76 = load i32, i32* @drv, align 4
  %77 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %78 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @netif_dbg(%struct.efx_nic* %75, i32 %76, i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %159

83:                                               ; preds = %67, %62
  %84 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %85 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %84, i32 0, i32 5
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %87, align 8
  %89 = icmp ne i32 (%struct.efx_nic*)* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @EFX_FC_TX, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %97 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @EFX_FC_TX, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %95
  %103 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %104 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %103, i32 0, i32 5
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %106, align 8
  %108 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %109 = call i32 %107(%struct.efx_nic* %108)
  br label %110

110:                                              ; preds = %102, %95, %90, %83
  %111 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %112 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %8, align 8
  %116 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %117 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %7, align 4
  %119 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @efx_link_set_wanted_fc(%struct.efx_nic* %119, i32 %120)
  %122 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %123 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %138, label %129

129:                                              ; preds = %110
  %130 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %131 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = xor i32 %132, %133
  %135 = load i32, i32* @EFX_FC_AUTO, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %129, %110
  %139 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %140 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %139, i32 0, i32 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %142, align 8
  %144 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %145 = call i32 %143(%struct.efx_nic* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %138
  %149 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %150 = load i32, i32* @drv, align 4
  %151 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %152 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @netif_err(%struct.efx_nic* %149, i32 %150, i32 %153, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %159

155:                                              ; preds = %138
  br label %156

156:                                              ; preds = %155, %129
  %157 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %158 = call i32 @efx_mac_reconfigure(%struct.efx_nic* %157)
  br label %159

159:                                              ; preds = %156, %148, %74, %53
  %160 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %161 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %160, i32 0, i32 2
  %162 = call i32 @mutex_unlock(i32* %161)
  %163 = load i32, i32* %9, align 4
  ret i32 %163
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_link_set_wanted_fc(%struct.efx_nic*, i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_mac_reconfigure(%struct.efx_nic*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
