; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_nx_get_data_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_nx_get_data_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_data_desc = type { i32 }
%struct.netxen_adapter = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.uni_table_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uni_data_desc* (%struct.netxen_adapter*, i32, i32)* @nx_get_data_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uni_data_desc* @nx_get_data_desc(%struct.netxen_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uni_data_desc*, align 8
  %5 = alloca %struct.netxen_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uni_table_desc*, align 8
  %11 = alloca i64, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.uni_table_desc* @nx_get_table_desc(i32* %27, i32 %28)
  store %struct.uni_table_desc* %29, %struct.uni_table_desc** %10, align 8
  %30 = load %struct.uni_table_desc*, %struct.uni_table_desc** %10, align 8
  %31 = icmp eq %struct.uni_table_desc* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store %struct.uni_data_desc* null, %struct.uni_data_desc** %4, align 8
  br label %50

33:                                               ; preds = %3
  %34 = load %struct.uni_table_desc*, %struct.uni_table_desc** %10, align 8
  %35 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpu_to_le32(i32 %36)
  %38 = load %struct.uni_table_desc*, %struct.uni_table_desc** %10, align 8
  %39 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_le32(i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 %41, %42
  %44 = add nsw i32 %37, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %11, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = bitcast i32* %48 to %struct.uni_data_desc*
  store %struct.uni_data_desc* %49, %struct.uni_data_desc** %4, align 8
  br label %50

50:                                               ; preds = %33, %32
  %51 = load %struct.uni_data_desc*, %struct.uni_data_desc** %4, align 8
  ret %struct.uni_data_desc* %51
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.uni_table_desc* @nx_get_table_desc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
