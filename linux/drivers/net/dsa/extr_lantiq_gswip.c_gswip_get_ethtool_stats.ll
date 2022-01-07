; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_rmon_cnt_desc = type { i32, i64 }
%struct.dsa_switch = type { %struct.gswip_priv* }
%struct.gswip_priv = type { i32 }

@gswip_rmon_cnt = common dso_local global %struct.gswip_rmon_cnt_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32*)* @gswip_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gswip_get_ethtool_stats(%struct.dsa_switch* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gswip_priv*, align 8
  %8 = alloca %struct.gswip_rmon_cnt_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i32 0, i32 0
  %13 = load %struct.gswip_priv*, %struct.gswip_priv** %12, align 8
  store %struct.gswip_priv* %13, %struct.gswip_priv** %7, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %55, %3
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.gswip_rmon_cnt_desc*, %struct.gswip_rmon_cnt_desc** @gswip_rmon_cnt, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.gswip_rmon_cnt_desc* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %14
  %20 = load %struct.gswip_rmon_cnt_desc*, %struct.gswip_rmon_cnt_desc** @gswip_rmon_cnt, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.gswip_rmon_cnt_desc, %struct.gswip_rmon_cnt_desc* %20, i64 %22
  store %struct.gswip_rmon_cnt_desc* %23, %struct.gswip_rmon_cnt_desc** %8, align 8
  %24 = load %struct.gswip_priv*, %struct.gswip_priv** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.gswip_rmon_cnt_desc*, %struct.gswip_rmon_cnt_desc** %8, align 8
  %27 = getelementptr inbounds %struct.gswip_rmon_cnt_desc, %struct.gswip_rmon_cnt_desc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @gswip_bcm_ram_entry_read(%struct.gswip_priv* %24, i32 %25, i64 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = load %struct.gswip_rmon_cnt_desc*, %struct.gswip_rmon_cnt_desc** %8, align 8
  %35 = getelementptr inbounds %struct.gswip_rmon_cnt_desc, %struct.gswip_rmon_cnt_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %54

38:                                               ; preds = %19
  %39 = load %struct.gswip_priv*, %struct.gswip_priv** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.gswip_rmon_cnt_desc*, %struct.gswip_rmon_cnt_desc** %8, align 8
  %42 = getelementptr inbounds %struct.gswip_rmon_cnt_desc, %struct.gswip_rmon_cnt_desc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = call i32 @gswip_bcm_ram_entry_read(%struct.gswip_priv* %39, i32 %40, i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 %46, 32
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %38, %19
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %14

58:                                               ; preds = %14
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.gswip_rmon_cnt_desc*) #1

declare dso_local i32 @gswip_bcm_ram_entry_read(%struct.gswip_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
