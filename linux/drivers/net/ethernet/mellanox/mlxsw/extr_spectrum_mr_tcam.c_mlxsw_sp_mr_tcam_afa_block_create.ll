; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_afa_block_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_afa_block_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_mr_tcam_erif_list = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_TRAP_ID_ACL1 = common dso_local global i32 0, align 4
@MLXSW_TRAP_ID_ACL2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_afa_block* (%struct.mlxsw_sp*, i32, i32, i32, i32, %struct.mlxsw_sp_mr_tcam_erif_list*)* @mlxsw_sp_mr_tcam_afa_block_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_afa_block* @mlxsw_sp_mr_tcam_afa_block_create(%struct.mlxsw_sp* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.mlxsw_sp_mr_tcam_erif_list* %5) #0 {
  %7 = alloca %struct.mlxsw_afa_block*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlxsw_sp_mr_tcam_erif_list*, align 8
  %14 = alloca %struct.mlxsw_afa_block*, align 8
  %15 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.mlxsw_sp_mr_tcam_erif_list* %5, %struct.mlxsw_sp_mr_tcam_erif_list** %13, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mlxsw_afa_block* @mlxsw_afa_block_create(i32 %18)
  store %struct.mlxsw_afa_block* %19, %struct.mlxsw_afa_block** %14, align 8
  %20 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %14, align 8
  %21 = icmp ne %struct.mlxsw_afa_block* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.mlxsw_afa_block* @ERR_PTR(i32 %24)
  store %struct.mlxsw_afa_block* %25, %struct.mlxsw_afa_block** %7, align 8
  br label %89

26:                                               ; preds = %6
  %27 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %14, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @mlxsw_afa_block_append_allocated_counter(%struct.mlxsw_afa_block* %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %84

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %73 [
    i32 129, label %35
    i32 128, label %43
    i32 130, label %43
  ]

35:                                               ; preds = %33
  %36 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %14, align 8
  %37 = load i32, i32* @MLXSW_TRAP_ID_ACL1, align 4
  %38 = call i32 @mlxsw_afa_block_append_trap(%struct.mlxsw_afa_block* %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %84

42:                                               ; preds = %35
  br label %76

43:                                               ; preds = %33, %33
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %45 = load %struct.mlxsw_sp_mr_tcam_erif_list*, %struct.mlxsw_sp_mr_tcam_erif_list** %13, align 8
  %46 = call i32 @mlxsw_sp_mr_erif_list_commit(%struct.mlxsw_sp* %44, %struct.mlxsw_sp_mr_tcam_erif_list* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %84

50:                                               ; preds = %43
  %51 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %14, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.mlxsw_sp_mr_tcam_erif_list*, %struct.mlxsw_sp_mr_tcam_erif_list** %13, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_erif_list, %struct.mlxsw_sp_mr_tcam_erif_list* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mlxsw_afa_block_append_mcrouter(%struct.mlxsw_afa_block* %51, i32 %52, i32 %53, i32 0, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %84

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 128
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %14, align 8
  %66 = load i32, i32* @MLXSW_TRAP_ID_ACL2, align 4
  %67 = call i32 @mlxsw_afa_block_append_trap_and_forward(%struct.mlxsw_afa_block* %65, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %84

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %61
  br label %76

73:                                               ; preds = %33
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %15, align 4
  br label %84

76:                                               ; preds = %72, %42
  %77 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %14, align 8
  %78 = call i32 @mlxsw_afa_block_commit(%struct.mlxsw_afa_block* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %84

82:                                               ; preds = %76
  %83 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %14, align 8
  store %struct.mlxsw_afa_block* %83, %struct.mlxsw_afa_block** %7, align 8
  br label %89

84:                                               ; preds = %81, %73, %70, %60, %49, %41, %32
  %85 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %14, align 8
  %86 = call i32 @mlxsw_afa_block_destroy(%struct.mlxsw_afa_block* %85)
  %87 = load i32, i32* %15, align 4
  %88 = call %struct.mlxsw_afa_block* @ERR_PTR(i32 %87)
  store %struct.mlxsw_afa_block* %88, %struct.mlxsw_afa_block** %7, align 8
  br label %89

89:                                               ; preds = %84, %82, %22
  %90 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %7, align 8
  ret %struct.mlxsw_afa_block* %90
}

declare dso_local %struct.mlxsw_afa_block* @mlxsw_afa_block_create(i32) #1

declare dso_local %struct.mlxsw_afa_block* @ERR_PTR(i32) #1

declare dso_local i32 @mlxsw_afa_block_append_allocated_counter(%struct.mlxsw_afa_block*, i32) #1

declare dso_local i32 @mlxsw_afa_block_append_trap(%struct.mlxsw_afa_block*, i32) #1

declare dso_local i32 @mlxsw_sp_mr_erif_list_commit(%struct.mlxsw_sp*, %struct.mlxsw_sp_mr_tcam_erif_list*) #1

declare dso_local i32 @mlxsw_afa_block_append_mcrouter(%struct.mlxsw_afa_block*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_afa_block_append_trap_and_forward(%struct.mlxsw_afa_block*, i32) #1

declare dso_local i32 @mlxsw_afa_block_commit(%struct.mlxsw_afa_block*) #1

declare dso_local i32 @mlxsw_afa_block_destroy(%struct.mlxsw_afa_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
