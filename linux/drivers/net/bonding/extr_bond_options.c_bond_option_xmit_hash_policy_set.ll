; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_option_xmit_hash_policy_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_option_xmit_hash_policy_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bond_opt_value = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Setting xmit hash policy to %s (%llu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, %struct.bond_opt_value*)* @bond_option_xmit_hash_policy_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_option_xmit_hash_policy_set(%struct.bonding* %0, %struct.bond_opt_value* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.bond_opt_value*, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store %struct.bond_opt_value* %1, %struct.bond_opt_value** %4, align 8
  %5 = load %struct.bonding*, %struct.bonding** %3, align 8
  %6 = getelementptr inbounds %struct.bonding, %struct.bonding* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %9 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %12 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @netdev_dbg(i32 %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.bond_opt_value*, %struct.bond_opt_value** %4, align 8
  %16 = getelementptr inbounds %struct.bond_opt_value, %struct.bond_opt_value* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bonding*, %struct.bonding** %3, align 8
  %19 = getelementptr inbounds %struct.bonding, %struct.bonding* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  ret i32 0
}

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
