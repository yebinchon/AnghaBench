; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_node_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_node_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fib_node = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib = type { i32 }
%struct.mlxsw_sp_vr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_fib_node* (%struct.mlxsw_sp*, i32, i8*, i64, i8, i32)* @mlxsw_sp_fib_node_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib_node_get(%struct.mlxsw_sp* %0, i32 %1, i8* %2, i64 %3, i8 zeroext %4, i32 %5) #0 {
  %7 = alloca %struct.mlxsw_sp_fib_node*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlxsw_sp_fib_node*, align 8
  %15 = alloca %struct.mlxsw_sp_fib*, align 8
  %16 = alloca %struct.mlxsw_sp_vr*, align 8
  %17 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8 %4, i8* %12, align 1
  store i32 %5, i32* %13, align 4
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(%struct.mlxsw_sp* %18, i32 %19, i32* null)
  store %struct.mlxsw_sp_vr* %20, %struct.mlxsw_sp_vr** %16, align 8
  %21 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %16, align 8
  %22 = call i64 @IS_ERR(%struct.mlxsw_sp_vr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %16, align 8
  %26 = call %struct.mlxsw_sp_fib_node* @ERR_CAST(%struct.mlxsw_sp_vr* %25)
  store %struct.mlxsw_sp_fib_node* %26, %struct.mlxsw_sp_fib_node** %7, align 8
  br label %70

27:                                               ; preds = %6
  %28 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %16, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call %struct.mlxsw_sp_fib* @mlxsw_sp_vr_fib(%struct.mlxsw_sp_vr* %28, i32 %29)
  store %struct.mlxsw_sp_fib* %30, %struct.mlxsw_sp_fib** %15, align 8
  %31 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %15, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i8, i8* %12, align 1
  %35 = call %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib_node_lookup(%struct.mlxsw_sp_fib* %31, i8* %32, i64 %33, i8 zeroext %34)
  store %struct.mlxsw_sp_fib_node* %35, %struct.mlxsw_sp_fib_node** %14, align 8
  %36 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %14, align 8
  %37 = icmp ne %struct.mlxsw_sp_fib_node* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %14, align 8
  store %struct.mlxsw_sp_fib_node* %39, %struct.mlxsw_sp_fib_node** %7, align 8
  br label %70

40:                                               ; preds = %27
  %41 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %15, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i8, i8* %12, align 1
  %45 = call %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib_node_create(%struct.mlxsw_sp_fib* %41, i8* %42, i64 %43, i8 zeroext %44)
  store %struct.mlxsw_sp_fib_node* %45, %struct.mlxsw_sp_fib_node** %14, align 8
  %46 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %14, align 8
  %47 = icmp ne %struct.mlxsw_sp_fib_node* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %17, align 4
  br label %64

51:                                               ; preds = %40
  %52 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %53 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %14, align 8
  %54 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %15, align 8
  %55 = call i32 @mlxsw_sp_fib_node_init(%struct.mlxsw_sp* %52, %struct.mlxsw_sp_fib_node* %53, %struct.mlxsw_sp_fib* %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %61

59:                                               ; preds = %51
  %60 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %14, align 8
  store %struct.mlxsw_sp_fib_node* %60, %struct.mlxsw_sp_fib_node** %7, align 8
  br label %70

61:                                               ; preds = %58
  %62 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %14, align 8
  %63 = call i32 @mlxsw_sp_fib_node_destroy(%struct.mlxsw_sp_fib_node* %62)
  br label %64

64:                                               ; preds = %61, %48
  %65 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %66 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %16, align 8
  %67 = call i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp* %65, %struct.mlxsw_sp_vr* %66)
  %68 = load i32, i32* %17, align 4
  %69 = call %struct.mlxsw_sp_fib_node* @ERR_PTR(i32 %68)
  store %struct.mlxsw_sp_fib_node* %69, %struct.mlxsw_sp_fib_node** %7, align 8
  br label %70

70:                                               ; preds = %64, %59, %38, %24
  %71 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %7, align 8
  ret %struct.mlxsw_sp_fib_node* %71
}

declare dso_local %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(%struct.mlxsw_sp*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_vr*) #1

declare dso_local %struct.mlxsw_sp_fib_node* @ERR_CAST(%struct.mlxsw_sp_vr*) #1

declare dso_local %struct.mlxsw_sp_fib* @mlxsw_sp_vr_fib(%struct.mlxsw_sp_vr*, i32) #1

declare dso_local %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib_node_lookup(%struct.mlxsw_sp_fib*, i8*, i64, i8 zeroext) #1

declare dso_local %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib_node_create(%struct.mlxsw_sp_fib*, i8*, i64, i8 zeroext) #1

declare dso_local i32 @mlxsw_sp_fib_node_init(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib*) #1

declare dso_local i32 @mlxsw_sp_fib_node_destroy(%struct.mlxsw_sp_fib_node*) #1

declare dso_local i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*) #1

declare dso_local %struct.mlxsw_sp_fib_node* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
