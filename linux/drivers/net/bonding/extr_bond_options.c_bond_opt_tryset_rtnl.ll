; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_opt_tryset_rtnl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_options.c_bond_opt_tryset_rtnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32 }
%struct.bond_opt_value = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bond_opt_tryset_rtnl(%struct.bonding* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bonding*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bond_opt_value, align 4
  %9 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = call i32 (...) @rtnl_trylock()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call i32 (...) @restart_syscall()
  store i32 %13, i32* %4, align 4
  br label %22

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @bond_opt_initstr(%struct.bond_opt_value* %8, i8* %15)
  %17 = load %struct.bonding*, %struct.bonding** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @__bond_opt_set_notify(%struct.bonding* %17, i32 %18, %struct.bond_opt_value* %8)
  store i32 %19, i32* %9, align 4
  %20 = call i32 (...) @rtnl_unlock()
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %14, %12
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @rtnl_trylock(...) #1

declare dso_local i32 @restart_syscall(...) #1

declare dso_local i32 @bond_opt_initstr(%struct.bond_opt_value*, i8*) #1

declare dso_local i32 @__bond_opt_set_notify(%struct.bonding*, i32, %struct.bond_opt_value*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
