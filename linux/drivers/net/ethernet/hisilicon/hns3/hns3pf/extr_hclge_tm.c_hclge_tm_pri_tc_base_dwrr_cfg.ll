; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_tc_base_dwrr_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_tc_base_dwrr_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, %struct.TYPE_4__, %struct.hclge_vport* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, %struct.hclge_pg_info* }
%struct.TYPE_3__ = type { i64 }
%struct.hclge_pg_info = type { i32* }
%struct.hclge_vport = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_tm_pri_tc_base_dwrr_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_pri_tc_base_dwrr_cfg(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca %struct.hclge_pg_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %10, i32 0, i32 2
  %12 = load %struct.hclge_vport*, %struct.hclge_vport** %11, align 8
  store %struct.hclge_vport* %12, %struct.hclge_vport** %4, align 8
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %79, %1
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %13
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load %struct.hclge_pg_info*, %struct.hclge_pg_info** %23, align 8
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.hclge_pg_info, %struct.hclge_pg_info* %24, i64 %32
  store %struct.hclge_pg_info* %33, %struct.hclge_pg_info** %5, align 8
  %34 = load %struct.hclge_pg_info*, %struct.hclge_pg_info** %5, align 8
  %35 = getelementptr inbounds %struct.hclge_pg_info, %struct.hclge_pg_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @hclge_tm_pri_weight_cfg(%struct.hclge_dev* %40, i64 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %20
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %83

48:                                               ; preds = %20
  store i64 0, i64* %9, align 8
  br label %49

49:                                               ; preds = %75, %48
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %52 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %57 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %57, i64 %58
  %60 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %61, %62
  %64 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %64, i64 %65
  %67 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @hclge_tm_qs_weight_cfg(%struct.hclge_dev* %56, i64 %63, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %83

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %9, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %9, align 8
  br label %49

78:                                               ; preds = %49
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %13

82:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %72, %46
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @hclge_tm_pri_weight_cfg(%struct.hclge_dev*, i64, i32) #1

declare dso_local i32 @hclge_tm_qs_weight_cfg(%struct.hclge_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
