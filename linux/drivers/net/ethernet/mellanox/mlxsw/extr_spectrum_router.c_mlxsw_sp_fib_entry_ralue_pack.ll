; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_entry_ralue_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_entry_ralue_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fib_entry = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.mlxsw_sp_fib* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.mlxsw_sp_fib = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mlxsw_sp_fib_entry*, i32)* @mlxsw_sp_fib_entry_ralue_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fib_entry_ralue_pack(i8* %0, %struct.mlxsw_sp_fib_entry* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_fib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.mlxsw_sp_fib_entry* %1, %struct.mlxsw_sp_fib_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %13, align 8
  store %struct.mlxsw_sp_fib* %14, %struct.mlxsw_sp_fib** %7, align 8
  %15 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %7, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %7, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %68 [
    i32 129, label %21
    i32 128, label %46
  ]

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %9, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %7, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mlxsw_reg_ralue_pack4(i8* %29, i32 %30, i32 %31, i32 %36, i32 %42, i32 %44)
  br label %68

46:                                               ; preds = %3
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %7, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @mlxsw_reg_ralue_pack6(i8* %47, i32 %48, i32 %49, i32 %54, i32 %60, i64 %66)
  br label %68

68:                                               ; preds = %3, %46, %21
  ret void
}

declare dso_local i32 @mlxsw_reg_ralue_pack4(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_reg_ralue_pack6(i8*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
