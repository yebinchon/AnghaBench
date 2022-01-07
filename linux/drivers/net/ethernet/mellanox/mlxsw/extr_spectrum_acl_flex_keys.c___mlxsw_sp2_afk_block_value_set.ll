; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_flex_keys.c___mlxsw_sp2_afk_block_value_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_flex_keys.c___mlxsw_sp2_afk_block_value_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp2_afk_block_layout = type { i32, i32 }

@mlxsw_sp2_afk_blocks_layout = common dso_local global %struct.mlxsw_sp2_afk_block_layout* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @__mlxsw_sp2_afk_block_value_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mlxsw_sp2_afk_block_value_set(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp2_afk_block_layout*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.mlxsw_sp2_afk_block_layout*, %struct.mlxsw_sp2_afk_block_layout** @mlxsw_sp2_afk_blocks_layout, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.mlxsw_sp2_afk_block_layout* %12)
  %14 = icmp sge i32 %11, %13
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i1 [ true, %3 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %36

21:                                               ; preds = %15
  %22 = load %struct.mlxsw_sp2_afk_block_layout*, %struct.mlxsw_sp2_afk_block_layout** @mlxsw_sp2_afk_blocks_layout, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mlxsw_sp2_afk_block_layout, %struct.mlxsw_sp2_afk_block_layout* %22, i64 %24
  store %struct.mlxsw_sp2_afk_block_layout* %25, %struct.mlxsw_sp2_afk_block_layout** %7, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.mlxsw_sp2_afk_block_layout*, %struct.mlxsw_sp2_afk_block_layout** %7, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp2_afk_block_layout, %struct.mlxsw_sp2_afk_block_layout* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  %32 = load %struct.mlxsw_sp2_afk_block_layout*, %struct.mlxsw_sp2_afk_block_layout** %7, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp2_afk_block_layout, %struct.mlxsw_sp2_afk_block_layout* %32, i32 0, i32 1
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @__mlxsw_item_set64(i8* %31, i32* %33, i32 0, i32 %34)
  br label %36

36:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mlxsw_sp2_afk_block_layout*) #1

declare dso_local i32 @__mlxsw_item_set64(i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
