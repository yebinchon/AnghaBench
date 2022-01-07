; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_get_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_get_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.ef4_farch_filter_state* }
%struct.ef4_farch_filter_state = type { %struct.ef4_farch_filter_table* }
%struct.ef4_farch_filter_table = type { i32, i32, %struct.ef4_farch_filter_spec* }
%struct.ef4_farch_filter_spec = type { i32 }
%struct.ef4_filter_spec = type { i32 }

@EF4_FARCH_FILTER_TABLE_COUNT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_farch_filter_get_safe(%struct.ef4_nic* %0, i32 %1, i32 %2, %struct.ef4_filter_spec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ef4_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ef4_filter_spec*, align 8
  %10 = alloca %struct.ef4_farch_filter_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ef4_farch_filter_table*, align 8
  %13 = alloca %struct.ef4_farch_filter_spec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ef4_filter_spec* %3, %struct.ef4_filter_spec** %9, align 8
  %16 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %17 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %16, i32 0, i32 1
  %18 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %17, align 8
  store %struct.ef4_farch_filter_state* %18, %struct.ef4_farch_filter_state** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ef4_farch_filter_id_table_id(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @EF4_FARCH_FILTER_TABLE_COUNT, align 4
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %78

27:                                               ; preds = %4
  %28 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %10, align 8
  %29 = getelementptr inbounds %struct.ef4_farch_filter_state, %struct.ef4_farch_filter_state* %28, i32 0, i32 0
  %30 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %30, i64 %32
  store %struct.ef4_farch_filter_table* %33, %struct.ef4_farch_filter_table** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ef4_farch_filter_id_index(i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %12, align 8
  %38 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp uge i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %78

44:                                               ; preds = %27
  %45 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %12, align 8
  %46 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %45, i32 0, i32 2
  %47 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %47, i64 %49
  store %struct.ef4_farch_filter_spec* %50, %struct.ef4_farch_filter_spec** %13, align 8
  %51 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %52 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %51, i32 0, i32 0
  %53 = call i32 @spin_lock_bh(i32* %52)
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %12, align 8
  %56 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @test_bit(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %44
  %61 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %13, align 8
  %62 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %9, align 8
  %68 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %13, align 8
  %69 = call i32 @ef4_farch_filter_to_gen_spec(%struct.ef4_filter_spec* %67, %struct.ef4_farch_filter_spec* %68)
  store i32 0, i32* %15, align 4
  br label %73

70:                                               ; preds = %60, %44
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %75 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_bh(i32* %75)
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %41, %24
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @ef4_farch_filter_id_table_id(i32) #1

declare dso_local i32 @ef4_farch_filter_id_index(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ef4_farch_filter_to_gen_spec(%struct.ef4_filter_spec*, %struct.ef4_farch_filter_spec*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
