; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_clear_all_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_clear_all_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.net_device** }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64*, %struct.filter_entry* }
%struct.filter_entry = type { i32, i64, i64 }
%struct.net_device = type { i32 }

@LE_DB_SRVR_START_INDEX_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_all_filters(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.filter_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.filter_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  %11 = load %struct.net_device**, %struct.net_device*** %10, align 8
  %12 = getelementptr inbounds %struct.net_device*, %struct.net_device** %11, i64 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %3, align 8
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load %struct.filter_entry*, %struct.filter_entry** %16, align 8
  %18 = icmp ne %struct.filter_entry* %17, null
  br i1 %18, label %19, label %61

19:                                               ; preds = %1
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  %23 = load %struct.filter_entry*, %struct.filter_entry** %22, align 8
  %24 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %23, i64 0
  store %struct.filter_entry* %24, %struct.filter_entry** %5, align 8
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %28, %32
  store i32 %33, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %55, %19
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %40 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %45 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43, %38
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %52 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %51, i32 0, i32 0
  %53 = call i32 @cxgb4_del_filter(%struct.net_device* %49, i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %4, align 4
  %58 = load %struct.filter_entry*, %struct.filter_entry** %5, align 8
  %59 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %58, i32 1
  store %struct.filter_entry* %59, %struct.filter_entry** %5, align 8
  br label %34

60:                                               ; preds = %34
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.adapter*, %struct.adapter** %2, align 8
  %63 = call i64 @is_hashfilter(%struct.adapter* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %156

65:                                               ; preds = %61
  %66 = load %struct.adapter*, %struct.adapter** %2, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i64*, i64** %68, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %156

71:                                               ; preds = %65
  %72 = load %struct.adapter*, %struct.adapter** %2, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %112, %71
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.adapter*, %struct.adapter** %2, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ule i32 %77, %81
  br i1 %82, label %83, label %115

83:                                               ; preds = %76
  %84 = load %struct.adapter*, %struct.adapter** %2, align 8
  %85 = getelementptr inbounds %struct.adapter, %struct.adapter* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.filter_entry*
  store %struct.filter_entry* %92, %struct.filter_entry** %7, align 8
  %93 = load %struct.filter_entry*, %struct.filter_entry** %7, align 8
  %94 = icmp ne %struct.filter_entry* %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %83
  %96 = load %struct.filter_entry*, %struct.filter_entry** %7, align 8
  %97 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.filter_entry*, %struct.filter_entry** %7, align 8
  %102 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100, %95
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.filter_entry*, %struct.filter_entry** %7, align 8
  %109 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %108, i32 0, i32 0
  %110 = call i32 @cxgb4_del_filter(%struct.net_device* %106, i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %105, %100, %83
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %4, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %76

115:                                              ; preds = %76
  %116 = load %struct.adapter*, %struct.adapter** %2, align 8
  %117 = load i32, i32* @LE_DB_SRVR_START_INDEX_A, align 4
  %118 = call i32 @t4_read_reg(%struct.adapter* %116, i32 %117)
  store i32 %118, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %152, %115
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %119
  %124 = load %struct.adapter*, %struct.adapter** %2, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 4
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to %struct.filter_entry*
  store %struct.filter_entry* %132, %struct.filter_entry** %7, align 8
  %133 = load %struct.filter_entry*, %struct.filter_entry** %7, align 8
  %134 = icmp ne %struct.filter_entry* %133, null
  br i1 %134, label %135, label %151

135:                                              ; preds = %123
  %136 = load %struct.filter_entry*, %struct.filter_entry** %7, align 8
  %137 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.filter_entry*, %struct.filter_entry** %7, align 8
  %142 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140, %135
  %146 = load %struct.net_device*, %struct.net_device** %3, align 8
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.filter_entry*, %struct.filter_entry** %7, align 8
  %149 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %148, i32 0, i32 0
  %150 = call i32 @cxgb4_del_filter(%struct.net_device* %146, i32 %147, i32* %149)
  br label %151

151:                                              ; preds = %145, %140, %123
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %4, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %119

155:                                              ; preds = %119
  br label %156

156:                                              ; preds = %155, %65, %61
  ret void
}

declare dso_local i32 @cxgb4_del_filter(%struct.net_device*, i32, i32*) #1

declare dso_local i64 @is_hashfilter(%struct.adapter*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
