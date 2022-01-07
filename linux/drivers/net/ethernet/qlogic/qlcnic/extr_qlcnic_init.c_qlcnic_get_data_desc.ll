; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_get_data_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_get_data_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_data_desc = type { i32 }
%struct.qlcnic_adapter = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.uni_table_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uni_data_desc* (%struct.qlcnic_adapter*, i32, i32)* @qlcnic_get_data_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uni_data_desc* @qlcnic_get_data_desc(%struct.qlcnic_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uni_data_desc*, align 8
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.uni_table_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.uni_table_desc* @qlcnic_get_table_desc(i32* %29, i32 %30)
  store %struct.uni_table_desc* %31, %struct.uni_table_desc** %9, align 8
  %32 = load %struct.uni_table_desc*, %struct.uni_table_desc** %9, align 8
  %33 = icmp eq %struct.uni_table_desc* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store %struct.uni_data_desc* null, %struct.uni_data_desc** %4, align 8
  br label %52

35:                                               ; preds = %3
  %36 = load %struct.uni_table_desc*, %struct.uni_table_desc** %9, align 8
  %37 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.uni_table_desc*, %struct.uni_table_desc** %9, align 8
  %41 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %39, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = bitcast i32* %50 to %struct.uni_data_desc*
  store %struct.uni_data_desc* %51, %struct.uni_data_desc** %4, align 8
  br label %52

52:                                               ; preds = %35, %34
  %53 = load %struct.uni_data_desc*, %struct.uni_data_desc** %4, align 8
  ret %struct.uni_data_desc* %53
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.uni_table_desc* @qlcnic_get_table_desc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
