; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_fill_ifbond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_fill_ifbond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ifbond = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*, %struct.ifbond*)* @bond_fill_ifbond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_fill_ifbond(%struct.bonding* %0, %struct.ifbond* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.ifbond*, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store %struct.ifbond* %1, %struct.ifbond** %4, align 8
  %5 = load %struct.bonding*, %struct.bonding** %3, align 8
  %6 = call i32 @BOND_MODE(%struct.bonding* %5)
  %7 = load %struct.ifbond*, %struct.ifbond** %4, align 8
  %8 = getelementptr inbounds %struct.ifbond, %struct.ifbond* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load %struct.bonding*, %struct.bonding** %3, align 8
  %10 = getelementptr inbounds %struct.bonding, %struct.bonding* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ifbond*, %struct.ifbond** %4, align 8
  %14 = getelementptr inbounds %struct.ifbond, %struct.ifbond* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.bonding*, %struct.bonding** %3, align 8
  %16 = getelementptr inbounds %struct.bonding, %struct.bonding* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ifbond*, %struct.ifbond** %4, align 8
  %19 = getelementptr inbounds %struct.ifbond, %struct.ifbond* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local i32 @BOND_MODE(%struct.bonding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
