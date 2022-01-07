; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_flood_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_flood_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { %struct.mlxsw_sp_fid_family* }
%struct.mlxsw_sp_fid_family = type { %struct.TYPE_2__*, i32, %struct.mlxsw_sp_fid_ops* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_fid_ops = type { i32 (%struct.mlxsw_sp_fid.0*)* }
%struct.mlxsw_sp_fid.0 = type opaque
%struct.mlxsw_sp_flood_table = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@MLXSW_REG_SFTR_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sftr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_fid_flood_set(%struct.mlxsw_sp_fid* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_fid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %11 = alloca %struct.mlxsw_sp_fid_ops*, align 8
  %12 = alloca %struct.mlxsw_sp_flood_table*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %15, i32 0, i32 0
  %17 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %16, align 8
  store %struct.mlxsw_sp_fid_family* %17, %struct.mlxsw_sp_fid_family** %10, align 8
  %18 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %10, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %18, i32 0, i32 2
  %20 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %19, align 8
  store %struct.mlxsw_sp_fid_ops* %20, %struct.mlxsw_sp_fid_ops** %11, align 8
  %21 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %10, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %11, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_fid_ops, %struct.mlxsw_sp_fid_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.mlxsw_sp_fid.0*)*, i32 (%struct.mlxsw_sp_fid.0*)** %27, align 8
  %29 = icmp ne i32 (%struct.mlxsw_sp_fid.0*)* %28, null
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %4
  %32 = phi i1 [ true, %4 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %86

39:                                               ; preds = %31
  %40 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.mlxsw_sp_flood_table* @mlxsw_sp_fid_flood_table_lookup(%struct.mlxsw_sp_fid* %40, i32 %41)
  store %struct.mlxsw_sp_flood_table* %42, %struct.mlxsw_sp_flood_table** %12, align 8
  %43 = load %struct.mlxsw_sp_flood_table*, %struct.mlxsw_sp_flood_table** %12, align 8
  %44 = icmp ne %struct.mlxsw_sp_flood_table* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ESRCH, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %86

48:                                               ; preds = %39
  %49 = load i32, i32* @MLXSW_REG_SFTR_LEN, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kmalloc(i32 %49, i32 %50)
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %86

57:                                               ; preds = %48
  %58 = load i8*, i8** %13, align 8
  %59 = load %struct.mlxsw_sp_flood_table*, %struct.mlxsw_sp_flood_table** %12, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp_flood_table, %struct.mlxsw_sp_flood_table* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mlxsw_sp_fid_ops*, %struct.mlxsw_sp_fid_ops** %11, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_fid_ops, %struct.mlxsw_sp_fid_ops* %62, i32 0, i32 0
  %64 = load i32 (%struct.mlxsw_sp_fid.0*)*, i32 (%struct.mlxsw_sp_fid.0*)** %63, align 8
  %65 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %6, align 8
  %66 = bitcast %struct.mlxsw_sp_fid* %65 to %struct.mlxsw_sp_fid.0*
  %67 = call i32 %64(%struct.mlxsw_sp_fid.0* %66)
  %68 = load %struct.mlxsw_sp_flood_table*, %struct.mlxsw_sp_flood_table** %12, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_flood_table, %struct.mlxsw_sp_flood_table* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @mlxsw_reg_sftr_pack(i8* %58, i32 %61, i32 %67, i32 %70, i32 1, i32 %71, i32 %72)
  %74 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %10, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @sftr, align 4
  %80 = call i32 @MLXSW_REG(i32 %79)
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @mlxsw_reg_write(i32 %78, i32 %80, i8* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @kfree(i8* %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %57, %54, %45, %36
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.mlxsw_sp_flood_table* @mlxsw_sp_fid_flood_table_lookup(%struct.mlxsw_sp_fid*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mlxsw_reg_sftr_pack(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
