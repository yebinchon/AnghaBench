; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_link_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_link_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64, i64, i32, i32, %struct.TYPE_7__, i32, i64, i64, i64, %struct.net_device* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i32)*, i64 (%struct.TYPE_7__*)* }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }

@link_timer = common dso_local global i32 0, align 4
@phy_serialink = common dso_local global i64 0, align 8
@phy_serdes = common dso_local global i64 0, align 8
@PCS_MIISTAT = common dso_local global i64 0, align 8
@PCS_MIISTAT_LS = common dso_local global i32 0, align 4
@link_up = common dso_local global i64 0, align 8
@link_force_try = common dso_local global i64 0, align 8
@link_force_ret = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Got link after fallback, retrying autoneg once...\0A\00", align 1
@link_down = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Link down\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@gp = common dso_local global %struct.gem* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @gem_link_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_link_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.gem*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.gem*, %struct.gem** %3, align 8
  %8 = ptrtoint %struct.gem* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @link_timer, align 4
  %11 = call %struct.gem* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.gem* %11, %struct.gem** %3, align 8
  %12 = load %struct.gem*, %struct.gem** %3, align 8
  %13 = getelementptr inbounds %struct.gem, %struct.gem* %12, i32 0, i32 9
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.gem*, %struct.gem** %3, align 8
  %16 = getelementptr inbounds %struct.gem, %struct.gem* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %204

20:                                               ; preds = %1
  %21 = load %struct.gem*, %struct.gem** %3, align 8
  %22 = getelementptr inbounds %struct.gem, %struct.gem* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @phy_serialink, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.gem*, %struct.gem** %3, align 8
  %28 = getelementptr inbounds %struct.gem, %struct.gem* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @phy_serdes, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %26, %20
  %33 = load %struct.gem*, %struct.gem** %3, align 8
  %34 = getelementptr inbounds %struct.gem, %struct.gem* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCS_MIISTAT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PCS_MIISTAT_LS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %32
  %44 = load %struct.gem*, %struct.gem** %3, align 8
  %45 = getelementptr inbounds %struct.gem, %struct.gem* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCS_MIISTAT, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %43, %32
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @PCS_MIISTAT_LS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load %struct.gem*, %struct.gem** %3, align 8
  %57 = getelementptr inbounds %struct.gem, %struct.gem* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @link_up, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %194

62:                                               ; preds = %55
  %63 = load i64, i64* @link_up, align 8
  %64 = load %struct.gem*, %struct.gem** %3, align 8
  %65 = getelementptr inbounds %struct.gem, %struct.gem* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = call i32 @netif_carrier_on(%struct.net_device* %66)
  %68 = load %struct.gem*, %struct.gem** %3, align 8
  %69 = call i64 @gem_set_link_modes(%struct.gem* %68)
  br label %70

70:                                               ; preds = %62, %50
  br label %194

