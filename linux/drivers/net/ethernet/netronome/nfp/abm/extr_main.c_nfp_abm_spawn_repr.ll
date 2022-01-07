; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_spawn_repr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_spawn_repr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.nfp_abm_link = type { i64, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }
%struct.nfp_reprs = type { i32* }
%struct.nfp_repr = type { %struct.nfp_abm_link* }
%struct.nfp_port = type { i32, i32, i64, i32, i32 }

@NFP_PORT_PHYS_PORT = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_PHYS_PORT = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_PF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"duplicate repr\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s Port %d Representor(%s) created\0A\00", align 1
@NFP_PORT_PF_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"PCIe\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Phys\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_abm_link*, i32)* @nfp_abm_spawn_repr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_spawn_repr(%struct.nfp_app* %0, %struct.nfp_abm_link* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.nfp_abm_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfp_reprs*, align 8
  %11 = alloca %struct.nfp_repr*, align 8
  %12 = alloca %struct.nfp_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.nfp_abm_link* %1, %struct.nfp_abm_link** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @NFP_PORT_PHYS_PORT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @NFP_REPR_TYPE_PHYS_PORT, align 4
  store i32 %19, i32* %9, align 4
  store i32 1, i32* %13, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @NFP_REPR_TYPE_PF, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %23 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %20, %18
  %28 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call %struct.net_device* @nfp_repr_alloc_mqs(%struct.nfp_app* %28, i32 %29, i32 1)
  store %struct.net_device* %30, %struct.net_device** %8, align 8
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = icmp ne %struct.net_device* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %176

36:                                               ; preds = %27
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %37)
  store %struct.nfp_repr* %38, %struct.nfp_repr** %11, align 8
  %39 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %40 = load %struct.nfp_repr*, %struct.nfp_repr** %11, align 8
  %41 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %40, i32 0, i32 0
  store %struct.nfp_abm_link* %39, %struct.nfp_abm_link** %41, align 8
  %42 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.net_device*, %struct.net_device** %8, align 8
  %45 = call %struct.nfp_port* @nfp_port_alloc(%struct.nfp_app* %42, i32 %43, %struct.net_device* %44)
  store %struct.nfp_port* %45, %struct.nfp_port** %12, align 8
  %46 = load %struct.nfp_port*, %struct.nfp_port** %12, align 8
  %47 = call i64 @IS_ERR(%struct.nfp_port* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.nfp_port*, %struct.nfp_port** %12, align 8
  %51 = call i32 @PTR_ERR(%struct.nfp_port* %50)
  store i32 %51, i32* %14, align 4
  br label %172

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @NFP_PORT_PHYS_PORT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load %struct.nfp_port*, %struct.nfp_port** %12, align 8
  %58 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %60 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %63 = load %struct.nfp_port*, %struct.nfp_port** %12, align 8
  %64 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %65 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @nfp_port_init_phy_port(%struct.TYPE_10__* %61, %struct.nfp_app* %62, %struct.nfp_port* %63, i64 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %169

71:                                               ; preds = %56
  br label %102

72:                                               ; preds = %52
  %73 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %74 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nfp_port*, %struct.nfp_port** %12, align 8
  %79 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %81 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 1
  %86 = zext i1 %85 to i32
  %87 = load %struct.nfp_port*, %struct.nfp_port** %12, align 8
  %88 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %90 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.nfp_port*, %struct.nfp_port** %12, align 8
  %93 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %95 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nfp_port*, %struct.nfp_port** %12, align 8
  %101 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %72, %71
  %103 = load %struct.net_device*, %struct.net_device** %8, align 8
  %104 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %105 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = call i32 @SET_NETDEV_DEV(%struct.net_device* %103, i32* %109)
  %111 = load %struct.net_device*, %struct.net_device** %8, align 8
  %112 = call i32 @eth_hw_addr_random(%struct.net_device* %111)
  %113 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %114 = load %struct.net_device*, %struct.net_device** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %117 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @nfp_abm_portid(i32 %115, i64 %118)
  %120 = load %struct.nfp_port*, %struct.nfp_port** %12, align 8
  %121 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %122 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @nfp_repr_init(%struct.nfp_app* %113, %struct.net_device* %114, i32 %119, %struct.nfp_port* %120, i32 %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %102
  br label %169

131:                                              ; preds = %102
  %132 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call %struct.nfp_reprs* @nfp_reprs_get_locked(%struct.nfp_app* %132, i32 %133)
  store %struct.nfp_reprs* %134, %struct.nfp_reprs** %10, align 8
  %135 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %136 = load %struct.nfp_reprs*, %struct.nfp_reprs** %10, align 8
  %137 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %138 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @nfp_repr_get_locked(%struct.nfp_app* %135, %struct.nfp_reprs* %136, i64 %139)
  %141 = call i32 @WARN(i32 %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %142 = call i32 (...) @rtnl_lock()
  %143 = load %struct.nfp_reprs*, %struct.nfp_reprs** %10, align 8
  %144 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %147 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.net_device*, %struct.net_device** %8, align 8
  %152 = call i32 @rcu_assign_pointer(i32 %150, %struct.net_device* %151)
  %153 = call i32 (...) @rtnl_unlock()
  %154 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %155 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @NFP_PORT_PF_PORT, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %162 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %163 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.net_device*, %struct.net_device** %8, align 8
  %166 = getelementptr inbounds %struct.net_device, %struct.net_device* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @nfp_info(i32 %156, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %161, i64 %164, i32 %167)
  store i32 0, i32* %4, align 4
  br label %176

169:                                              ; preds = %130, %70
  %170 = load %struct.nfp_port*, %struct.nfp_port** %12, align 8
  %171 = call i32 @nfp_port_free(%struct.nfp_port* %170)
  br label %172

172:                                              ; preds = %169, %49
  %173 = load %struct.net_device*, %struct.net_device** %8, align 8
  %174 = call i32 @nfp_repr_free(%struct.net_device* %173)
  %175 = load i32, i32* %14, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %172, %131, %33
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local %struct.net_device* @nfp_repr_alloc_mqs(%struct.nfp_app*, i32, i32) #1

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.nfp_port* @nfp_port_alloc(%struct.nfp_app*, i32, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.nfp_port*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_port*) #1

declare dso_local i32 @nfp_port_init_phy_port(%struct.TYPE_10__*, %struct.nfp_app*, %struct.nfp_port*, i64) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @nfp_repr_init(%struct.nfp_app*, %struct.net_device*, i32, %struct.nfp_port*, i32) #1

declare dso_local i32 @nfp_abm_portid(i32, i64) #1

declare dso_local %struct.nfp_reprs* @nfp_reprs_get_locked(%struct.nfp_app*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @nfp_repr_get_locked(%struct.nfp_app*, %struct.nfp_reprs*, i64) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @nfp_info(i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @nfp_port_free(%struct.nfp_port*) #1

declare dso_local i32 @nfp_repr_free(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
