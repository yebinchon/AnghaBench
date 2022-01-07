; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_netlink.c_bond_get_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_netlink.c_bond_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@BOND_MAX_ARP_TARGETS = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @bond_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bond_get_size(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = call i64 @nla_total_size(i32 4)
  %4 = call i64 @nla_total_size(i32 4)
  %5 = add i64 %3, %4
  %6 = call i64 @nla_total_size(i32 4)
  %7 = add i64 %5, %6
  %8 = call i64 @nla_total_size(i32 4)
  %9 = add i64 %7, %8
  %10 = call i64 @nla_total_size(i32 4)
  %11 = add i64 %9, %10
  %12 = call i64 @nla_total_size(i32 4)
  %13 = add i64 %11, %12
  %14 = call i64 @nla_total_size(i32 4)
  %15 = add i64 %13, %14
  %16 = call i64 @nla_total_size(i32 4)
  %17 = add i64 %15, %16
  %18 = call i64 @nla_total_size(i32 4)
  %19 = load i64, i64* @BOND_MAX_ARP_TARGETS, align 8
  %20 = mul i64 %18, %19
  %21 = add i64 %17, %20
  %22 = call i64 @nla_total_size(i32 4)
  %23 = add i64 %21, %22
  %24 = call i64 @nla_total_size(i32 4)
  %25 = add i64 %23, %24
  %26 = call i64 @nla_total_size(i32 4)
  %27 = add i64 %25, %26
  %28 = call i64 @nla_total_size(i32 4)
  %29 = add i64 %27, %28
  %30 = call i64 @nla_total_size(i32 4)
  %31 = add i64 %29, %30
  %32 = call i64 @nla_total_size(i32 4)
  %33 = add i64 %31, %32
  %34 = call i64 @nla_total_size(i32 4)
  %35 = add i64 %33, %34
  %36 = call i64 @nla_total_size(i32 4)
  %37 = add i64 %35, %36
  %38 = call i64 @nla_total_size(i32 4)
  %39 = add i64 %37, %38
  %40 = call i64 @nla_total_size(i32 4)
  %41 = add i64 %39, %40
  %42 = call i64 @nla_total_size(i32 4)
  %43 = add i64 %41, %42
  %44 = call i64 @nla_total_size(i32 4)
  %45 = add i64 %43, %44
  %46 = call i64 @nla_total_size(i32 4)
  %47 = add i64 %45, %46
  %48 = call i64 @nla_total_size(i32 4)
  %49 = add i64 %47, %48
  %50 = call i64 @nla_total_size(i32 4)
  %51 = add i64 %49, %50
  %52 = call i64 @nla_total_size(i32 4)
  %53 = add i64 %51, %52
  %54 = call i64 @nla_total_size(i32 4)
  %55 = add i64 %53, %54
  %56 = call i64 @nla_total_size(i32 4)
  %57 = add i64 %55, %56
  %58 = call i64 @nla_total_size(i32 4)
  %59 = add i64 %57, %58
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i64 @nla_total_size(i32 %60)
  %62 = add i64 %59, %61
  %63 = call i64 @nla_total_size(i32 4)
  %64 = add i64 %62, %63
  %65 = call i64 @nla_total_size(i32 4)
  %66 = add i64 %64, %65
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = call i64 @nla_total_size(i32 %67)
  %69 = add i64 %66, %68
  %70 = call i64 @nla_total_size(i32 4)
  %71 = add i64 %69, %70
  %72 = call i64 @nla_total_size(i32 4)
  %73 = add i64 %71, %72
  %74 = add i64 %73, 0
  ret i64 %74
}

declare dso_local i64 @nla_total_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
