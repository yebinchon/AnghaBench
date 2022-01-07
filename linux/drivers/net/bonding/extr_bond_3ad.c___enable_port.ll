; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___enable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___enable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.slave* }
%struct.slave = type { i64 }

@BOND_LINK_UP = common dso_local global i64 0, align 8
@BOND_SLAVE_NOTIFY_LATER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @__enable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__enable_port(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.slave*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %4 = load %struct.port*, %struct.port** %2, align 8
  %5 = getelementptr inbounds %struct.port, %struct.port* %4, i32 0, i32 0
  %6 = load %struct.slave*, %struct.slave** %5, align 8
  store %struct.slave* %6, %struct.slave** %3, align 8
  %7 = load %struct.slave*, %struct.slave** %3, align 8
  %8 = getelementptr inbounds %struct.slave, %struct.slave* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BOND_LINK_UP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.slave*, %struct.slave** %3, align 8
  %14 = call i64 @bond_slave_is_up(%struct.slave* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.slave*, %struct.slave** %3, align 8
  %18 = load i32, i32* @BOND_SLAVE_NOTIFY_LATER, align 4
  %19 = call i32 @bond_set_slave_active_flags(%struct.slave* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %12, %1
  ret void
}

declare dso_local i64 @bond_slave_is_up(%struct.slave*) #1

declare dso_local i32 @bond_set_slave_active_flags(%struct.slave*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
