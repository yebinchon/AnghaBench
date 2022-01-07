; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_record_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_record_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve_mc_record = type { i32, i64, %struct.TYPE_4__*, %struct.mlxsw_sp_nve_mc_entry*, i32, i32, %struct.mlxsw_sp*, %struct.mlxsw_sp_nve_mc_list* }
%struct.TYPE_4__ = type { i32, i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*, i8*, i32)* }
%struct.mlxsw_sp_nve_mc_entry = type { i32 }
%struct.mlxsw_sp = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.mlxsw_sp_nve_mc_list = type { i32 }

@MLXSW_REG_TNUMT_LEN = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@MLXSW_REG_TNUMT_TUNNEL_PORT_NVE = common dso_local global i32 0, align 4
@tnumt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_nve_mc_record*)* @mlxsw_sp_nve_mc_record_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nve_mc_record_refresh(%struct.mlxsw_sp_nve_mc_record* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_nve_mc_list*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  %14 = alloca %struct.mlxsw_sp_nve_mc_entry*, align 8
  store %struct.mlxsw_sp_nve_mc_record* %0, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %15 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %3, align 4
  %20 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %20, i32 0, i32 7
  %22 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %21, align 8
  store %struct.mlxsw_sp_nve_mc_list* %22, %struct.mlxsw_sp_nve_mc_list** %4, align 8
  %23 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %23, i32 0, i32 6
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %24, align 8
  store %struct.mlxsw_sp* %25, %struct.mlxsw_sp** %5, align 8
  %26 = load i32, i32* @MLXSW_REG_TNUMT_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %6, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %30 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %30, i32 0, i32 5
  %32 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %4, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list, %struct.mlxsw_sp_nve_mc_list* %32, i32 0, i32 0
  %34 = call i32 @list_is_last(i32* %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %1
  %37 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %38 = load i32, i32* @list, align 4
  %39 = call %struct.mlxsw_sp_nve_mc_record* @list_next_entry(%struct.mlxsw_sp_nve_mc_record* %37, i32 %38)
  store %struct.mlxsw_sp_nve_mc_record* %39, %struct.mlxsw_sp_nve_mc_record** %13, align 8
  %40 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %13, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %36, %1
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @MLXSW_REG_TNUMT_TUNNEL_PORT_NVE, align 4
  %46 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mlxsw_reg_tnumt_pack(i8* %29, i32 %44, i32 %45, i32 %48, i32 %49, i32 %50, i32 %53)
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %92, %43
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %65
  %70 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %70, i32 0, i32 3
  %72 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_entry, %struct.mlxsw_sp_nve_mc_entry* %72, i64 %74
  store %struct.mlxsw_sp_nve_mc_entry* %75, %struct.mlxsw_sp_nve_mc_entry** %14, align 8
  %76 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %14, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_entry, %struct.mlxsw_sp_nve_mc_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %69
  br label %92

81:                                               ; preds = %69
  %82 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*, i8*, i32)*, i32 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*, i8*, i32)** %85, align 8
  %87 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %88 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %14, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %9, align 4
  %91 = call i32 %86(%struct.mlxsw_sp_nve_mc_record* %87, %struct.mlxsw_sp_nve_mc_entry* %88, i8* %29, i32 %89)
  br label %92

92:                                               ; preds = %81, %80
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %65

95:                                               ; preds = %65
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %98 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %96, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @WARN_ON(i32 %101)
  %103 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %104 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @tnumt, align 4
  %107 = call i32 @MLXSW_REG(i32 %106)
  %108 = call i32 @mlxsw_reg_write(i32 %105, i32 %107, i8* %29)
  %109 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %109)
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @list_is_last(i32*, i32*) #2

declare dso_local %struct.mlxsw_sp_nve_mc_record* @list_next_entry(%struct.mlxsw_sp_nve_mc_record*, i32) #2

declare dso_local i32 @mlxsw_reg_tnumt_pack(i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @WARN_ON(i32) #2

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
