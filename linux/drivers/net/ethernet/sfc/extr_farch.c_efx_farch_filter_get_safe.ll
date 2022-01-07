; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_get_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_get_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_farch_filter_state* }
%struct.efx_farch_filter_state = type { i32, %struct.efx_farch_filter_table* }
%struct.efx_farch_filter_table = type { i32, i32, %struct.efx_farch_filter_spec* }
%struct.efx_farch_filter_spec = type { i32 }
%struct.efx_filter_spec = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_TABLE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_farch_filter_get_safe(%struct.efx_nic* %0, i32 %1, i32 %2, %struct.efx_filter_spec* %3) #0 {
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_filter_spec*, align 8
  %9 = alloca %struct.efx_farch_filter_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.efx_farch_filter_table*, align 8
  %12 = alloca %struct.efx_farch_filter_spec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.efx_filter_spec* %3, %struct.efx_filter_spec** %8, align 8
  %15 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 0
  %17 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %16, align 8
  store %struct.efx_farch_filter_state* %17, %struct.efx_farch_filter_state** %9, align 8
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %9, align 8
  %21 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %20, i32 0, i32 0
  %22 = call i32 @down_read(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @efx_farch_filter_id_table_id(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @EFX_FARCH_FILTER_TABLE_COUNT, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %68

29:                                               ; preds = %4
  %30 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %9, align 8
  %31 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %30, i32 0, i32 1
  %32 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %32, i64 %34
  store %struct.efx_farch_filter_table* %35, %struct.efx_farch_filter_table** %11, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @efx_farch_filter_id_index(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %11, align 8
  %40 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp uge i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %68

44:                                               ; preds = %29
  %45 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %11, align 8
  %46 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %45, i32 0, i32 2
  %47 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %47, i64 %49
  store %struct.efx_farch_filter_spec* %50, %struct.efx_farch_filter_spec** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %11, align 8
  %53 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @test_bit(i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %44
  %58 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %12, align 8
  %59 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %8, align 8
  %65 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %12, align 8
  %66 = call i32 @efx_farch_filter_to_gen_spec(%struct.efx_filter_spec* %64, %struct.efx_farch_filter_spec* %65)
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %63, %57, %44
  br label %68

68:                                               ; preds = %67, %43, %28
  %69 = load %struct.efx_farch_filter_state*, %struct.efx_farch_filter_state** %9, align 8
  %70 = getelementptr inbounds %struct.efx_farch_filter_state, %struct.efx_farch_filter_state* %69, i32 0, i32 0
  %71 = call i32 @up_read(i32* %70)
  %72 = load i32, i32* %14, align 4
  ret i32 %72
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @efx_farch_filter_id_table_id(i32) #1

declare dso_local i32 @efx_farch_filter_id_index(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @efx_farch_filter_to_gen_spec(%struct.efx_filter_spec*, %struct.efx_farch_filter_spec*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
