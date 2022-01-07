; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_altera_tse_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_altera_tse_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.phy_device* }
%struct.phy_device = type { i32, i32, i64 }
%struct.altera_tse_private = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MAC_CMDCFG_HD_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: Link duplex = 0x%x\0A\00", align 1
@MAC_CMDCFG_ETH_SPEED = common dso_local global i32 0, align 4
@MAC_CMDCFG_ENA_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Speed (%d) is not 10/100/1000!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @altera_tse_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_tse_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.altera_tse_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.altera_tse_private* @netdev_priv(%struct.net_device* %7)
  store %struct.altera_tse_private* %8, %struct.altera_tse_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %13 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %12, i32 0, i32 3
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %131

19:                                               ; preds = %1
  %20 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %21 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @ioread32(i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %29 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  %33 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @MAC_CMDCFG_HD_ENA, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* @MAC_CMDCFG_HD_ENA, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %48 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %54 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netdev_dbg(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %58 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %61 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %46, %19
  %63 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %67 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %116

70:                                               ; preds = %62
  store i32 1, i32* %5, align 4
  %71 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %99 [
    i32 1000, label %74
    i32 100, label %82
    i32 10, label %91
  ]

74:                                               ; preds = %70
  %75 = load i32, i32* @MAC_CMDCFG_ETH_SPEED, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @MAC_CMDCFG_ENA_10, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %110

82:                                               ; preds = %70
  %83 = load i32, i32* @MAC_CMDCFG_ETH_SPEED, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @MAC_CMDCFG_ENA_10, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %110

91:                                               ; preds = %70
  %92 = load i32, i32* @MAC_CMDCFG_ETH_SPEED, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @MAC_CMDCFG_ENA_10, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %110

99:                                               ; preds = %70
  %100 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %101 = call i64 @netif_msg_link(%struct.altera_tse_private* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %106 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @netdev_warn(%struct.net_device* %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %103, %99
  br label %110

110:                                              ; preds = %109, %91, %82, %74
  %111 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %112 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %115 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %62
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %119 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %118, i32 0, i32 4
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = call i32 @iowrite32(i32 %117, i32* %121)
  %123 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %124 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %116
  store i32 1, i32* %5, align 4
  %128 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %129 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %128, i32 0, i32 2
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %127, %116
  br label %144

131:                                              ; preds = %1
  %132 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %133 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  store i32 1, i32* %5, align 4
  %137 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %138 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %137, i32 0, i32 2
  store i32 0, i32* %138, align 8
  %139 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %140 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  %141 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %142 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %141, i32 0, i32 0
  store i32 -1, i32* %142, align 8
  br label %143

143:                                              ; preds = %136, %131
  br label %144

144:                                              ; preds = %143, %130
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %149 = call i64 @netif_msg_link(%struct.altera_tse_private* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %153 = call i32 @phy_print_status(%struct.phy_device* %152)
  br label %154

154:                                              ; preds = %151, %147, %144
  %155 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %156 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %155, i32 0, i32 3
  %157 = call i32 @spin_unlock(i32* %156)
  ret void
}

declare dso_local %struct.altera_tse_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @netif_msg_link(%struct.altera_tse_private*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
