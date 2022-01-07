; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_record_entry_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_record_entry_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve_mc_record = type { i64, %struct.TYPE_2__*, i32, i32, %struct.mlxsw_sp_nve_mc_list* }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)* }
%struct.mlxsw_sp_nve_mc_list = type { i32 }
%struct.mlxsw_sp_nve_mc_entry = type { i32 }

@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)* @mlxsw_sp_nve_mc_record_entry_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nve_mc_record_entry_del(%struct.mlxsw_sp_nve_mc_record* %0, %struct.mlxsw_sp_nve_mc_entry* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  %4 = alloca %struct.mlxsw_sp_nve_mc_entry*, align 8
  %5 = alloca %struct.mlxsw_sp_nve_mc_list*, align 8
  %6 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  %7 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  store %struct.mlxsw_sp_nve_mc_record* %0, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  store %struct.mlxsw_sp_nve_mc_entry* %1, %struct.mlxsw_sp_nve_mc_entry** %4, align 8
  %8 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %8, i32 0, i32 4
  %10 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %9, align 8
  store %struct.mlxsw_sp_nve_mc_list* %10, %struct.mlxsw_sp_nve_mc_list** %5, align 8
  %11 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_entry, %struct.mlxsw_sp_nve_mc_entry* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %23 = call i32 @mlxsw_sp_nve_mc_record_refresh(%struct.mlxsw_sp_nve_mc_record* %22)
  %24 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)*, i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)** %27, align 8
  %29 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %30 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %4, align 8
  %31 = call i32 %28(%struct.mlxsw_sp_nve_mc_record* %29, %struct.mlxsw_sp_nve_mc_entry* %30)
  br label %97

32:                                               ; preds = %2
  %33 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %34 = call i64 @mlxsw_sp_nve_mc_record_is_first(%struct.mlxsw_sp_nve_mc_record* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %32
  %37 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %38 = load i32, i32* @list, align 4
  %39 = call %struct.mlxsw_sp_nve_mc_record* @list_prev_entry(%struct.mlxsw_sp_nve_mc_record* %37, i32 %38)
  store %struct.mlxsw_sp_nve_mc_record* %39, %struct.mlxsw_sp_nve_mc_record** %6, align 8
  %40 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %40, i32 0, i32 3
  %42 = call i32 @list_del(i32* %41)
  %43 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %6, align 8
  %44 = call i32 @mlxsw_sp_nve_mc_record_refresh(%struct.mlxsw_sp_nve_mc_record* %43)
  %45 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %45, i32 0, i32 3
  %47 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %5, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list, %struct.mlxsw_sp_nve_mc_list* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  %50 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)*, i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)** %53, align 8
  %55 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %56 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %4, align 8
  %57 = call i32 %54(%struct.mlxsw_sp_nve_mc_record* %55, %struct.mlxsw_sp_nve_mc_entry* %56)
  br label %97

58:                                               ; preds = %32
  %59 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %60 = call i64 @mlxsw_sp_nve_mc_record_is_first(%struct.mlxsw_sp_nve_mc_record* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  %63 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %5, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list, %struct.mlxsw_sp_nve_mc_list* %63, i32 0, i32 0
  %65 = call i32 @list_is_singular(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %62
  %68 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %69 = load i32, i32* @list, align 4
  %70 = call %struct.mlxsw_sp_nve_mc_record* @list_next_entry(%struct.mlxsw_sp_nve_mc_record* %68, i32 %69)
  store %struct.mlxsw_sp_nve_mc_record* %70, %struct.mlxsw_sp_nve_mc_record** %7, align 8
  %71 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %7, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @swap(i32 %73, i32 %76)
  %78 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %7, align 8
  %79 = call i32 @mlxsw_sp_nve_mc_record_refresh(%struct.mlxsw_sp_nve_mc_record* %78)
  %80 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %81 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)*, i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)** %83, align 8
  %85 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %86 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %4, align 8
  %87 = call i32 %84(%struct.mlxsw_sp_nve_mc_record* %85, %struct.mlxsw_sp_nve_mc_entry* %86)
  br label %97

88:                                               ; preds = %62, %58
  %89 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %90 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)*, i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)** %92, align 8
  %94 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %3, align 8
  %95 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %4, align 8
  %96 = call i32 %93(%struct.mlxsw_sp_nve_mc_record* %94, %struct.mlxsw_sp_nve_mc_entry* %95)
  br label %97

97:                                               ; preds = %88, %67, %36, %21
  ret void
}

declare dso_local i32 @mlxsw_sp_nve_mc_record_refresh(%struct.mlxsw_sp_nve_mc_record*) #1

declare dso_local i64 @mlxsw_sp_nve_mc_record_is_first(%struct.mlxsw_sp_nve_mc_record*) #1

declare dso_local %struct.mlxsw_sp_nve_mc_record* @list_prev_entry(%struct.mlxsw_sp_nve_mc_record*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_is_singular(i32*) #1

declare dso_local %struct.mlxsw_sp_nve_mc_record* @list_next_entry(%struct.mlxsw_sp_nve_mc_record*, i32) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
