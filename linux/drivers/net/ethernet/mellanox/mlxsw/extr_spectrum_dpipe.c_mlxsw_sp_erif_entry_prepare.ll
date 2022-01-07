; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_erif_entry_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_erif_entry_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_entry = type { i32, i32, %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value* }
%struct.devlink_dpipe_match = type { i32 }
%struct.devlink_dpipe_value = type { i32, i8*, %struct.devlink_dpipe_action*, %struct.devlink_dpipe_match* }
%struct.devlink_dpipe_action = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_dpipe_entry*, %struct.devlink_dpipe_value*, %struct.devlink_dpipe_match*, %struct.devlink_dpipe_value*, %struct.devlink_dpipe_action*)* @mlxsw_sp_erif_entry_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_erif_entry_prepare(%struct.devlink_dpipe_entry* %0, %struct.devlink_dpipe_value* %1, %struct.devlink_dpipe_match* %2, %struct.devlink_dpipe_value* %3, %struct.devlink_dpipe_action* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.devlink_dpipe_entry*, align 8
  %8 = alloca %struct.devlink_dpipe_value*, align 8
  %9 = alloca %struct.devlink_dpipe_match*, align 8
  %10 = alloca %struct.devlink_dpipe_value*, align 8
  %11 = alloca %struct.devlink_dpipe_action*, align 8
  store %struct.devlink_dpipe_entry* %0, %struct.devlink_dpipe_entry** %7, align 8
  store %struct.devlink_dpipe_value* %1, %struct.devlink_dpipe_value** %8, align 8
  store %struct.devlink_dpipe_match* %2, %struct.devlink_dpipe_match** %9, align 8
  store %struct.devlink_dpipe_value* %3, %struct.devlink_dpipe_value** %10, align 8
  store %struct.devlink_dpipe_action* %4, %struct.devlink_dpipe_action** %11, align 8
  %12 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %8, align 8
  %13 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %14 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %13, i32 0, i32 3
  store %struct.devlink_dpipe_value* %12, %struct.devlink_dpipe_value** %14, align 8
  %15 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %16 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %10, align 8
  %18 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %19 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %18, i32 0, i32 2
  store %struct.devlink_dpipe_value* %17, %struct.devlink_dpipe_value** %19, align 8
  %20 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %21 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %9, align 8
  %23 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %8, align 8
  %24 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %23, i32 0, i32 3
  store %struct.devlink_dpipe_match* %22, %struct.devlink_dpipe_match** %24, align 8
  %25 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %8, align 8
  %26 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %25, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %8, align 8
  %28 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc(i32 %29, i32 %30)
  %32 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %8, align 8
  %33 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %8, align 8
  %35 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %67

41:                                               ; preds = %5
  %42 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %11, align 8
  %43 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %10, align 8
  %44 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %43, i32 0, i32 2
  store %struct.devlink_dpipe_action* %42, %struct.devlink_dpipe_action** %44, align 8
  %45 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %10, align 8
  %46 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %45, i32 0, i32 0
  store i32 4, i32* %46, align 8
  %47 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %10, align 8
  %48 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kmalloc(i32 %49, i32 %50)
  %52 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %10, align 8
  %53 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %10, align 8
  %55 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %41
  br label %60

59:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %67

60:                                               ; preds = %58
  %61 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %8, align 8
  %62 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @kfree(i8* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %60, %59, %38
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
