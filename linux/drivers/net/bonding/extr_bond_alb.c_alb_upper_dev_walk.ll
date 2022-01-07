; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_alb_upper_dev_walk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_alb_upper_dev_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, i32* }
%struct.alb_walk_data = type { i32, i32*, %struct.slave*, %struct.bonding* }
%struct.slave = type { i32 }
%struct.bonding = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bond_vlan_tag = type { i32, i32 }

@NET_ADDR_STOLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @alb_upper_dev_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alb_upper_dev_walk(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.alb_walk_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bonding*, align 8
  %8 = alloca %struct.slave*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bond_vlan_tag*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.alb_walk_data*
  store %struct.alb_walk_data* %12, %struct.alb_walk_data** %5, align 8
  %13 = load %struct.alb_walk_data*, %struct.alb_walk_data** %5, align 8
  %14 = getelementptr inbounds %struct.alb_walk_data, %struct.alb_walk_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.alb_walk_data*, %struct.alb_walk_data** %5, align 8
  %17 = getelementptr inbounds %struct.alb_walk_data, %struct.alb_walk_data* %16, i32 0, i32 3
  %18 = load %struct.bonding*, %struct.bonding** %17, align 8
  store %struct.bonding* %18, %struct.bonding** %7, align 8
  %19 = load %struct.alb_walk_data*, %struct.alb_walk_data** %5, align 8
  %20 = getelementptr inbounds %struct.alb_walk_data, %struct.alb_walk_data* %19, i32 0, i32 2
  %21 = load %struct.slave*, %struct.slave** %20, align 8
  store %struct.slave* %21, %struct.slave** %8, align 8
  %22 = load %struct.alb_walk_data*, %struct.alb_walk_data** %5, align 8
  %23 = getelementptr inbounds %struct.alb_walk_data, %struct.alb_walk_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i64 @is_vlan_dev(%struct.net_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %2
  %29 = load %struct.bonding*, %struct.bonding** %7, align 8
  %30 = getelementptr inbounds %struct.bonding, %struct.bonding* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %28
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NET_ADDR_STOLEN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.slave*, %struct.slave** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @vlan_dev_vlan_proto(%struct.net_device* %48)
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @vlan_dev_vlan_id(%struct.net_device* %50)
  %52 = call i32 @alb_send_lp_vid(%struct.slave* %46, i32* %47, i32 %49, i32 %51)
  br label %63

53:                                               ; preds = %39
  %54 = load %struct.slave*, %struct.slave** %8, align 8
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @vlan_dev_vlan_proto(%struct.net_device* %58)
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i32 @vlan_dev_vlan_id(%struct.net_device* %60)
  %62 = call i32 @alb_send_lp_vid(%struct.slave* %54, i32* %57, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %53, %45
  br label %64

64:                                               ; preds = %63, %28, %2
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i64 @netif_is_macvlan(%struct.net_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %98, label %71

71:                                               ; preds = %68
  %72 = load %struct.bonding*, %struct.bonding** %7, align 8
  %73 = getelementptr inbounds %struct.bonding, %struct.bonding* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = call %struct.bond_vlan_tag* @bond_verify_device_path(%struct.TYPE_2__* %74, %struct.net_device* %75, i32 0)
  store %struct.bond_vlan_tag* %76, %struct.bond_vlan_tag** %10, align 8
  %77 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %78 = call i64 @IS_ERR_OR_NULL(%struct.bond_vlan_tag* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = call i32 (...) @BUG()
  br label %82

82:                                               ; preds = %80, %71
  %83 = load %struct.slave*, %struct.slave** %8, align 8
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %88 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %87, i64 0
  %89 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %92 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %91, i64 0
  %93 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @alb_send_lp_vid(%struct.slave* %83, i32* %86, i32 %90, i32 %94)
  %96 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %97 = call i32 @kfree(%struct.bond_vlan_tag* %96)
  br label %98

98:                                               ; preds = %82, %68, %64
  ret i32 0
}

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @alb_send_lp_vid(%struct.slave*, i32*, i32, i32) #1

declare dso_local i32 @vlan_dev_vlan_proto(%struct.net_device*) #1

declare dso_local i32 @vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local i64 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local %struct.bond_vlan_tag* @bond_verify_device_path(%struct.TYPE_2__*, %struct.net_device*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.bond_vlan_tag*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @kfree(%struct.bond_vlan_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
