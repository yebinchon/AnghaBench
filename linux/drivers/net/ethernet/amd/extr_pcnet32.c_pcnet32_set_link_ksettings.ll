; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.pcnet32_private = type { i64, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_6__ = type { i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@PCNET32_79C970A = common dso_local global i64 0, align 8
@CSR0 = common dso_local global i32 0, align 4
@CSR0_STOP = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i64 0, align 8
@CSR15 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@CSR0_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @pcnet32_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.pcnet32_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %13)
  store %struct.pcnet32_private* %14, %struct.pcnet32_private** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %21 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %20, i32 0, i32 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %25 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %30 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %29, i32 0, i32 7
  %31 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %32 = call i32 @mii_ethtool_set_link_ksettings(i32* %30, %struct.ethtool_link_ksettings* %31)
  store i32 %32, i32* %8, align 4
  br label %193

33:                                               ; preds = %2
  %34 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %35 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCNET32_79C970A, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %192

39:                                               ; preds = %33
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @pcnet32_suspend(%struct.net_device* %40, i64* %7, i32 0)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %46 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %45, i32 0, i32 5
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @CSR0, align 4
  %52 = load i32, i32* @CSR0_STOP, align 4
  %53 = call i32 %49(i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %44, %39
  %55 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AUTONEG_ENABLE, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %63 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %65 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %64, i32 0, i32 5
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32 (i32, i32)*, i32 (i32, i32)** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 %68(i32 %69, i32 2)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %72 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AUTONEG_ENABLE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %54
  %78 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %79 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %78, i32 0, i32 5
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, 2
  %86 = call i32 %82(i32 %83, i32 2, i32 %85)
  br label %175

87:                                               ; preds = %54
  %88 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %89 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %88, i32 0, i32 5
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, -3
  %96 = call i32 %92(i32 %93, i32 2, i32 %95)
  %97 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %98 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PORT_TP, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %105 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %107 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %106, i32 0, i32 5
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32 (i32, i32)*, i32 (i32, i32)** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @CSR15, align 4
  %113 = call i32 %110(i32 %111, i32 %112)
  %114 = and i32 %113, -385
  store i32 %114, i32* %12, align 4
  %115 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %116 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PORT_TP, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %87
  %122 = load i32, i32* %12, align 4
  %123 = or i32 %122, 128
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %121, %87
  %125 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %126 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %125, i32 0, i32 5
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  %129 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @CSR15, align 4
  %132 = load i32, i32* %12, align 4
  %133 = call i32 %129(i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @cpu_to_le16(i32 %134)
  %136 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %137 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %136, i32 0, i32 6
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i32 %135, i32* %139, align 4
  %140 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %141 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @DUPLEX_FULL, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %148 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  %149 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %150 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %149, i32 0, i32 5
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32 (i32, i32)*, i32 (i32, i32)** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 %153(i32 %154, i32 9)
  %156 = and i32 %155, -4
  store i32 %156, i32* %11, align 4
  %157 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %158 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @DUPLEX_FULL, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %124
  %164 = load i32, i32* %11, align 4
  %165 = or i32 %164, 3
  store i32 %165, i32* %11, align 4
  br label %166

166:                                              ; preds = %163, %124
  %167 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %168 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %167, i32 0, i32 5
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %11, align 4
  %174 = call i32 %171(i32 %172, i32 9, i32 %173)
  br label %175

175:                                              ; preds = %166, %77
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @pcnet32_clr_suspend(%struct.pcnet32_private* %179, i32 %180)
  br label %191

182:                                              ; preds = %175
  %183 = load %struct.net_device*, %struct.net_device** %3, align 8
  %184 = call i64 @netif_running(%struct.net_device* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load %struct.net_device*, %struct.net_device** %3, align 8
  %188 = load i32, i32* @CSR0_NORMAL, align 4
  %189 = call i32 @pcnet32_restart(%struct.net_device* %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %182
  br label %191

191:                                              ; preds = %190, %178
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %191, %33
  br label %193

193:                                              ; preds = %192, %28
  %194 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %195 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %194, i32 0, i32 4
  %196 = load i64, i64* %7, align 8
  %197 = call i32 @spin_unlock_irqrestore(i32* %195, i64 %196)
  %198 = load i32, i32* %8, align 4
  ret i32 %198
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mii_ethtool_set_link_ksettings(i32*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @pcnet32_suspend(%struct.net_device*, i64*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @pcnet32_clr_suspend(%struct.pcnet32_private*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @pcnet32_restart(%struct.net_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
