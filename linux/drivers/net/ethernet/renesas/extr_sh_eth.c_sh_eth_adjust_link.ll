; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32, i64, i64 }
%struct.sh_eth_private = type { i32, i64, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 (%struct.net_device*)*, i32 (%struct.net_device*)* }

@ECMR = common dso_local global i32 0, align 4
@ECMR_TXF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sh_eth_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sh_eth_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.sh_eth_private* %8, %struct.sh_eth_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %13 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %12, i32 0, i32 2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %17 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %24 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %1
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @sh_eth_rcv_snd_disable(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %109

35:                                               ; preds = %30
  %36 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %40 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  %44 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %45 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %48 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %50 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %52, align 8
  %54 = icmp ne i32 (%struct.net_device*)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %43
  %56 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %57 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call i32 %60(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %55, %43
  br label %64

64:                                               ; preds = %63, %35
  %65 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %66 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %69 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %64
  store i32 1, i32* %6, align 4
  %73 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %74 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %77 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %79 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %81, align 8
  %83 = icmp ne i32 (%struct.net_device*)* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %72
  %85 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %86 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %85, i32 0, i32 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %88, align 8
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = call i32 %89(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %84, %72
  br label %93

93:                                               ; preds = %92, %64
  %94 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %95 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = load i32, i32* @ECMR, align 4
  %101 = load i32, i32* @ECMR_TXF, align 4
  %102 = call i32 @sh_eth_modify(%struct.net_device* %99, i32 %100, i32 %101, i32 0)
  store i32 1, i32* %6, align 4
  %103 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %104 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %107 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %106, i32 0, i32 5
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %98, %93
  br label %122

109:                                              ; preds = %30
  %110 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %111 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  store i32 1, i32* %6, align 4
  %115 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %116 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %115, i32 0, i32 5
  store i64 0, i64* %116, align 8
  %117 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %118 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %120 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %119, i32 0, i32 0
  store i32 -1, i32* %120, align 8
  br label %121

121:                                              ; preds = %114, %109
  br label %122

122:                                              ; preds = %121, %108
  %123 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %124 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %123, i32 0, i32 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %122
  %130 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %131 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129, %122
  %135 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %136 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = call i32 @sh_eth_rcv_snd_enable(%struct.net_device* %140)
  br label %142

142:                                              ; preds = %139, %134, %129
  %143 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %144 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %143, i32 0, i32 2
  %145 = load i64, i64* %5, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %151 = call i64 @netif_msg_link(%struct.sh_eth_private* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %155 = call i32 @phy_print_status(%struct.phy_device* %154)
  br label %156

156:                                              ; preds = %153, %149, %142
  ret void
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sh_eth_rcv_snd_disable(%struct.net_device*) #1

declare dso_local i32 @sh_eth_modify(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @sh_eth_rcv_snd_enable(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @netif_msg_link(%struct.sh_eth_private*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
