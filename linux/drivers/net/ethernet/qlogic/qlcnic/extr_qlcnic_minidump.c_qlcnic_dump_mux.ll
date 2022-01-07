; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_dump_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_dump_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_dump_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.__mux }
%struct.__mux = type { i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_dump_entry*, i32*)* @qlcnic_dump_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_dump_mux(%struct.qlcnic_adapter* %0, %struct.qlcnic_dump_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_dump_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.__mux*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_dump_entry* %1, %struct.qlcnic_dump_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.qlcnic_dump_entry*, %struct.qlcnic_dump_entry** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_dump_entry, %struct.qlcnic_dump_entry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.__mux* %13, %struct.__mux** %10, align 8
  %14 = load %struct.__mux*, %struct.__mux** %10, align 8
  %15 = getelementptr inbounds %struct.__mux, %struct.__mux* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %52, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.__mux*, %struct.__mux** %10, align 8
  %20 = getelementptr inbounds %struct.__mux, %struct.__mux* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %17
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %25 = load %struct.__mux*, %struct.__mux** %10, align 8
  %26 = getelementptr inbounds %struct.__mux, %struct.__mux* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %24, i32 %27, i32 %28)
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %31 = load %struct.__mux*, %struct.__mux** %10, align 8
  %32 = getelementptr inbounds %struct.__mux, %struct.__mux* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  %45 = load %struct.__mux*, %struct.__mux** %10, align 8
  %46 = getelementptr inbounds %struct.__mux, %struct.__mux* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %23
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %17

55:                                               ; preds = %17
  %56 = load %struct.__mux*, %struct.__mux** %10, align 8
  %57 = getelementptr inbounds %struct.__mux, %struct.__mux* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 2, %58
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  ret i32 %62
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
