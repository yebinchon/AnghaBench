; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_handle_empty_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_handle_empty_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5dr_ste_htbl = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5dr_ste = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.mlx5dr_ste_send_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DR_CHUNK_SIZE_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed allocating table\0A\00", align 1
@DR_STE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste*, i32, i32*, %struct.list_head*, %struct.list_head*)* @dr_rule_handle_empty_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_rule_handle_empty_entry(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_ste_htbl* %2, %struct.mlx5dr_ste* %3, i32 %4, i32* %5, %struct.list_head* %6, %struct.list_head* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5dr_matcher*, align 8
  %11 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %12 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %13 = alloca %struct.mlx5dr_ste*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.list_head*, align 8
  %17 = alloca %struct.list_head*, align 8
  %18 = alloca %struct.mlx5dr_ste_send_info*, align 8
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %10, align 8
  store %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx** %11, align 8
  store %struct.mlx5dr_ste_htbl* %2, %struct.mlx5dr_ste_htbl** %12, align 8
  store %struct.mlx5dr_ste* %3, %struct.mlx5dr_ste** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store %struct.list_head* %6, %struct.list_head** %16, align 8
  store %struct.list_head* %7, %struct.list_head** %17, align 8
  %19 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %20 = call i32 @mlx5dr_htbl_get(%struct.mlx5dr_ste_htbl* %19)
  %21 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %13, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %21, i32 0, i32 0
  %23 = load %struct.list_head*, %struct.list_head** %16, align 8
  %24 = call i32 @list_add_tail(i32* %22, %struct.list_head* %23)
  %25 = load i32*, i32** %15, align 8
  %26 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %11, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlx5dr_ste_set_miss_addr(i32* %25, i32 %32)
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %13, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.mlx5dr_ste_send_info* @kzalloc(i32 4, i32 %37)
  store %struct.mlx5dr_ste_send_info* %38, %struct.mlx5dr_ste_send_info** %18, align 8
  %39 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %18, align 8
  %40 = icmp ne %struct.mlx5dr_ste_send_info* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %8
  br label %72

42:                                               ; preds = %8
  %43 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %44 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %11, align 8
  %45 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %13, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* @DR_CHUNK_SIZE_1, align 4
  %48 = call i64 @mlx5dr_ste_create_next_htbl(%struct.mlx5dr_matcher* %43, %struct.mlx5dr_matcher_rx_tx* %44, %struct.mlx5dr_ste* %45, i32* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %10, align 8
  %52 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mlx5dr_dbg(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %69

57:                                               ; preds = %42
  %58 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %13, align 8
  %64 = load i32, i32* @DR_STE_SIZE, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %18, align 8
  %67 = load %struct.list_head*, %struct.list_head** %17, align 8
  %68 = call i32 @mlx5dr_send_fill_and_append_ste_send_info(%struct.mlx5dr_ste* %63, i32 %64, i32 0, i32* %65, %struct.mlx5dr_ste_send_info* %66, %struct.list_head* %67, i32 0)
  store i32 0, i32* %9, align 4
  br label %80

69:                                               ; preds = %50
  %70 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %18, align 8
  %71 = call i32 @kfree(%struct.mlx5dr_ste_send_info* %70)
  br label %72

72:                                               ; preds = %69, %41
  %73 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %13, align 8
  %74 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %73, i32 0, i32 0
  %75 = call i32 @list_del_init(i32* %74)
  %76 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %77 = call i32 @mlx5dr_htbl_put(%struct.mlx5dr_ste_htbl* %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %72, %57
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @mlx5dr_htbl_get(%struct.mlx5dr_ste_htbl*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @mlx5dr_ste_set_miss_addr(i32*, i32) #1

declare dso_local %struct.mlx5dr_ste_send_info* @kzalloc(i32, i32) #1

declare dso_local i64 @mlx5dr_ste_create_next_htbl(%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_ste*, i32*, i32) #1

declare dso_local i32 @mlx5dr_dbg(i32, i8*) #1

declare dso_local i32 @mlx5dr_send_fill_and_append_ste_send_info(%struct.mlx5dr_ste*, i32, i32, i32*, %struct.mlx5dr_ste_send_info*, %struct.list_head*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5dr_ste_send_info*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mlx5dr_htbl_put(%struct.mlx5dr_ste_htbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
