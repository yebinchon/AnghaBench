; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_mib_desc = type { i64, i32 }
%struct.dsa_switch = type { %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32 }

@mt7530_mib = common dso_local global %struct.mt7530_mib_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32*)* @mt7530_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_get_ethtool_stats(%struct.dsa_switch* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mt7530_priv*, align 8
  %8 = alloca %struct.mt7530_mib_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.mt7530_priv*, %struct.mt7530_priv** %13, align 8
  store %struct.mt7530_priv* %14, %struct.mt7530_priv** %7, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %53, %3
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.mt7530_mib_desc*, %struct.mt7530_mib_desc** @mt7530_mib, align 8
  %18 = call i64 @ARRAY_SIZE(%struct.mt7530_mib_desc* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %15
  %21 = load %struct.mt7530_mib_desc*, %struct.mt7530_mib_desc** @mt7530_mib, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.mt7530_mib_desc, %struct.mt7530_mib_desc* %21, i64 %22
  store %struct.mt7530_mib_desc* %23, %struct.mt7530_mib_desc** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @MT7530_PORT_MIB_COUNTER(i32 %24)
  %26 = load %struct.mt7530_mib_desc*, %struct.mt7530_mib_desc** %8, align 8
  %27 = getelementptr inbounds %struct.mt7530_mib_desc, %struct.mt7530_mib_desc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %25, %28
  store i64 %29, i64* %9, align 8
  %30 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @mt7530_read(%struct.mt7530_priv* %30, i64 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %32, i32* %35, align 4
  %36 = load %struct.mt7530_mib_desc*, %struct.mt7530_mib_desc** %8, align 8
  %37 = getelementptr inbounds %struct.mt7530_mib_desc, %struct.mt7530_mib_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %52

40:                                               ; preds = %20
  %41 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 4
  %44 = call i32 @mt7530_read(%struct.mt7530_priv* %41, i64 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = shl i32 %45, 32
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %40, %20
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %15

56:                                               ; preds = %15
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.mt7530_mib_desc*) #1

declare dso_local i64 @MT7530_PORT_MIB_COUNTER(i32) #1

declare dso_local i32 @mt7530_read(%struct.mt7530_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
