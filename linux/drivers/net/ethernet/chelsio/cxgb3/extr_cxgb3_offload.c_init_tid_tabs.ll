; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_init_tid_tabs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_init_tid_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_info = type { i32, i32, i32, i32, i32, %union.active_open_entry*, %union.active_open_entry*, %union.listen_entry*, %union.listen_entry*, i32, i32, i32, i64, i64, i32* }
%union.active_open_entry = type { %union.active_open_entry* }
%union.listen_entry = type { %union.listen_entry* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tid_info*, i32, i32, i32, i32, i32)* @init_tid_tabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_tid_tabs(%struct.tid_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tid_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.tid_info* %0, %struct.tid_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = add i64 %17, %20
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = add i64 %21, %24
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kvzalloc(i64 %26, i32 %27)
  %29 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %30 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %29, i32 0, i32 14
  store i32* %28, i32** %30, align 8
  %31 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %32 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %31, i32 0, i32 14
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %6
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %147

38:                                               ; preds = %6
  %39 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %40 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %39, i32 0, i32 14
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = bitcast i32* %44 to %union.listen_entry*
  %46 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %47 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %46, i32 0, i32 7
  store %union.listen_entry* %45, %union.listen_entry** %47, align 8
  %48 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %49 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %48, i32 0, i32 7
  %50 = load %union.listen_entry*, %union.listen_entry** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %union.listen_entry, %union.listen_entry* %50, i64 %52
  %54 = bitcast %union.listen_entry* %53 to %union.active_open_entry*
  %55 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %56 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %55, i32 0, i32 5
  store %union.active_open_entry* %54, %union.active_open_entry** %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %59 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %62 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %65 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %67 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %66, i32 0, i32 8
  store %union.listen_entry* null, %union.listen_entry** %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %70 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %73 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %75 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %74, i32 0, i32 6
  store %union.active_open_entry* null, %union.active_open_entry** %75, align 8
  %76 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %77 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %76, i32 0, i32 12
  store i64 0, i64* %77, align 8
  %78 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %79 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %78, i32 0, i32 13
  store i64 0, i64* %79, align 8
  %80 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %81 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %80, i32 0, i32 11
  %82 = call i32 @atomic_set(i32* %81, i32 0)
  %83 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %84 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %83, i32 0, i32 10
  %85 = call i32 @spin_lock_init(i32* %84)
  %86 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %87 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %86, i32 0, i32 9
  %88 = call i32 @spin_lock_init(i32* %87)
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %38
  br label %92

92:                                               ; preds = %96, %91
  %93 = load i32, i32* %11, align 4
  %94 = add i32 %93, -1
  store i32 %94, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %98 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %97, i32 0, i32 7
  %99 = load %union.listen_entry*, %union.listen_entry** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %union.listen_entry, %union.listen_entry* %99, i64 %101
  %103 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %104 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %103, i32 0, i32 7
  %105 = load %union.listen_entry*, %union.listen_entry** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sub i32 %106, 1
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %union.listen_entry, %union.listen_entry* %105, i64 %108
  %110 = bitcast %union.listen_entry* %109 to %union.listen_entry**
  store %union.listen_entry* %102, %union.listen_entry** %110, align 8
  br label %92

111:                                              ; preds = %92
  %112 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %113 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %112, i32 0, i32 7
  %114 = load %union.listen_entry*, %union.listen_entry** %113, align 8
  %115 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %116 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %115, i32 0, i32 8
  store %union.listen_entry* %114, %union.listen_entry** %116, align 8
  br label %117

117:                                              ; preds = %111, %38
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %125, %120
  %122 = load i32, i32* %10, align 4
  %123 = add i32 %122, -1
  store i32 %123, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %121
  %126 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %127 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %126, i32 0, i32 5
  %128 = load %union.active_open_entry*, %union.active_open_entry** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %union.active_open_entry, %union.active_open_entry* %128, i64 %130
  %132 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %133 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %132, i32 0, i32 5
  %134 = load %union.active_open_entry*, %union.active_open_entry** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sub i32 %135, 1
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %union.active_open_entry, %union.active_open_entry* %134, i64 %137
  %139 = bitcast %union.active_open_entry* %138 to %union.active_open_entry**
  store %union.active_open_entry* %131, %union.active_open_entry** %139, align 8
  br label %121

140:                                              ; preds = %121
  %141 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %142 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %141, i32 0, i32 5
  %143 = load %union.active_open_entry*, %union.active_open_entry** %142, align 8
  %144 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %145 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %144, i32 0, i32 6
  store %union.active_open_entry* %143, %union.active_open_entry** %145, align 8
  br label %146

146:                                              ; preds = %140, %117
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %146, %35
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32* @kvzalloc(i64, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
