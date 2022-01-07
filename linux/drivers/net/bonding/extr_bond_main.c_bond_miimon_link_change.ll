; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_miimon_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_miimon_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32 }
%struct.slave = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*, %struct.slave*, i8)* @bond_miimon_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_miimon_link_change(%struct.bonding* %0, %struct.slave* %1, i8 signext %2) #0 {
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.slave*, align 8
  %6 = alloca i8, align 1
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.slave* %1, %struct.slave** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load %struct.bonding*, %struct.bonding** %4, align 8
  %8 = call i32 @BOND_MODE(%struct.bonding* %7)
  switch i32 %8, label %21 [
    i32 131, label %9
    i32 129, label %13
    i32 130, label %13
    i32 128, label %18
  ]

9:                                                ; preds = %3
  %10 = load %struct.slave*, %struct.slave** %5, align 8
  %11 = load i8, i8* %6, align 1
  %12 = call i32 @bond_3ad_handle_link_change(%struct.slave* %10, i8 signext %11)
  br label %21

13:                                               ; preds = %3, %3
  %14 = load %struct.bonding*, %struct.bonding** %4, align 8
  %15 = load %struct.slave*, %struct.slave** %5, align 8
  %16 = load i8, i8* %6, align 1
  %17 = call i32 @bond_alb_handle_link_change(%struct.bonding* %14, %struct.slave* %15, i8 signext %16)
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.bonding*, %struct.bonding** %4, align 8
  %20 = call i32 @bond_update_slave_arr(%struct.bonding* %19, i32* null)
  br label %21

21:                                               ; preds = %3, %18, %13, %9
  ret void
}

declare dso_local i32 @BOND_MODE(%struct.bonding*) #1

declare dso_local i32 @bond_3ad_handle_link_change(%struct.slave*, i8 signext) #1

declare dso_local i32 @bond_alb_handle_link_change(%struct.bonding*, %struct.slave*, i8 signext) #1

declare dso_local i32 @bond_update_slave_arr(%struct.bonding*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
