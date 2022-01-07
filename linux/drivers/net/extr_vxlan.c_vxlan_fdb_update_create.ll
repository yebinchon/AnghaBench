; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_update_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_update_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32 }
%union.vxlan_addr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.vxlan_fdb = type { i32 }

@NTF_USE = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"add %pM -> %pIS\0A\00", align 1
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_dev*, i32*, %union.vxlan_addr*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)* @vxlan_fdb_update_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_update_create(%struct.vxlan_dev* %0, i32* %1, %union.vxlan_addr* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct.netlink_ext_ack* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.vxlan_dev*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %union.vxlan_addr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.netlink_ext_ack*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.vxlan_fdb*, align 8
  %28 = alloca i32, align 4
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %14, align 8
  store i32* %1, i32** %15, align 8
  store %union.vxlan_addr* %2, %union.vxlan_addr** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store %struct.netlink_ext_ack* %11, %struct.netlink_ext_ack** %25, align 8
  %29 = load i32, i32* %23, align 4
  %30 = load i32, i32* @NTF_USE, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %26, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* @NLM_F_REPLACE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %12
  %38 = load i32*, i32** %15, align 8
  %39 = call i64 @is_multicast_ether_addr(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %15, align 8
  %43 = call i64 @is_zero_ether_addr(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  br label %92

48:                                               ; preds = %41, %12
  %49 = load %struct.vxlan_dev*, %struct.vxlan_dev** %14, align 8
  %50 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = load %union.vxlan_addr*, %union.vxlan_addr** %16, align 8
  %54 = call i32 @netdev_dbg(i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %52, %union.vxlan_addr* %53)
  %55 = load %struct.vxlan_dev*, %struct.vxlan_dev** %14, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = load %union.vxlan_addr*, %union.vxlan_addr** %16, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %26, align 4
  %64 = call i32 @vxlan_fdb_create(%struct.vxlan_dev* %55, i32* %56, %union.vxlan_addr* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, %struct.vxlan_fdb** %27)
  store i32 %64, i32* %28, align 4
  %65 = load i32, i32* %28, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %48
  %68 = load i32, i32* %28, align 4
  store i32 %68, i32* %13, align 4
  br label %92

69:                                               ; preds = %48
  %70 = load %struct.vxlan_dev*, %struct.vxlan_dev** %14, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* %20, align 4
  %73 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %27, align 8
  %74 = call i32 @vxlan_fdb_insert(%struct.vxlan_dev* %70, i32* %71, i32 %72, %struct.vxlan_fdb* %73)
  %75 = load %struct.vxlan_dev*, %struct.vxlan_dev** %14, align 8
  %76 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %27, align 8
  %77 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %27, align 8
  %78 = call i32 @first_remote_rtnl(%struct.vxlan_fdb* %77)
  %79 = load i32, i32* @RTM_NEWNEIGH, align 4
  %80 = load i32, i32* %24, align 4
  %81 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %25, align 8
  %82 = call i32 @vxlan_fdb_notify(%struct.vxlan_dev* %75, %struct.vxlan_fdb* %76, i32 %78, i32 %79, i32 %80, %struct.netlink_ext_ack* %81)
  store i32 %82, i32* %28, align 4
  %83 = load i32, i32* %28, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %87

86:                                               ; preds = %69
  store i32 0, i32* %13, align 4
  br label %92

87:                                               ; preds = %85
  %88 = load %struct.vxlan_dev*, %struct.vxlan_dev** %14, align 8
  %89 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %27, align 8
  %90 = call i32 @vxlan_fdb_destroy(%struct.vxlan_dev* %88, %struct.vxlan_fdb* %89, i32 0, i32 0)
  %91 = load i32, i32* %28, align 4
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %87, %86, %67, %45
  %93 = load i32, i32* %13, align 4
  ret i32 %93
}

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32*, %union.vxlan_addr*) #1

declare dso_local i32 @vxlan_fdb_create(%struct.vxlan_dev*, i32*, %union.vxlan_addr*, i32, i32, i32, i32, i32, i32, %struct.vxlan_fdb**) #1

declare dso_local i32 @vxlan_fdb_insert(%struct.vxlan_dev*, i32*, i32, %struct.vxlan_fdb*) #1

declare dso_local i32 @vxlan_fdb_notify(%struct.vxlan_dev*, %struct.vxlan_fdb*, i32, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @first_remote_rtnl(%struct.vxlan_fdb*) #1

declare dso_local i32 @vxlan_fdb_destroy(%struct.vxlan_dev*, %struct.vxlan_fdb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
