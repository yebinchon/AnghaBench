; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_bond_alb_clear_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_bond_alb_clear_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bond_alb_clear_vlan(%struct.bonding* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca i16, align 2
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.bonding*, %struct.bonding** %3, align 8
  %6 = getelementptr inbounds %struct.bonding, %struct.bonding* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.bonding*, %struct.bonding** %3, align 8
  %12 = load i16, i16* %4, align 2
  %13 = call i32 @rlb_clear_vlan(%struct.bonding* %11, i16 zeroext %12)
  br label %14

14:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @rlb_clear_vlan(%struct.bonding*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
