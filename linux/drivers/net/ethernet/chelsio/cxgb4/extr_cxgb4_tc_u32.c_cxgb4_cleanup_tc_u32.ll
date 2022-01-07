; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_u32.c_cxgb4_cleanup_tc_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_u32.c_cxgb4_cleanup_tc_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cxgb4_tc_u32_table* }
%struct.cxgb4_tc_u32_table = type { i32, %struct.cxgb4_link* }
%struct.cxgb4_link = type { %struct.cxgb4_tc_u32_table* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb4_cleanup_tc_u32(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.cxgb4_tc_u32_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxgb4_link*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %7, align 8
  %9 = icmp ne %struct.cxgb4_tc_u32_table* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %13, align 8
  store %struct.cxgb4_tc_u32_table* %14, %struct.cxgb4_tc_u32_table** %3, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %32, %11
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %3, align 8
  %18 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %3, align 8
  %23 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %22, i32 0, i32 1
  %24 = load %struct.cxgb4_link*, %struct.cxgb4_link** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %24, i64 %26
  store %struct.cxgb4_link* %27, %struct.cxgb4_link** %5, align 8
  %28 = load %struct.cxgb4_link*, %struct.cxgb4_link** %5, align 8
  %29 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %28, i32 0, i32 0
  %30 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %29, align 8
  %31 = call i32 @kvfree(%struct.cxgb4_tc_u32_table* %30)
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.adapter*, %struct.adapter** %2, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 0
  %38 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %37, align 8
  %39 = call i32 @kvfree(%struct.cxgb4_tc_u32_table* %38)
  br label %40

40:                                               ; preds = %35, %10
  ret void
}

declare dso_local i32 @kvfree(%struct.cxgb4_tc_u32_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
