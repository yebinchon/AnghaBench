; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_sysfs_slave.c_bond_sysfs_slave_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_sysfs_slave.c_bond_sysfs_slave_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave_attribute = type { i32 }
%struct.slave = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@slave_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bonding_slave\00", align 1
@slave_attrs = common dso_local global %struct.slave_attribute** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bond_sysfs_slave_add(%struct.slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slave*, align 8
  %4 = alloca %struct.slave_attribute**, align 8
  %5 = alloca i32, align 4
  store %struct.slave* %0, %struct.slave** %3, align 8
  %6 = load %struct.slave*, %struct.slave** %3, align 8
  %7 = getelementptr inbounds %struct.slave, %struct.slave* %6, i32 0, i32 0
  %8 = load %struct.slave*, %struct.slave** %3, align 8
  %9 = getelementptr inbounds %struct.slave, %struct.slave* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @kobject_init_and_add(i32* %7, i32* @slave_ktype, i32* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load %struct.slave_attribute**, %struct.slave_attribute*** @slave_attrs, align 8
  store %struct.slave_attribute** %19, %struct.slave_attribute*** %4, align 8
  br label %20

20:                                               ; preds = %39, %18
  %21 = load %struct.slave_attribute**, %struct.slave_attribute*** %4, align 8
  %22 = load %struct.slave_attribute*, %struct.slave_attribute** %21, align 8
  %23 = icmp ne %struct.slave_attribute* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load %struct.slave*, %struct.slave** %3, align 8
  %26 = getelementptr inbounds %struct.slave, %struct.slave* %25, i32 0, i32 0
  %27 = load %struct.slave_attribute**, %struct.slave_attribute*** %4, align 8
  %28 = load %struct.slave_attribute*, %struct.slave_attribute** %27, align 8
  %29 = getelementptr inbounds %struct.slave_attribute, %struct.slave_attribute* %28, i32 0, i32 0
  %30 = call i32 @sysfs_create_file(i32* %26, i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.slave*, %struct.slave** %3, align 8
  %35 = getelementptr inbounds %struct.slave, %struct.slave* %34, i32 0, i32 0
  %36 = call i32 @kobject_put(i32* %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %43

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.slave_attribute**, %struct.slave_attribute*** %4, align 8
  %41 = getelementptr inbounds %struct.slave_attribute*, %struct.slave_attribute** %40, i32 1
  store %struct.slave_attribute** %41, %struct.slave_attribute*** %4, align 8
  br label %20

42:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %33, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