71:                                               ; preds = %26
  %72 = load %struct.gem*, %struct.gem** %3, align 8
  %73 = call i64 @found_mii_phy(%struct.gem* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %152

75:                                               ; preds = %71
  %76 = load %struct.gem*, %struct.gem** %3, align 8
  %77 = getelementptr inbounds %struct.gem, %struct.gem* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64 (%struct.TYPE_7__*)*, i64 (%struct.TYPE_7__*)** %82, align 8
  %84 = load %struct.gem*, %struct.gem** %3, align 8
  %85 = getelementptr inbounds %struct.gem, %struct.gem* %84, i32 0, i32 4
  %86 = call i64 %83(%struct.TYPE_7__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %152

88:                                               ; preds = %75
  %89 = load %struct.gem*, %struct.gem** %3, align 8
  %90 = getelementptr inbounds %struct.gem, %struct.gem* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @link_force_try, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %133

94:                                               ; preds = %88
  %95 = load %struct.gem*, %struct.gem** %3, align 8
  %96 = getelementptr inbounds %struct.gem, %struct.gem* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %133

99:                                               ; preds = %94
  %100 = load i64, i64* @link_force_ret, align 8
  %101 = load %struct.gem*, %struct.gem** %3, align 8
  %102 = getelementptr inbounds %struct.gem, %struct.gem* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.gem*, %struct.gem** %3, align 8
  %104 = getelementptr inbounds %struct.gem, %struct.gem* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.gem*, %struct.gem** %3, align 8
  %108 = getelementptr inbounds %struct.gem, %struct.gem* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load %struct.gem*, %struct.gem** %3, align 8
  %110 = getelementptr inbounds %struct.gem, %struct.gem* %109, i32 0, i32 2
  store i32 5, i32* %110, align 8
  %111 = load %struct.gem*, %struct.gem** %3, align 8
  %112 = call i64 @netif_msg_link(%struct.gem* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %99
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = call i32 @netdev_info(%struct.net_device* %115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %99
  %118 = load %struct.gem*, %struct.gem** %3, align 8
  %119 = getelementptr inbounds %struct.gem, %struct.gem* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %124, align 8
  %126 = load %struct.gem*, %struct.gem** %3, align 8
  %127 = getelementptr inbounds %struct.gem, %struct.gem* %126, i32 0, i32 4
  %128 = load %struct.gem*, %struct.gem** %3, align 8
  %129 = getelementptr inbounds %struct.gem, %struct.gem* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 %125(%struct.TYPE_7__* %127, i32 %131)
  br label %151

133:                                              ; preds = %94, %88
  %134 = load %struct.gem*, %struct.gem** %3, align 8
  %135 = getelementptr inbounds %struct.gem, %struct.gem* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @link_up, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load i64, i64* @link_up, align 8
  %141 = load %struct.gem*, %struct.gem** %3, align 8
  %142 = getelementptr inbounds %struct.gem, %struct.gem* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load %struct.net_device*, %struct.net_device** %4, align 8
  %144 = call i32 @netif_carrier_on(%struct.net_device* %143)
  %145 = load %struct.gem*, %struct.gem** %3, align 8
  %146 = call i64 @gem_set_link_modes(%struct.gem* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  store i32 1, i32* %5, align 4
  br label %149

149:                                              ; preds = %148, %139
  br label %150

150:                                              ; preds = %149, %133
  br label %151

151:                                              ; preds = %150, %117
  br label %187

152:                                              ; preds = %75, %71
  %153 = load %struct.gem*, %struct.gem** %3, align 8
  %154 = getelementptr inbounds %struct.gem, %struct.gem* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @link_up, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %152
  %159 = load i64, i64* @link_down, align 8
  %160 = load %struct.gem*, %struct.gem** %3, align 8
  %161 = getelementptr inbounds %struct.gem, %struct.gem* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load %struct.gem*, %struct.gem** %3, align 8
  %163 = load i32, i32* @link, align 4
  %164 = load %struct.net_device*, %struct.net_device** %4, align 8
  %165 = call i32 @netif_info(%struct.gem* %162, i32 %163, %struct.net_device* %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %166 = load %struct.net_device*, %struct.net_device** %4, align 8
  %167 = call i32 @netif_carrier_off(%struct.net_device* %166)
  %168 = load %struct.gem*, %struct.gem** %3, align 8
  %169 = call i32 @gem_schedule_reset(%struct.gem* %168)
  br label %204

170:                                              ; preds = %152
  %171 = load %struct.gem*, %struct.gem** %3, align 8
  %172 = getelementptr inbounds %struct.gem, %struct.gem* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  %175 = icmp sgt i32 %174, 10
  br i1 %175, label %176, label %185

176:                                              ; preds = %170
  %177 = load %struct.gem*, %struct.gem** %3, align 8
  %178 = call i64 @found_mii_phy(%struct.gem* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load %struct.gem*, %struct.gem** %3, align 8
  %182 = call i32 @gem_mdio_link_not_up(%struct.gem* %181)
  store i32 %182, i32* %5, align 4
  br label %184

183:                                              ; preds = %176
  store i32 1, i32* %5, align 4
  br label %184

184:                                              ; preds = %183, %180
  br label %185

185:                                              ; preds = %184, %170
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186, %151
  %188 = load i32, i32* %5, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load %struct.gem*, %struct.gem** %3, align 8
  %192 = call i32 @gem_begin_auto_negotiation(%struct.gem* %191, i32* null)
  br label %204

193:                                              ; preds = %187
  br label %194

194:                                              ; preds = %193, %70, %61
  %195 = load %struct.gem*, %struct.gem** %3, align 8
  %196 = getelementptr inbounds %struct.gem, %struct.gem* %195, i32 0, i32 3
  %197 = load i64, i64* @jiffies, align 8
  %198 = load i32, i32* @HZ, align 4
  %199 = mul nsw i32 12, %198
  %200 = sdiv i32 %199, 10
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %197, %201
  %203 = call i32 @mod_timer(i32* %196, i64 %202)
  br label %204

204:                                              ; preds = %194, %190, %158, %19
  ret void
}

declare dso_local %struct.gem* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i64 @gem_set_link_modes(%struct.gem*) #1

declare dso_local i64 @found_mii_phy(%struct.gem*) #1

declare dso_local i64 @netif_msg_link(%struct.gem*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_info(%struct.gem*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @gem_schedule_reset(%struct.gem*) #1

declare dso_local i32 @gem_mdio_link_not_up(%struct.gem*) #1

declare dso_local i32 @gem_begin_auto_negotiation(%struct.gem*, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
