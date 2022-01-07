; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_kvdl.c_mlxsw_sp2_kvdl_parts_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_kvdl.c_mlxsw_sp2_kvdl_parts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp2_kvdl_part_info = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp2_kvdl = type { i32* }

@MLXSW_SP2_KVDL_PARTS_INFO_LEN = common dso_local global i32 0, align 4
@mlxsw_sp2_kvdl_parts_info = common dso_local global %struct.mlxsw_sp2_kvdl_part_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp2_kvdl*)* @mlxsw_sp2_kvdl_parts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_kvdl_parts_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp2_kvdl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp2_kvdl*, align 8
  %6 = alloca %struct.mlxsw_sp2_kvdl_part_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp2_kvdl* %1, %struct.mlxsw_sp2_kvdl** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %46, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @MLXSW_SP2_KVDL_PARTS_INFO_LEN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = load %struct.mlxsw_sp2_kvdl_part_info*, %struct.mlxsw_sp2_kvdl_part_info** @mlxsw_sp2_kvdl_parts_info, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part_info, %struct.mlxsw_sp2_kvdl_part_info* %14, i64 %16
  store %struct.mlxsw_sp2_kvdl_part_info* %17, %struct.mlxsw_sp2_kvdl_part_info** %6, align 8
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %19 = load %struct.mlxsw_sp2_kvdl_part_info*, %struct.mlxsw_sp2_kvdl_part_info** %6, align 8
  %20 = call i32 @mlxsw_sp2_kvdl_part_init(%struct.mlxsw_sp* %18, %struct.mlxsw_sp2_kvdl_part_info* %19)
  %21 = load %struct.mlxsw_sp2_kvdl*, %struct.mlxsw_sp2_kvdl** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp2_kvdl, %struct.mlxsw_sp2_kvdl* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  %27 = load %struct.mlxsw_sp2_kvdl*, %struct.mlxsw_sp2_kvdl** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp2_kvdl, %struct.mlxsw_sp2_kvdl* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %13
  %37 = load %struct.mlxsw_sp2_kvdl*, %struct.mlxsw_sp2_kvdl** %5, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp2_kvdl, %struct.mlxsw_sp2_kvdl* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %8, align 4
  br label %50

45:                                               ; preds = %13
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %9

49:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %70

50:                                               ; preds = %36
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %65, %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.mlxsw_sp2_kvdl*, %struct.mlxsw_sp2_kvdl** %5, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp2_kvdl, %struct.mlxsw_sp2_kvdl* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mlxsw_sp2_kvdl_part_fini(i32 %63)
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %7, align 4
  br label %53

68:                                               ; preds = %53
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %49
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @mlxsw_sp2_kvdl_part_init(%struct.mlxsw_sp*, %struct.mlxsw_sp2_kvdl_part_info*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mlxsw_sp2_kvdl_part_fini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
