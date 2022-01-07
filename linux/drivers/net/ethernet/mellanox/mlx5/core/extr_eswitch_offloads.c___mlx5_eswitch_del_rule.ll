; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c___mlx5_eswitch_del_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c___mlx5_eswitch_del_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_flow_handle = type { i32 }
%struct.mlx5_esw_flow_attr = type { i64, i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MLX5_MAX_FLOW_FWD_VPORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, %struct.mlx5_flow_handle*, %struct.mlx5_esw_flow_attr*, i32)* @__mlx5_eswitch_del_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mlx5_eswitch_del_rule(%struct.mlx5_eswitch* %0, %struct.mlx5_flow_handle* %1, %struct.mlx5_esw_flow_attr* %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_eswitch*, align 8
  %6 = alloca %struct.mlx5_flow_handle*, align 8
  %7 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %5, align 8
  store %struct.mlx5_flow_handle* %1, %struct.mlx5_flow_handle** %6, align 8
  store %struct.mlx5_esw_flow_attr* %2, %struct.mlx5_esw_flow_attr** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %12 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %6, align 8
  %17 = call i32 @mlx5_del_flow_rules(%struct.mlx5_flow_handle* %16)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %44, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @MLX5_MAX_FLOW_FWD_VPORTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %24 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %22
  %33 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %34 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @mlx5_eswitch_termtbl_put(%struct.mlx5_eswitch* %33, i64 %41)
  br label %43

43:                                               ; preds = %32, %22
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %18

47:                                               ; preds = %18
  %48 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @atomic64_dec(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %56 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %57 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %60 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @esw_put_prio_table(%struct.mlx5_eswitch* %55, i64 %58, i32 %61, i32 1)
  %63 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %64 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %65 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %68 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @esw_put_prio_table(%struct.mlx5_eswitch* %63, i64 %66, i32 %69, i32 0)
  br label %96

71:                                               ; preds = %47
  %72 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %73 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %74 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %77 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @esw_put_prio_table(%struct.mlx5_eswitch* %72, i64 %75, i32 %78, i32 %83)
  %85 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %86 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %71
  %90 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %91 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %92 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @esw_put_prio_table(%struct.mlx5_eswitch* %90, i64 %93, i32 1, i32 0)
  br label %95

95:                                               ; preds = %89, %71
  br label %96

96:                                               ; preds = %95, %54
  ret void
}

declare dso_local i32 @mlx5_del_flow_rules(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @mlx5_eswitch_termtbl_put(%struct.mlx5_eswitch*, i64) #1

declare dso_local i32 @atomic64_dec(i32*) #1

declare dso_local i32 @esw_put_prio_table(%struct.mlx5_eswitch*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
