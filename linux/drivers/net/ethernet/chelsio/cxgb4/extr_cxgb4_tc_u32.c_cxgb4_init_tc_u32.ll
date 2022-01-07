; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_u32.c_cxgb4_init_tc_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_u32.c_cxgb4_init_tc_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgb4_tc_u32_table = type { i32, %struct.cxgb4_link* }
%struct.cxgb4_link = type { %struct.cxgb4_tc_u32_table* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@table = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cxgb4_tc_u32_table* @cxgb4_init_tc_u32(%struct.adapter* %0) #0 {
  %2 = alloca %struct.cxgb4_tc_u32_table*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxgb4_tc_u32_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxgb4_link*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cxgb4_link*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.cxgb4_tc_u32_table* null, %struct.cxgb4_tc_u32_table** %2, align 8
  br label %101

17:                                               ; preds = %1
  %18 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %5, align 8
  %19 = load i32, i32* @table, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @struct_size(%struct.cxgb4_tc_u32_table* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.cxgb4_tc_u32_table* @kvzalloc(i32 %21, i32 %22)
  store %struct.cxgb4_tc_u32_table* %23, %struct.cxgb4_tc_u32_table** %5, align 8
  %24 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %5, align 8
  %25 = icmp ne %struct.cxgb4_tc_u32_table* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store %struct.cxgb4_tc_u32_table* null, %struct.cxgb4_tc_u32_table** %2, align 8
  br label %101

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %5, align 8
  %30 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %62, %27
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %5, align 8
  %34 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %5, align 8
  %39 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %38, i32 0, i32 1
  %40 = load %struct.cxgb4_link*, %struct.cxgb4_link** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %40, i64 %42
  store %struct.cxgb4_link* %43, %struct.cxgb4_link** %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @BITS_TO_LONGS(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.cxgb4_tc_u32_table* @kvcalloc(i32 %46, i32 8, i32 %47)
  %49 = load %struct.cxgb4_link*, %struct.cxgb4_link** %7, align 8
  %50 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %49, i32 0, i32 0
  store %struct.cxgb4_tc_u32_table* %48, %struct.cxgb4_tc_u32_table** %50, align 8
  %51 = load %struct.cxgb4_link*, %struct.cxgb4_link** %7, align 8
  %52 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %51, i32 0, i32 0
  %53 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %52, align 8
  %54 = icmp ne %struct.cxgb4_tc_u32_table* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %37
  br label %67

56:                                               ; preds = %37
  %57 = load %struct.cxgb4_link*, %struct.cxgb4_link** %7, align 8
  %58 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %57, i32 0, i32 0
  %59 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @bitmap_zero(%struct.cxgb4_tc_u32_table* %59, i32 %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %31

65:                                               ; preds = %31
  %66 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %5, align 8
  store %struct.cxgb4_tc_u32_table* %66, %struct.cxgb4_tc_u32_table** %2, align 8
  br label %101

67:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %91, %67
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %5, align 8
  %71 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %68
  %75 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %5, align 8
  %76 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %75, i32 0, i32 1
  %77 = load %struct.cxgb4_link*, %struct.cxgb4_link** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %77, i64 %79
  store %struct.cxgb4_link* %80, %struct.cxgb4_link** %9, align 8
  %81 = load %struct.cxgb4_link*, %struct.cxgb4_link** %9, align 8
  %82 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %81, i32 0, i32 0
  %83 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %82, align 8
  %84 = icmp ne %struct.cxgb4_tc_u32_table* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load %struct.cxgb4_link*, %struct.cxgb4_link** %9, align 8
  %87 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %86, i32 0, i32 0
  %88 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %87, align 8
  %89 = call i32 @kvfree(%struct.cxgb4_tc_u32_table* %88)
  br label %90

90:                                               ; preds = %85, %74
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %68

94:                                               ; preds = %68
  %95 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %5, align 8
  %96 = icmp ne %struct.cxgb4_tc_u32_table* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %5, align 8
  %99 = call i32 @kvfree(%struct.cxgb4_tc_u32_table* %98)
  br label %100

100:                                              ; preds = %97, %94
  store %struct.cxgb4_tc_u32_table* null, %struct.cxgb4_tc_u32_table** %2, align 8
  br label %101

101:                                              ; preds = %100, %65, %26, %16
  %102 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %2, align 8
  ret %struct.cxgb4_tc_u32_table* %102
}

declare dso_local %struct.cxgb4_tc_u32_table* @kvzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.cxgb4_tc_u32_table*, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local %struct.cxgb4_tc_u32_table* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @bitmap_zero(%struct.cxgb4_tc_u32_table*, i32) #1

declare dso_local i32 @kvfree(%struct.cxgb4_tc_u32_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
