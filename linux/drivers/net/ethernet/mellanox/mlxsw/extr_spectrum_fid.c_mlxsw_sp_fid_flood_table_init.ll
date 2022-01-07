; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_flood_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_flood_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid_family = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_flood_table = type { i32, i32, i32, i32 }

@mlxsw_sp_packet_type_sfgc_types = common dso_local global i32** null, align 8
@MLXSW_REG_SFGC_TYPE_MAX = common dso_local global i32 0, align 4
@MLXSW_REG_SFGC_LEN = common dso_local global i32 0, align 4
@sfgc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_flood_table*)* @mlxsw_sp_fid_flood_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fid_flood_table_init(%struct.mlxsw_sp_fid_family* %0, %struct.mlxsw_sp_flood_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %5 = alloca %struct.mlxsw_sp_flood_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp_fid_family* %0, %struct.mlxsw_sp_fid_family** %4, align 8
  store %struct.mlxsw_sp_flood_table* %1, %struct.mlxsw_sp_flood_table** %5, align 8
  %14 = load %struct.mlxsw_sp_flood_table*, %struct.mlxsw_sp_flood_table** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_flood_table, %struct.mlxsw_sp_flood_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32**, i32*** @mlxsw_sp_packet_type_sfgc_types, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %68, %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MLXSW_REG_SFGC_TYPE_MAX, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %22
  %27 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %4, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %27, i32 0, i32 0
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %28, align 8
  store %struct.mlxsw_sp* %29, %struct.mlxsw_sp** %9, align 8
  %30 = load i32, i32* @MLXSW_REG_SFGC_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %10, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %11, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  store i32 4, i32* %13, align 4
  br label %64

41:                                               ; preds = %26
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.mlxsw_sp_flood_table*, %struct.mlxsw_sp_flood_table** %5, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_flood_table, %struct.mlxsw_sp_flood_table* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mlxsw_sp_flood_table*, %struct.mlxsw_sp_flood_table** %5, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_flood_table, %struct.mlxsw_sp_flood_table* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mlxsw_sp_flood_table*, %struct.mlxsw_sp_flood_table** %5, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_flood_table, %struct.mlxsw_sp_flood_table* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mlxsw_reg_sfgc_pack(i8* %33, i32 %42, i32 %45, i32 %48, i32 %51)
  %53 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @sfgc, align 4
  %57 = call i32 @MLXSW_REG(i32 %56)
  %58 = call i32 @mlxsw_reg_write(i32 %55, i32 %57, i8* %33)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %41
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %64

63:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %61, %40
  %65 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %13, align 4
  switch i32 %66, label %74 [
    i32 0, label %67
    i32 4, label %68
    i32 1, label %72
  ]

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %22

71:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %64
  %73 = load i32, i32* %3, align 4
  ret i32 %73

74:                                               ; preds = %64
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_sfgc_pack(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
