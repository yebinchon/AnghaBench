; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_init_stp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_init_stp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ksz_mac_table* }
%struct.ksz_mac_table = type { i32*, i32, i32, i32, i32, i32 }

@STP_ENTRY = common dso_local global i64 0, align 8
@HOST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @sw_init_stp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_init_stp(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca %struct.ksz_mac_table*, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %4 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %7, align 8
  %9 = load i64, i64* @STP_ENTRY, align 8
  %10 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %8, i64 %9
  store %struct.ksz_mac_table* %10, %struct.ksz_mac_table** %3, align 8
  %11 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %12 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %16 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 128, i32* %18, align 4
  %19 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %20 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 194, i32* %22, align 4
  %23 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %24 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  store i32 0, i32* %26, align 4
  %27 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %28 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32 0, i32* %30, align 4
  %31 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %32 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @HOST_MASK, align 4
  %36 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %37 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %39 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %38, i32 0, i32 1
  store i32 1, i32* %39, align 8
  %40 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %41 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  %42 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %43 = load i64, i64* @STP_ENTRY, align 8
  %44 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %45 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %48 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %51 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %54 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %57 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %60 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sw_w_sta_mac_table(%struct.ksz_hw* %42, i64 %43, i32* %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61)
  ret void
}

declare dso_local i32 @sw_w_sta_mac_table(%struct.ksz_hw*, i64, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
