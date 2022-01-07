; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_sysfs_slave.c_bond_sysfs_slave_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_sysfs_slave.c_bond_sysfs_slave_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave_attribute = type { i32 }
%struct.slave = type { i32 }

@slave_attrs = common dso_local global %struct.slave_attribute** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bond_sysfs_slave_del(%struct.slave* %0) #0 {
  %2 = alloca %struct.slave*, align 8
  %3 = alloca %struct.slave_attribute**, align 8
  store %struct.slave* %0, %struct.slave** %2, align 8
  %4 = load %struct.slave_attribute**, %struct.slave_attribute*** @slave_attrs, align 8
  store %struct.slave_attribute** %4, %struct.slave_attribute*** %3, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load %struct.slave_attribute**, %struct.slave_attribute*** %3, align 8
  %7 = load %struct.slave_attribute*, %struct.slave_attribute** %6, align 8
  %8 = icmp ne %struct.slave_attribute* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load %struct.slave*, %struct.slave** %2, align 8
  %11 = getelementptr inbounds %struct.slave, %struct.slave* %10, i32 0, i32 0
  %12 = load %struct.slave_attribute**, %struct.slave_attribute*** %3, align 8
  %13 = load %struct.slave_attribute*, %struct.slave_attribute** %12, align 8
  %14 = getelementptr inbounds %struct.slave_attribute, %struct.slave_attribute* %13, i32 0, i32 0
  %15 = call i32 @sysfs_remove_file(i32* %11, i32* %14)
  br label %16

16:                                               ; preds = %9
  %17 = load %struct.slave_attribute**, %struct.slave_attribute*** %3, align 8
  %18 = getelementptr inbounds %struct.slave_attribute*, %struct.slave_attribute** %17, i32 1
  store %struct.slave_attribute** %18, %struct.slave_attribute*** %3, align 8
  br label %5

19:                                               ; preds = %5
  %20 = load %struct.slave*, %struct.slave** %2, align 8
  %21 = getelementptr inbounds %struct.slave, %struct.slave* %20, i32 0, i32 0
  %22 = call i32 @kobject_put(i32* %21)
  ret void
}

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
