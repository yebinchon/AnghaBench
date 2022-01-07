; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_sysfs_slave.c_slave_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_sysfs_slave.c_slave_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.slave_attribute = type { i32 (%struct.slave*, i8*)* }
%struct.slave = type opaque
%struct.slave.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @slave_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slave_show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.slave_attribute*, align 8
  %8 = alloca %struct.slave.0*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.attribute*, %struct.attribute** %5, align 8
  %10 = call %struct.slave_attribute* @to_slave_attr(%struct.attribute* %9)
  store %struct.slave_attribute* %10, %struct.slave_attribute** %7, align 8
  %11 = load %struct.kobject*, %struct.kobject** %4, align 8
  %12 = call %struct.slave.0* @to_slave(%struct.kobject* %11)
  store %struct.slave.0* %12, %struct.slave.0** %8, align 8
  %13 = load %struct.slave_attribute*, %struct.slave_attribute** %7, align 8
  %14 = getelementptr inbounds %struct.slave_attribute, %struct.slave_attribute* %13, i32 0, i32 0
  %15 = load i32 (%struct.slave*, i8*)*, i32 (%struct.slave*, i8*)** %14, align 8
  %16 = load %struct.slave.0*, %struct.slave.0** %8, align 8
  %17 = bitcast %struct.slave.0* %16 to %struct.slave*
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 %15(%struct.slave* %17, i8* %18)
  ret i32 %19
}

declare dso_local %struct.slave_attribute* @to_slave_attr(%struct.attribute*) #1

declare dso_local %struct.slave.0* @to_slave(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
