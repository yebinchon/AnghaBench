; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_get_filter_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_get_filter_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.filter_entry*, %struct.filter_entry** }
%struct.filter_entry = type { i32, i32 }

@TP_CMM_TCB_BASE_A = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@TCB_SIZE = common dso_local global i32 0, align 4
@MEMWIN_NIC = common dso_local global i32 0, align 4
@MEM_EDC0 = common dso_local global i32 0, align 4
@T4_MEMORY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i64*, i64*, i32)* @get_filter_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_filter_count(%struct.adapter* %0, i32 %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.filter_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.adapter*, %struct.adapter** %7, align 8
  %21 = load i32, i32* @TP_CMM_TCB_BASE_A, align 4
  %22 = call i32 @t4_read_reg(%struct.adapter* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.adapter*, %struct.adapter** %7, align 8
  %24 = call i64 @is_hashfilter(%struct.adapter* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %5
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.adapter*, %struct.adapter** %7, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %30, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load %struct.adapter*, %struct.adapter** %7, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load %struct.filter_entry**, %struct.filter_entry*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.filter_entry*, %struct.filter_entry** %40, i64 %42
  %44 = load %struct.filter_entry*, %struct.filter_entry** %43, align 8
  store %struct.filter_entry* %44, %struct.filter_entry** %15, align 8
  %45 = load %struct.filter_entry*, %struct.filter_entry** %15, align 8
  %46 = icmp ne %struct.filter_entry* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %177

50:                                               ; preds = %36
  br label %54

51:                                               ; preds = %29
  %52 = load i32, i32* @E2BIG, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %177

54:                                               ; preds = %50
  br label %94

55:                                               ; preds = %26, %5
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.adapter*, %struct.adapter** %7, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.adapter*, %struct.adapter** %7, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %60, %64
  %66 = sub nsw i32 %65, 1
  %67 = icmp ne i32 %56, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %55
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.adapter*, %struct.adapter** %7, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp uge i32 %69, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @E2BIG, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %177

78:                                               ; preds = %68, %55
  %79 = load %struct.adapter*, %struct.adapter** %7, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load %struct.filter_entry*, %struct.filter_entry** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %82, i64 %84
  store %struct.filter_entry* %85, %struct.filter_entry** %15, align 8
  %86 = load %struct.filter_entry*, %struct.filter_entry** %15, align 8
  %87 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %78
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %177

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93, %54
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.filter_entry*, %struct.filter_entry** %15, align 8
  %97 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @TCB_SIZE, align 4
  %100 = mul i32 %98, %99
  %101 = add i32 %95, %100
  store i32 %101, i32* %13, align 4
  %102 = load %struct.adapter*, %struct.adapter** %7, align 8
  %103 = getelementptr inbounds %struct.adapter, %struct.adapter* %102, i32 0, i32 0
  %104 = call i32 @spin_lock(i32* %103)
  %105 = load %struct.adapter*, %struct.adapter** %7, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @is_t4(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %94
  %112 = load i64*, i64** %10, align 8
  store i64 0, i64* %112, align 8
  store i32 4, i32* %14, align 4
  %113 = load %struct.adapter*, %struct.adapter** %7, align 8
  %114 = load i32, i32* @MEMWIN_NIC, align 4
  %115 = load i32, i32* @MEM_EDC0, align 4
  %116 = load i32, i32* %13, align 4
  %117 = zext i32 %116 to i64
  %118 = load i32, i32* %14, align 4
  %119 = zext i32 %118 to i64
  %120 = mul i64 %119, 4
  %121 = add i64 %117, %120
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* @T4_MEMORY_READ, align 4
  %124 = call i32 @t4_memory_rw(%struct.adapter* %113, i32 %114, i32 %115, i32 %122, i32 4, i32* %18, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %111
  br label %172

128:                                              ; preds = %111
  %129 = load i32, i32* %18, align 4
  %130 = call i64 @be64_to_cpu(i32 %129)
  %131 = load i64*, i64** %9, align 8
  store i64 %130, i64* %131, align 8
  br label %171

132:                                              ; preds = %94
  store i32 4, i32* %14, align 4
  %133 = load %struct.adapter*, %struct.adapter** %7, align 8
  %134 = load i32, i32* @MEMWIN_NIC, align 4
  %135 = load i32, i32* @MEM_EDC0, align 4
  %136 = load i32, i32* %13, align 4
  %137 = zext i32 %136 to i64
  %138 = load i32, i32* %14, align 4
  %139 = zext i32 %138 to i64
  %140 = mul i64 %139, 4
  %141 = add i64 %137, %140
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* @T4_MEMORY_READ, align 4
  %144 = call i32 @t4_memory_rw(%struct.adapter* %133, i32 %134, i32 %135, i32 %142, i32 4, i32* %16, i32 %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %132
  br label %172

148:                                              ; preds = %132
  %149 = load i32, i32* %16, align 4
  %150 = call i64 @be64_to_cpu(i32 %149)
  %151 = load i64*, i64** %10, align 8
  store i64 %150, i64* %151, align 8
  store i32 6, i32* %14, align 4
  %152 = load %struct.adapter*, %struct.adapter** %7, align 8
  %153 = load i32, i32* @MEMWIN_NIC, align 4
  %154 = load i32, i32* @MEM_EDC0, align 4
  %155 = load i32, i32* %13, align 4
  %156 = zext i32 %155 to i64
  %157 = load i32, i32* %14, align 4
  %158 = zext i32 %157 to i64
  %159 = mul i64 %158, 4
  %160 = add i64 %156, %159
  %161 = trunc i64 %160 to i32
  %162 = load i32, i32* @T4_MEMORY_READ, align 4
  %163 = call i32 @t4_memory_rw(%struct.adapter* %152, i32 %153, i32 %154, i32 %161, i32 4, i32* %19, i32 %162)
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* %17, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %148
  br label %172

167:                                              ; preds = %148
  %168 = load i32, i32* %19, align 4
  %169 = call i64 @be32_to_cpu(i32 %168)
  %170 = load i64*, i64** %9, align 8
  store i64 %169, i64* %170, align 8
  br label %171

171:                                              ; preds = %167, %128
  br label %172

172:                                              ; preds = %171, %166, %147, %127
  %173 = load %struct.adapter*, %struct.adapter** %7, align 8
  %174 = getelementptr inbounds %struct.adapter, %struct.adapter* %173, i32 0, i32 0
  %175 = call i32 @spin_unlock(i32* %174)
  %176 = load i32, i32* %17, align 4
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %172, %90, %75, %51, %47
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @is_hashfilter(%struct.adapter*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @is_t4(i32) #1

declare dso_local i32 @t4_memory_rw(%struct.adapter*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
