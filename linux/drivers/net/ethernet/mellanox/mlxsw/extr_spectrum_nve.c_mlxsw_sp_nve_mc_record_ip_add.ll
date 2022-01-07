; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_record_ip_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_record_ip_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve_mc_record = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*, %union.mlxsw_sp_l3addr*)*, i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)* }
%struct.mlxsw_sp_nve_mc_entry = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_nve_mc_record*, %union.mlxsw_sp_l3addr*)* @mlxsw_sp_nve_mc_record_ip_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nve_mc_record_ip_add(%struct.mlxsw_sp_nve_mc_record* %0, %union.mlxsw_sp_l3addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  %5 = alloca %union.mlxsw_sp_l3addr*, align 8
  %6 = alloca %struct.mlxsw_sp_nve_mc_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_nve_mc_record* %0, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  store %union.mlxsw_sp_l3addr* %1, %union.mlxsw_sp_l3addr** %5, align 8
  store %struct.mlxsw_sp_nve_mc_entry* null, %struct.mlxsw_sp_nve_mc_entry** %6, align 8
  %8 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %9 = call %struct.mlxsw_sp_nve_mc_entry* @mlxsw_sp_nve_mc_free_entry_find(%struct.mlxsw_sp_nve_mc_record* %8)
  store %struct.mlxsw_sp_nve_mc_entry* %9, %struct.mlxsw_sp_nve_mc_entry** %6, align 8
  %10 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %6, align 8
  %11 = icmp ne %struct.mlxsw_sp_nve_mc_entry* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %81

19:                                               ; preds = %2
  %20 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*, %union.mlxsw_sp_l3addr*)*, i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*, %union.mlxsw_sp_l3addr*)** %23, align 8
  %25 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %26 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %6, align 8
  %27 = load %union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr** %5, align 8
  %28 = call i32 %24(%struct.mlxsw_sp_nve_mc_record* %25, %struct.mlxsw_sp_nve_mc_entry* %26, %union.mlxsw_sp_l3addr* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %81

33:                                               ; preds = %19
  %34 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %6, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_entry, %struct.mlxsw_sp_nve_mc_entry* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %41 = call i32 @mlxsw_sp_nve_mc_record_refresh(%struct.mlxsw_sp_nve_mc_record* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %65

45:                                               ; preds = %33
  %46 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %52 = call i64 @mlxsw_sp_nve_mc_record_is_first(%struct.mlxsw_sp_nve_mc_record* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %45
  store i32 0, i32* %3, align 4
  br label %81

55:                                               ; preds = %50
  %56 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %57 = load i32, i32* @list, align 4
  %58 = call %struct.mlxsw_sp_nve_mc_record* @list_prev_entry(%struct.mlxsw_sp_nve_mc_record* %56, i32 %57)
  %59 = call i32 @mlxsw_sp_nve_mc_record_refresh(%struct.mlxsw_sp_nve_mc_record* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %64

63:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %81

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %6, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_entry, %struct.mlxsw_sp_nve_mc_entry* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)*, i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*)** %75, align 8
  %77 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %78 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %6, align 8
  %79 = call i32 %76(%struct.mlxsw_sp_nve_mc_record* %77, %struct.mlxsw_sp_nve_mc_entry* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %65, %63, %54, %31, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.mlxsw_sp_nve_mc_entry* @mlxsw_sp_nve_mc_free_entry_find(%struct.mlxsw_sp_nve_mc_record*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_nve_mc_record_refresh(%struct.mlxsw_sp_nve_mc_record*) #1

declare dso_local i64 @mlxsw_sp_nve_mc_record_is_first(%struct.mlxsw_sp_nve_mc_record*) #1

declare dso_local %struct.mlxsw_sp_nve_mc_record* @list_prev_entry(%struct.mlxsw_sp_nve_mc_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
