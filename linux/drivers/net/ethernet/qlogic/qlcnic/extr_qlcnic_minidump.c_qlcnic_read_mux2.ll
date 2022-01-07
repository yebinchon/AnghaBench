; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_read_mux2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_read_mux2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_dump_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.__mux2 }
%struct.__mux2 = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_dump_entry*, i32*)* @qlcnic_read_mux2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_read_mux2(%struct.qlcnic_adapter* %0, %struct.qlcnic_dump_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_dump_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.__mux2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_dump_entry* %1, %struct.qlcnic_dump_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.qlcnic_dump_entry*, %struct.qlcnic_dump_entry** %5, align 8
  %14 = getelementptr inbounds %struct.qlcnic_dump_entry, %struct.qlcnic_dump_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.__mux2* %15, %struct.__mux2** %7, align 8
  %16 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %17 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %20 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %107, %3
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %25 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %110

28:                                               ; preds = %22
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %30 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %31 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %29, i32 %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %37 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %41 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %42 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %40, i32 %43, i32 %44)
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %47 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %48 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %46, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %62 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %63 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %61, i32 %64, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %69 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %67, %70
  store i32 %71, i32* %9, align 4
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %73 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %74 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %72, i32 %75, i32 %76)
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %79 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %80 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %78, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i8* @cpu_to_le32(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %6, align 8
  store i32 %85, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  %93 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %94 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %101 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %28
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %22

110:                                              ; preds = %22
  %111 = load %struct.__mux2*, %struct.__mux2** %7, align 8
  %112 = getelementptr inbounds %struct.__mux2, %struct.__mux2* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 16
  %116 = trunc i64 %115 to i32
  ret i32 %116
}

declare dso_local i32 @qlcnic_ind_wr(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_ind_rd(%struct.qlcnic_adapter*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
