; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_dump_crb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_dump_crb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_dump_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.__crb }
%struct.__crb = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_dump_entry*, i32*)* @qlcnic_dump_crb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_dump_crb(%struct.qlcnic_adapter* %0, %struct.qlcnic_dump_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_dump_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.__crb*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_dump_entry* %1, %struct.qlcnic_dump_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.qlcnic_dump_entry*, %struct.qlcnic_dump_entry** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_dump_entry, %struct.qlcnic_dump_entry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.__crb* %13, %struct.__crb** %10, align 8
  %14 = load %struct.__crb*, %struct.__crb** %10, align 8
  %15 = getelementptr inbounds %struct.__crb, %struct.__crb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %44, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.__crb*, %struct.__crb** %10, align 8
  %20 = getelementptr inbounds %struct.__crb, %struct.__crb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  %37 = load %struct.__crb*, %struct.__crb** %10, align 8
  %38 = getelementptr inbounds %struct.__crb, %struct.__crb* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %23
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %17

47:                                               ; preds = %17
  %48 = load %struct.__crb*, %struct.__crb** %10, align 8
  %49 = getelementptr inbounds %struct.__crb, %struct.__crb* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  ret i32 %54
}

declare dso_local i32 @qlcnic_ind_rd(%struct.qlcnic_adapter*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
