; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_family_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_family_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_fid_family** }
%struct.mlxsw_sp_fid_family = type { i64, i32, i64, i32, %struct.mlxsw_sp*, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fid_family*)* @mlxsw_sp_fid_family_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fid_family_register(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fid_family* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_fid_family* %1, %struct.mlxsw_sp_fid_family** %5, align 8
  %9 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %6, align 8
  %17 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mlxsw_sp_fid_family* @kmemdup(%struct.mlxsw_sp_fid_family* %17, i32 56, i32 %18)
  store %struct.mlxsw_sp_fid_family* %19, %struct.mlxsw_sp_fid_family** %7, align 8
  %20 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %7, align 8
  %21 = icmp ne %struct.mlxsw_sp_fid_family* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %76

25:                                               ; preds = %2
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %27 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %7, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %27, i32 0, i32 4
  store %struct.mlxsw_sp* %26, %struct.mlxsw_sp** %28, align 8
  %29 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %7, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %29, i32 0, i32 3
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @bitmap_zalloc(i64 %32, i32 %33)
  %35 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %7, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %7, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %25
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %72

44:                                               ; preds = %25
  %45 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %7, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %7, align 8
  %51 = call i32 @mlxsw_sp_fid_flood_tables_init(%struct.mlxsw_sp_fid_family* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %67

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %44
  %57 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %7, align 8
  %58 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.mlxsw_sp_fid_family**, %struct.mlxsw_sp_fid_family*** %61, align 8
  %63 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %5, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %62, i64 %65
  store %struct.mlxsw_sp_fid_family* %57, %struct.mlxsw_sp_fid_family** %66, align 8
  store i32 0, i32* %3, align 4
  br label %76

67:                                               ; preds = %54
  %68 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %7, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @bitmap_free(i32 %70)
  br label %72

72:                                               ; preds = %67, %41
  %73 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %7, align 8
  %74 = call i32 @kfree(%struct.mlxsw_sp_fid_family* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %56, %22
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.mlxsw_sp_fid_family* @kmemdup(%struct.mlxsw_sp_fid_family*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bitmap_zalloc(i64, i32) #1

declare dso_local i32 @mlxsw_sp_fid_flood_tables_init(%struct.mlxsw_sp_fid_family*) #1

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_fid_family*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
