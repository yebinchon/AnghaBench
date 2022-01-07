; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_change_active_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_change_active_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, i64, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i64 }
%struct.slave = type { i64, i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@BOND_LINK_BACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"making interface the new active one %d ms earlier\0A\00", align 1
@BOND_LINK_UP = common dso_local global i32 0, align 4
@BOND_SLAVE_NOTIFY_NOW = common dso_local global i32 0, align 4
@BOND_MODE_8023AD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"making interface the new active one\0A\00", align 1
@BOND_MODE_ACTIVEBACKUP = common dso_local global i64 0, align 8
@NETDEV_BONDING_FAILOVER = common dso_local global i32 0, align 4
@NETDEV_NOTIFY_PEERS = common dso_local global i32 0, align 4
@BOND_MODE_ROUNDROBIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bond_change_active_slave(%struct.bonding* %0, %struct.slave* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.slave*, align 8
  %5 = alloca %struct.slave*, align 8
  %6 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store %struct.slave* %1, %struct.slave** %4, align 8
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load %struct.bonding*, %struct.bonding** %3, align 8
  %9 = getelementptr inbounds %struct.bonding, %struct.bonding* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.slave* @rtnl_dereference(i32 %10)
  store %struct.slave* %11, %struct.slave** %5, align 8
  %12 = load %struct.slave*, %struct.slave** %5, align 8
  %13 = load %struct.slave*, %struct.slave** %4, align 8
  %14 = icmp eq %struct.slave* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %236

16:                                               ; preds = %2
  %17 = load %struct.slave*, %struct.slave** %4, align 8
  %18 = icmp ne %struct.slave* %17, null
  br i1 %18, label %19, label %92

19:                                               ; preds = %16
  %20 = load i32, i32* @jiffies, align 4
  %21 = load %struct.slave*, %struct.slave** %4, align 8
  %22 = getelementptr inbounds %struct.slave, %struct.slave* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.slave*, %struct.slave** %4, align 8
  %24 = getelementptr inbounds %struct.slave, %struct.slave* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BOND_LINK_BACK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %19
  %29 = load %struct.bonding*, %struct.bonding** %3, align 8
  %30 = call i64 @bond_uses_primary(%struct.bonding* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load %struct.bonding*, %struct.bonding** %3, align 8
  %34 = getelementptr inbounds %struct.bonding, %struct.bonding* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.slave*, %struct.slave** %4, align 8
  %37 = getelementptr inbounds %struct.slave, %struct.slave* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bonding*, %struct.bonding** %3, align 8
  %40 = getelementptr inbounds %struct.bonding, %struct.bonding* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.slave*, %struct.slave** %4, align 8
  %44 = getelementptr inbounds %struct.slave, %struct.slave* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  %47 = load %struct.bonding*, %struct.bonding** %3, align 8
  %48 = getelementptr inbounds %struct.bonding, %struct.bonding* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %46, %50
  %52 = call i32 (i32, i32, i8*, ...) @slave_info(i32 %35, i32 %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %32, %28
  %54 = load %struct.slave*, %struct.slave** %4, align 8
  %55 = getelementptr inbounds %struct.slave, %struct.slave* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = load %struct.slave*, %struct.slave** %4, align 8
  %57 = load i32, i32* @BOND_LINK_UP, align 4
  %58 = load i32, i32* @BOND_SLAVE_NOTIFY_NOW, align 4
  %59 = call i32 @bond_set_slave_link_state(%struct.slave* %56, i32 %57, i32 %58)
  %60 = load %struct.bonding*, %struct.bonding** %3, align 8
  %61 = call i64 @BOND_MODE(%struct.bonding* %60)
  %62 = load i64, i64* @BOND_MODE_8023AD, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load %struct.slave*, %struct.slave** %4, align 8
  %66 = load i32, i32* @BOND_LINK_UP, align 4
  %67 = call i32 @bond_3ad_handle_link_change(%struct.slave* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %53
  %69 = load %struct.bonding*, %struct.bonding** %3, align 8
  %70 = call i64 @bond_is_lb(%struct.bonding* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.bonding*, %struct.bonding** %3, align 8
  %74 = load %struct.slave*, %struct.slave** %4, align 8
  %75 = load i32, i32* @BOND_LINK_UP, align 4
  %76 = call i32 @bond_alb_handle_link_change(%struct.bonding* %73, %struct.slave* %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %68
  br label %91

78:                                               ; preds = %19
  %79 = load %struct.bonding*, %struct.bonding** %3, align 8
  %80 = call i64 @bond_uses_primary(%struct.bonding* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load %struct.bonding*, %struct.bonding** %3, align 8
  %84 = getelementptr inbounds %struct.bonding, %struct.bonding* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.slave*, %struct.slave** %4, align 8
  %87 = getelementptr inbounds %struct.slave, %struct.slave* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i32, i8*, ...) @slave_info(i32 %85, i32 %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %82, %78
  br label %91

91:                                               ; preds = %90, %77
  br label %92

92:                                               ; preds = %91, %16
  %93 = load %struct.bonding*, %struct.bonding** %3, align 8
  %94 = call i64 @bond_uses_primary(%struct.bonding* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.bonding*, %struct.bonding** %3, align 8
  %98 = load %struct.slave*, %struct.slave** %4, align 8
  %99 = load %struct.slave*, %struct.slave** %5, align 8
  %100 = call i32 @bond_hw_addr_swap(%struct.bonding* %97, %struct.slave* %98, %struct.slave* %99)
  br label %101

101:                                              ; preds = %96, %92
  %102 = load %struct.bonding*, %struct.bonding** %3, align 8
  %103 = call i64 @bond_is_lb(%struct.bonding* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load %struct.bonding*, %struct.bonding** %3, align 8
  %107 = load %struct.slave*, %struct.slave** %4, align 8
  %108 = call i32 @bond_alb_handle_active_change(%struct.bonding* %106, %struct.slave* %107)
  %109 = load %struct.slave*, %struct.slave** %5, align 8
  %110 = icmp ne %struct.slave* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.slave*, %struct.slave** %5, align 8
  %113 = load i32, i32* @BOND_SLAVE_NOTIFY_NOW, align 4
  %114 = call i32 @bond_set_slave_inactive_flags(%struct.slave* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %105
  %116 = load %struct.slave*, %struct.slave** %4, align 8
  %117 = icmp ne %struct.slave* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.slave*, %struct.slave** %4, align 8
  %120 = load i32, i32* @BOND_SLAVE_NOTIFY_NOW, align 4
  %121 = call i32 @bond_set_slave_active_flags(%struct.slave* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %115
  br label %129

123:                                              ; preds = %101
  %124 = load %struct.bonding*, %struct.bonding** %3, align 8
  %125 = getelementptr inbounds %struct.bonding, %struct.bonding* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.slave*, %struct.slave** %4, align 8
  %128 = call i32 @rcu_assign_pointer(i32 %126, %struct.slave* %127)
  br label %129

129:                                              ; preds = %123, %122
  %130 = load %struct.bonding*, %struct.bonding** %3, align 8
  %131 = call i64 @BOND_MODE(%struct.bonding* %130)
  %132 = load i64, i64* @BOND_MODE_ACTIVEBACKUP, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %199

134:                                              ; preds = %129
  %135 = load %struct.slave*, %struct.slave** %5, align 8
  %136 = icmp ne %struct.slave* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load %struct.slave*, %struct.slave** %5, align 8
  %139 = load i32, i32* @BOND_SLAVE_NOTIFY_NOW, align 4
  %140 = call i32 @bond_set_slave_inactive_flags(%struct.slave* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %134
  %142 = load %struct.slave*, %struct.slave** %4, align 8
  %143 = icmp ne %struct.slave* %142, null
  br i1 %143, label %144, label %198

144:                                              ; preds = %141
  store i32 0, i32* %6, align 4
  %145 = load %struct.slave*, %struct.slave** %4, align 8
  %146 = load i32, i32* @BOND_SLAVE_NOTIFY_NOW, align 4
  %147 = call i32 @bond_set_slave_active_flags(%struct.slave* %145, i32 %146)
  %148 = load %struct.bonding*, %struct.bonding** %3, align 8
  %149 = getelementptr inbounds %struct.bonding, %struct.bonding* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %144
  %154 = load %struct.bonding*, %struct.bonding** %3, align 8
  %155 = load %struct.slave*, %struct.slave** %4, align 8
  %156 = load %struct.slave*, %struct.slave** %5, align 8
  %157 = call i32 @bond_do_fail_over_mac(%struct.bonding* %154, %struct.slave* %155, %struct.slave* %156)
  br label %158

158:                                              ; preds = %153, %144
  %159 = load %struct.bonding*, %struct.bonding** %3, align 8
  %160 = getelementptr inbounds %struct.bonding, %struct.bonding* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @netif_running(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = load %struct.bonding*, %struct.bonding** %3, align 8
  %166 = getelementptr inbounds %struct.bonding, %struct.bonding* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.bonding*, %struct.bonding** %3, align 8
  %170 = getelementptr inbounds %struct.bonding, %struct.bonding* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @max(i32 1, i32 %172)
  %174 = mul nsw i32 %168, %173
  %175 = load %struct.bonding*, %struct.bonding** %3, align 8
  %176 = getelementptr inbounds %struct.bonding, %struct.bonding* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.bonding*, %struct.bonding** %3, align 8
  %178 = call i32 @bond_should_notify_peers(%struct.bonding* %177)
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %164, %158
  %180 = load i32, i32* @NETDEV_BONDING_FAILOVER, align 4
  %181 = load %struct.bonding*, %struct.bonding** %3, align 8
  %182 = getelementptr inbounds %struct.bonding, %struct.bonding* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @call_netdevice_notifiers(i32 %180, i32 %183)
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %179
  %188 = load %struct.bonding*, %struct.bonding** %3, align 8
  %189 = getelementptr inbounds %struct.bonding, %struct.bonding* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %189, align 8
  %192 = load i32, i32* @NETDEV_NOTIFY_PEERS, align 4
  %193 = load %struct.bonding*, %struct.bonding** %3, align 8
  %194 = getelementptr inbounds %struct.bonding, %struct.bonding* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @call_netdevice_notifiers(i32 %192, i32 %195)
  br label %197

197:                                              ; preds = %187, %179
  br label %198

198:                                              ; preds = %197, %141
  br label %199

199:                                              ; preds = %198, %129
  %200 = load %struct.bonding*, %struct.bonding** %3, align 8
  %201 = getelementptr inbounds %struct.bonding, %struct.bonding* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @netif_running(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %236

205:                                              ; preds = %199
  %206 = load %struct.bonding*, %struct.bonding** %3, align 8
  %207 = getelementptr inbounds %struct.bonding, %struct.bonding* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %236

211:                                              ; preds = %205
  %212 = load %struct.bonding*, %struct.bonding** %3, align 8
  %213 = call i64 @bond_uses_primary(%struct.bonding* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load %struct.slave*, %struct.slave** %4, align 8
  %217 = icmp ne %struct.slave* %216, null
  br i1 %217, label %223, label %218

218:                                              ; preds = %215, %211
  %219 = load %struct.bonding*, %struct.bonding** %3, align 8
  %220 = call i64 @BOND_MODE(%struct.bonding* %219)
  %221 = load i64, i64* @BOND_MODE_ROUNDROBIN, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %218, %215
  %224 = load %struct.bonding*, %struct.bonding** %3, align 8
  %225 = getelementptr inbounds %struct.bonding, %struct.bonding* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.bonding*, %struct.bonding** %3, align 8
  %229 = getelementptr inbounds %struct.bonding, %struct.bonding* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  %230 = load %struct.bonding*, %struct.bonding** %3, align 8
  %231 = getelementptr inbounds %struct.bonding, %struct.bonding* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.bonding*, %struct.bonding** %3, align 8
  %234 = getelementptr inbounds %struct.bonding, %struct.bonding* %233, i32 0, i32 2
  %235 = call i32 @queue_delayed_work(i32 %232, i32* %234, i32 1)
  br label %236

236:                                              ; preds = %15, %223, %218, %205, %199
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.slave* @rtnl_dereference(i32) #1

declare dso_local i64 @bond_uses_primary(%struct.bonding*) #1

declare dso_local i32 @slave_info(i32, i32, i8*, ...) #1

declare dso_local i32 @bond_set_slave_link_state(%struct.slave*, i32, i32) #1

declare dso_local i64 @BOND_MODE(%struct.bonding*) #1

declare dso_local i32 @bond_3ad_handle_link_change(%struct.slave*, i32) #1

declare dso_local i64 @bond_is_lb(%struct.bonding*) #1

declare dso_local i32 @bond_alb_handle_link_change(%struct.bonding*, %struct.slave*, i32) #1

declare dso_local i32 @bond_hw_addr_swap(%struct.bonding*, %struct.slave*, %struct.slave*) #1

declare dso_local i32 @bond_alb_handle_active_change(%struct.bonding*, %struct.slave*) #1

declare dso_local i32 @bond_set_slave_inactive_flags(%struct.slave*, i32) #1

declare dso_local i32 @bond_set_slave_active_flags(%struct.slave*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.slave*) #1

declare dso_local i32 @bond_do_fail_over_mac(%struct.bonding*, %struct.slave*, %struct.slave*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @bond_should_notify_peers(%struct.bonding*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
