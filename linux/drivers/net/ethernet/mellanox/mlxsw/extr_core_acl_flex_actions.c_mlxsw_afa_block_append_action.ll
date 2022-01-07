; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { i32, %struct.mlxsw_afa_set*, %struct.TYPE_3__*, i64 }
%struct.mlxsw_afa_set = type { %struct.TYPE_4__, %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@MLXSW_AFA_ONE_ACTION_LEN = common dso_local global i32 0, align 4
@MLXSW_AFA_PAYLOAD_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlxsw_afa_block*, i64, i64)* @mlxsw_afa_block_append_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mlxsw_afa_block_append_action(%struct.mlxsw_afa_block* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlxsw_afa_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlxsw_afa_set*, align 8
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i8* @ERR_PTR(i32 %17)
  store i8* %18, i8** %4, align 8
  br label %85

19:                                               ; preds = %3
  %20 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %21 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %27 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %25, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %19
  %33 = call %struct.mlxsw_afa_set* @mlxsw_afa_set_create(i32 0)
  store %struct.mlxsw_afa_set* %33, %struct.mlxsw_afa_set** %10, align 8
  %34 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %10, align 8
  %35 = icmp ne %struct.mlxsw_afa_set* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOBUFS, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i8* @ERR_PTR(i32 %38)
  store i8* %39, i8** %4, align 8
  br label %85

40:                                               ; preds = %32
  %41 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %42 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %41, i32 0, i32 1
  %43 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %42, align 8
  %44 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %10, align 8
  %45 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %44, i32 0, i32 2
  store %struct.mlxsw_afa_set* %43, %struct.mlxsw_afa_set** %45, align 8
  %46 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %47 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %10, align 8
  %49 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %50 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %49, i32 0, i32 1
  %51 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %50, align 8
  %52 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %51, i32 0, i32 1
  store %struct.mlxsw_afa_set* %48, %struct.mlxsw_afa_set** %52, align 8
  %53 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %10, align 8
  %54 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %55 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %54, i32 0, i32 1
  store %struct.mlxsw_afa_set* %53, %struct.mlxsw_afa_set** %55, align 8
  br label %56

56:                                               ; preds = %40, %19
  %57 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %58 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %57, i32 0, i32 1
  %59 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %58, align 8
  %60 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %65 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MLXSW_AFA_ONE_ACTION_LEN, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %63, i64 %69
  store i8* %70, i8** %8, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %5, align 8
  %73 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @mlxsw_afa_all_action_type_set(i8* %78, i64 %79)
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* @MLXSW_AFA_PAYLOAD_OFFSET, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8* %84, i8** %4, align 8
  br label %85

85:                                               ; preds = %56, %36, %15
  %86 = load i8*, i8** %4, align 8
  ret i8* %86
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_afa_set* @mlxsw_afa_set_create(i32) #1

declare dso_local i32 @mlxsw_afa_all_action_type_set(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
