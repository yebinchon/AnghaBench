; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_remove_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_remove_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_farch_filter_state* }
%struct.efx_farch_filter_state = type { i32, %struct.efx_farch_filter_table* }
%struct.efx_farch_filter_table = type { i32, %struct.efx_farch_filter_spec* }
%struct.efx_farch_filter_spec = type { i32 }

@EFX_FARCH_FILTER_TABLE_COUNT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_farch_filter_remove_safe(%struct.efx_nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_farch_filter_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.efx_farch_filter_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.efx_farch_filter_spec*, align 8
  %13 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 0
  %16 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %15, align 8
  store %struct.efx_farch_filter_state* %16, %struct.efx_farch_filter_state** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @efx_farch_filter_id_table_id(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @EFX_FARCH_FILTER_TABLE_COUNT, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %61

25:                                               ; preds = %3
  %26 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %8, align 8
  %27 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %26, i32 0, i32 1
  %28 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %28, i64 %30
  store %struct.efx_farch_filter_table* %31, %struct.efx_farch_filter_table** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @efx_farch_filter_id_index(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %10, align 8
  %36 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp uge i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %61

42:                                               ; preds = %25
  %43 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %8, align 8
  %44 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %43, i32 0, i32 0
  %45 = call i32 @down_write(i32* %44)
  %46 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %10, align 8
  %47 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %46, i32 0, i32 1
  %48 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %48, i64 %50
  store %struct.efx_farch_filter_spec* %51, %struct.efx_farch_filter_spec** %12, align 8
  %52 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %53 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @efx_farch_filter_remove(%struct.efx_nic* %52, %struct.efx_farch_filter_table* %53, i32 %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %8, align 8
  %58 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %57, i32 0, i32 0
  %59 = call i32 @up_write(i32* %58)
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %42, %39, %22
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @efx_farch_filter_id_table_id(i32) #1

declare dso_local i32 @efx_farch_filter_id_index(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @efx_farch_filter_remove(%struct.efx_nic*, %struct.efx_farch_filter_table*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
