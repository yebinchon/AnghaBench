; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32 }
%union.vxlan_addr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.vxlan_fdb = type { i32 }

@NLM_F_EXCL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"lost race to create %pM\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_dev*, i32*, %union.vxlan_addr*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)* @vxlan_fdb_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_update(%struct.vxlan_dev* %0, i32* %1, %union.vxlan_addr* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct.netlink_ext_ack* %11) #0 {
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
  %26 = alloca %struct.vxlan_fdb*, align 8
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
  %27 = load %struct.vxlan_dev*, %struct.vxlan_dev** %14, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %20, align 4
  %30 = call %struct.vxlan_fdb* @__vxlan_find_mac(%struct.vxlan_dev* %27, i32* %28, i32 %29)
  store %struct.vxlan_fdb* %30, %struct.vxlan_fdb** %26, align 8
  %31 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %26, align 8
  %32 = icmp ne %struct.vxlan_fdb* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %12
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* @NLM_F_EXCL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.vxlan_dev*, %struct.vxlan_dev** %14, align 8
  %40 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @netdev_dbg(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %42)
  %44 = load i32, i32* @EEXIST, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  br label %81

46:                                               ; preds = %33
  %47 = load %struct.vxlan_dev*, %struct.vxlan_dev** %14, align 8
  %48 = load %union.vxlan_addr*, %union.vxlan_addr** %16, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %23, align 4
  %55 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %26, align 8
  %56 = load i32, i32* %24, align 4
  %57 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %25, align 8
  %58 = call i32 @vxlan_fdb_update_existing(%struct.vxlan_dev* %47, %union.vxlan_addr* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, %struct.vxlan_fdb* %55, i32 %56, %struct.netlink_ext_ack* %57)
  store i32 %58, i32* %13, align 4
  br label %81

59:                                               ; preds = %12
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* @NLM_F_CREATE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %13, align 4
  br label %81

67:                                               ; preds = %59
  %68 = load %struct.vxlan_dev*, %struct.vxlan_dev** %14, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = load %union.vxlan_addr*, %union.vxlan_addr** %16, align 8
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %23, align 4
  %78 = load i32, i32* %24, align 4
  %79 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %25, align 8
  %80 = call i32 @vxlan_fdb_update_create(%struct.vxlan_dev* %68, i32* %69, %union.vxlan_addr* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, %struct.netlink_ext_ack* %79)
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %67, %64, %46, %38
  %82 = load i32, i32* %13, align 4
  ret i32 %82
}

declare dso_local %struct.vxlan_fdb* @__vxlan_find_mac(%struct.vxlan_dev*, i32*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32*) #1

declare dso_local i32 @vxlan_fdb_update_existing(%struct.vxlan_dev*, %union.vxlan_addr*, i32, i32, i32, i32, i32, i32, %struct.vxlan_fdb*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @vxlan_fdb_update_create(%struct.vxlan_dev*, i32*, %union.vxlan_addr*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
