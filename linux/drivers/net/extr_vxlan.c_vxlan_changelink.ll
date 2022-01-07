; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_changelink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.vxlan_dev = type { i32, i32, %struct.TYPE_2__, i32*, %struct.vxlan_rdst }
%struct.TYPE_2__ = type { i64, i32 }
%struct.vxlan_rdst = type { %struct.net_device*, i32, i32, i32 }
%struct.vxlan_config = type { i64, i32, i32, i32 }

@all_zeros_mac = common dso_local global i32 0, align 4
@NUD_REACHABLE = common dso_local global i32 0, align 4
@NUD_PERMANENT = common dso_local global i32 0, align 4
@NLM_F_APPEND = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@NTF_SELF = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @vxlan_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.vxlan_dev*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.vxlan_config, align 8
  %13 = alloca %struct.vxlan_rdst*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %16)
  store %struct.vxlan_dev* %17, %struct.vxlan_dev** %10, align 8
  %18 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %19 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %18, i32 0, i32 4
  store %struct.vxlan_rdst* %19, %struct.vxlan_rdst** %13, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %24 = call i32 @vxlan_nl2conf(%struct.nlattr** %20, %struct.nlattr** %21, %struct.net_device* %22, %struct.vxlan_config* %12, i32 1, %struct.netlink_ext_ack* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %5, align 4
  br label %193

29:                                               ; preds = %4
  %30 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %31 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %35 = call i32 @vxlan_config_validate(i32 %32, %struct.vxlan_config* %12, %struct.net_device** %11, %struct.vxlan_dev* %33, %struct.netlink_ext_ack* %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %5, align 4
  br label %193

40:                                               ; preds = %29
  %41 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %13, align 8
  %42 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %41, i32 0, i32 0
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %11, align 8
  %45 = icmp eq %struct.net_device* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store %struct.net_device* null, %struct.net_device** %11, align 8
  br label %47

47:                                               ; preds = %46, %40
  %48 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %13, align 8
  %49 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %48, i32 0, i32 0
  %50 = load %struct.net_device*, %struct.net_device** %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %11, align 8
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %54 = call i32 @netdev_adjacent_change_prepare(%struct.net_device* %50, %struct.net_device* %51, %struct.net_device* %52, %struct.netlink_ext_ack* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %5, align 4
  br label %193

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %12, i32 0, i32 3
  %61 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %13, align 8
  %62 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %61, i32 0, i32 3
  %63 = call i32 @vxlan_addr_equal(i32* %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %152, label %65

65:                                               ; preds = %59
  %66 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %67 = load i32, i32* @all_zeros_mac, align 4
  %68 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %12, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @fdb_head_index(%struct.vxlan_dev* %66, i32 %67, i32 %69)
  store i64 %70, i64* %15, align 8
  %71 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %72 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %15, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = call i32 @spin_lock_bh(i32* %75)
  %77 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %12, i32 0, i32 3
  %78 = call i32 @vxlan_addr_any(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %120, label %80

80:                                               ; preds = %65
  %81 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %82 = load i32, i32* @all_zeros_mac, align 4
  %83 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %12, i32 0, i32 3
  %84 = load i32, i32* @NUD_REACHABLE, align 4
  %85 = load i32, i32* @NUD_PERMANENT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @NLM_F_APPEND, align 4
  %88 = load i32, i32* @NLM_F_CREATE, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %91 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %12, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %12, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %12, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @NTF_SELF, align 4
  %101 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %102 = call i32 @vxlan_fdb_update(%struct.vxlan_dev* %81, i32 %82, i32* %83, i32 %86, i32 %89, i32 %93, i32 %95, i32 %97, i32 %99, i32 %100, i32 1, %struct.netlink_ext_ack* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %80
  %106 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %107 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %15, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = call i32 @spin_unlock_bh(i32* %110)
  %112 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %13, align 8
  %113 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %112, i32 0, i32 0
  %114 = load %struct.net_device*, %struct.net_device** %113, align 8
  %115 = load %struct.net_device*, %struct.net_device** %11, align 8
  %116 = load %struct.net_device*, %struct.net_device** %6, align 8
  %117 = call i32 @netdev_adjacent_change_abort(%struct.net_device* %114, %struct.net_device* %115, %struct.net_device* %116)
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %5, align 4
  br label %193

119:                                              ; preds = %80
  br label %120

120:                                              ; preds = %119, %65
  %121 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %13, align 8
  %122 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %121, i32 0, i32 3
  %123 = call i32 @vxlan_addr_any(i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %145, label %125

125:                                              ; preds = %120
  %126 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %127 = load i32, i32* @all_zeros_mac, align 4
  %128 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %13, align 8
  %129 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %132 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %13, align 8
  %136 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %13, align 8
  %139 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %13, align 8
  %142 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @__vxlan_fdb_delete(%struct.vxlan_dev* %126, i32 %127, i32 %130, i32 %134, i32 %137, i32 %140, i32 %143, i32 1)
  br label %145

145:                                              ; preds = %125, %120
  %146 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %147 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* %15, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = call i32 @spin_unlock_bh(i32* %150)
  br label %152

152:                                              ; preds = %145, %59
  %153 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %12, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %156 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %154, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %152
  %161 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %162 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %161, i32 0, i32 1
  %163 = load i32, i32* @jiffies, align 4
  %164 = call i32 @mod_timer(i32* %162, i32 %163)
  br label %165

165:                                              ; preds = %160, %152
  %166 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %13, align 8
  %167 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %166, i32 0, i32 0
  %168 = load %struct.net_device*, %struct.net_device** %167, align 8
  %169 = load %struct.net_device*, %struct.net_device** %11, align 8
  %170 = load %struct.net_device*, %struct.net_device** %6, align 8
  %171 = call i32 @netdev_adjacent_change_commit(%struct.net_device* %168, %struct.net_device* %169, %struct.net_device* %170)
  %172 = load %struct.net_device*, %struct.net_device** %11, align 8
  %173 = icmp ne %struct.net_device* %172, null
  br i1 %173, label %174, label %186

174:                                              ; preds = %165
  %175 = load %struct.net_device*, %struct.net_device** %11, align 8
  %176 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %13, align 8
  %177 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %176, i32 0, i32 0
  %178 = load %struct.net_device*, %struct.net_device** %177, align 8
  %179 = icmp ne %struct.net_device* %175, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = load %struct.net_device*, %struct.net_device** %11, align 8
  %182 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %13, align 8
  %183 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %182, i32 0, i32 0
  store %struct.net_device* %181, %struct.net_device** %183, align 8
  %184 = load %struct.net_device*, %struct.net_device** %11, align 8
  %185 = call i32 @netdev_update_lockdep_key(%struct.net_device* %184)
  br label %186

186:                                              ; preds = %180, %174, %165
  %187 = load %struct.net_device*, %struct.net_device** %6, align 8
  %188 = load %struct.net_device*, %struct.net_device** %11, align 8
  %189 = load %struct.vxlan_dev*, %struct.vxlan_dev** %10, align 8
  %190 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @vxlan_config_apply(%struct.net_device* %187, %struct.vxlan_config* %12, %struct.net_device* %188, i32 %191, i32 1)
  store i32 0, i32* %5, align 4
  br label %193

193:                                              ; preds = %186, %105, %57, %38, %27
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vxlan_nl2conf(%struct.nlattr**, %struct.nlattr**, %struct.net_device*, %struct.vxlan_config*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @vxlan_config_validate(i32, %struct.vxlan_config*, %struct.net_device**, %struct.vxlan_dev*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @netdev_adjacent_change_prepare(%struct.net_device*, %struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @vxlan_addr_equal(i32*, i32*) #1

declare dso_local i64 @fdb_head_index(%struct.vxlan_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @vxlan_addr_any(i32*) #1

declare dso_local i32 @vxlan_fdb_update(%struct.vxlan_dev*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @netdev_adjacent_change_abort(%struct.net_device*, %struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @__vxlan_fdb_delete(%struct.vxlan_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @netdev_adjacent_change_commit(%struct.net_device*, %struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @netdev_update_lockdep_key(%struct.net_device*) #1

declare dso_local i32 @vxlan_config_apply(%struct.net_device*, %struct.vxlan_config*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
