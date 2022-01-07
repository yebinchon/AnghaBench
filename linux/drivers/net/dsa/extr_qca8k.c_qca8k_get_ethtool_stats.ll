; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca8k_mib_desc = type { i64, i32 }
%struct.dsa_switch = type { i64 }
%struct.qca8k_priv = type { i32 }

@ar8327_mib = common dso_local global %struct.qca8k_mib_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32*)* @qca8k_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca8k_get_ethtool_stats(%struct.dsa_switch* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qca8k_priv*, align 8
  %8 = alloca %struct.qca8k_mib_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.qca8k_priv*
  store %struct.qca8k_priv* %15, %struct.qca8k_priv** %7, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %54, %3
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.qca8k_mib_desc*, %struct.qca8k_mib_desc** @ar8327_mib, align 8
  %19 = call i64 @ARRAY_SIZE(%struct.qca8k_mib_desc* %18)
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %16
  %22 = load %struct.qca8k_mib_desc*, %struct.qca8k_mib_desc** @ar8327_mib, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds %struct.qca8k_mib_desc, %struct.qca8k_mib_desc* %22, i64 %23
  store %struct.qca8k_mib_desc* %24, %struct.qca8k_mib_desc** %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @QCA8K_PORT_MIB_COUNTER(i32 %25)
  %27 = load %struct.qca8k_mib_desc*, %struct.qca8k_mib_desc** %8, align 8
  %28 = getelementptr inbounds %struct.qca8k_mib_desc, %struct.qca8k_mib_desc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %26, %29
  store i64 %30, i64* %9, align 8
  %31 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @qca8k_read(%struct.qca8k_priv* %31, i64 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %33, i32* %36, align 4
  %37 = load %struct.qca8k_mib_desc*, %struct.qca8k_mib_desc** %8, align 8
  %38 = getelementptr inbounds %struct.qca8k_mib_desc, %struct.qca8k_mib_desc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %53

41:                                               ; preds = %21
  %42 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 4
  %45 = call i32 @qca8k_read(%struct.qca8k_priv* %42, i64 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 32
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %41, %21
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %10, align 8
  br label %16

57:                                               ; preds = %16
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.qca8k_mib_desc*) #1

declare dso_local i64 @QCA8K_PORT_MIB_COUNTER(i32) #1

declare dso_local i32 @qca8k_read(%struct.qca8k_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
