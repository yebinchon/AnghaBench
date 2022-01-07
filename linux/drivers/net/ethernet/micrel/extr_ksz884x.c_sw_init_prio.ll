; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_init_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_init_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { %struct.ksz_switch* }
%struct.ksz_switch = type { i32*, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i64 }

@DIFFSERV_ENTRIES = common dso_local global i32 0, align 4
@TOTAL_PORT_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @sw_init_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_init_prio(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_switch*, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %6 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %6, i32 0, i32 0
  %8 = load %struct.ksz_switch*, %struct.ksz_switch** %7, align 8
  store %struct.ksz_switch* %8, %struct.ksz_switch** %5, align 8
  %9 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %10 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %14 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %18 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 1, i32* %20, align 4
  %21 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %22 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 1, i32* %24, align 4
  %25 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %26 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32 2, i32* %28, align 4
  %29 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %30 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  store i32 2, i32* %32, align 4
  %33 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %34 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  store i32 3, i32* %36, align 4
  %37 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %38 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  store i32 3, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %52, %1
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @DIFFSERV_ENTRIES, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %47 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %41

55:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %91, %55
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @TOTAL_PORT_NUM, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %94

60:                                               ; preds = %56
  %61 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @sw_dis_multi_queue(%struct.ksz_hw* %61, i32 %62)
  %64 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @sw_dis_diffserv(%struct.ksz_hw* %64, i32 %65)
  %67 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @sw_dis_802_1p(%struct.ksz_hw* %67, i32 %68)
  %70 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @sw_cfg_replace_vid(%struct.ksz_hw* %70, i32 %71, i32 0)
  %73 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %74 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %83 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @sw_cfg_port_based(%struct.ksz_hw* %80, i32 %81, i64 %89)
  br label %91

91:                                               ; preds = %60
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %56

94:                                               ; preds = %56
  %95 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %96 = call i32 @sw_cfg_replace_null_vid(%struct.ksz_hw* %95, i32 0)
  ret void
}

declare dso_local i32 @sw_dis_multi_queue(%struct.ksz_hw*, i32) #1

declare dso_local i32 @sw_dis_diffserv(%struct.ksz_hw*, i32) #1

declare dso_local i32 @sw_dis_802_1p(%struct.ksz_hw*, i32) #1

declare dso_local i32 @sw_cfg_replace_vid(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @sw_cfg_port_based(%struct.ksz_hw*, i32, i64) #1

declare dso_local i32 @sw_cfg_replace_null_vid(%struct.ksz_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
