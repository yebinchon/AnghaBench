; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_sysfs.c_bond_create_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_sysfs.c_bond_create_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bond_net = type { i32, %struct.TYPE_5__ }

@class_attr_bonding_masters = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"network device named %s already exists in sysfs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bond_create_sysfs(%struct.bond_net* %0) #0 {
  %2 = alloca %struct.bond_net*, align 8
  %3 = alloca i32, align 4
  store %struct.bond_net* %0, %struct.bond_net** %2, align 8
  %4 = load %struct.bond_net*, %struct.bond_net** %2, align 8
  %5 = getelementptr inbounds %struct.bond_net, %struct.bond_net* %4, i32 0, i32 1
  %6 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_5__* @class_attr_bonding_masters to i8*), i64 4, i1 false)
  %7 = load %struct.bond_net*, %struct.bond_net** %2, align 8
  %8 = getelementptr inbounds %struct.bond_net, %struct.bond_net* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = call i32 @sysfs_attr_init(%struct.TYPE_4__* %9)
  %11 = load %struct.bond_net*, %struct.bond_net** %2, align 8
  %12 = getelementptr inbounds %struct.bond_net, %struct.bond_net* %11, i32 0, i32 1
  %13 = load %struct.bond_net*, %struct.bond_net** %2, align 8
  %14 = getelementptr inbounds %struct.bond_net, %struct.bond_net* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netdev_class_create_file_ns(%struct.TYPE_5__* %12, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @EEXIST, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.bond_net*, %struct.bond_net** %2, align 8
  %23 = getelementptr inbounds %struct.bond_net, %struct.bond_net* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @class_attr_bonding_masters, i32 0, i32 0, i32 0), align 4
  %26 = call i64 @__dev_get_by_name(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @class_attr_bonding_masters, i32 0, i32 0, i32 0), align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %21
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_4__*) #2

declare dso_local i32 @netdev_class_create_file_ns(%struct.TYPE_5__*, i32) #2

declare dso_local i64 @__dev_get_by_name(i32, i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
