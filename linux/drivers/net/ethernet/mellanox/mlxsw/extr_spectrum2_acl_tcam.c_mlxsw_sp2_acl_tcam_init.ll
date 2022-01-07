; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_acl_tcam.c_mlxsw_sp2_acl_tcam_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_acl_tcam.c_mlxsw_sp2_acl_tcam_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, i32 }
%struct.mlxsw_sp_acl_tcam = type { i32 }
%struct.mlxsw_sp2_acl_tcam = type { i32, i64, i32 }
%struct.mlxsw_afa_block = type { i32 }

@MLXSW_REG_PEFA_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PGCR_LEN = common dso_local global i32 0, align 4
@MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pefa = common dso_local global i32 0, align 4
@pgcr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, %struct.mlxsw_sp_acl_tcam*)* @mlxsw_sp2_acl_tcam_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_acl_tcam_init(%struct.mlxsw_sp* %0, i8* %1, %struct.mlxsw_sp_acl_tcam* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam*, align 8
  %8 = alloca %struct.mlxsw_sp2_acl_tcam*, align 8
  %9 = alloca %struct.mlxsw_afa_block*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mlxsw_sp_acl_tcam* %2, %struct.mlxsw_sp_acl_tcam** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.mlxsw_sp2_acl_tcam*
  store %struct.mlxsw_sp2_acl_tcam* %18, %struct.mlxsw_sp2_acl_tcam** %8, align 8
  %19 = load i32, i32* @MLXSW_REG_PEFA_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @MLXSW_REG_PGCR_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %7, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, %struct.mlxsw_sp_acl_tcam* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlxsw_sp2_acl_tcam*, %struct.mlxsw_sp2_acl_tcam** %8, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, %struct.mlxsw_sp2_acl_tcam* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %32 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET, align 4
  %33 = load %struct.mlxsw_sp2_acl_tcam*, %struct.mlxsw_sp2_acl_tcam** %8, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, %struct.mlxsw_sp2_acl_tcam* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mlxsw_sp2_acl_tcam*, %struct.mlxsw_sp2_acl_tcam** %8, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, %struct.mlxsw_sp2_acl_tcam* %36, i32 0, i32 1
  %38 = call i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp* %31, i32 %32, i32 %35, i64* %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %133

43:                                               ; preds = %3
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.mlxsw_afa_block* @mlxsw_afa_block_create(i32 %46)
  store %struct.mlxsw_afa_block* %47, %struct.mlxsw_afa_block** %9, align 8
  %48 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %9, align 8
  %49 = icmp ne %struct.mlxsw_afa_block* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %15, align 4
  br label %122

53:                                               ; preds = %43
  %54 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %9, align 8
  %55 = call i32 @mlxsw_afa_block_continue(%struct.mlxsw_afa_block* %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i64 @WARN_ON(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %119

60:                                               ; preds = %53
  %61 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %9, align 8
  %62 = call i8* @mlxsw_afa_block_cur_set(%struct.mlxsw_afa_block* %61)
  store i8* %62, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %88, %60
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.mlxsw_sp2_acl_tcam*, %struct.mlxsw_sp2_acl_tcam** %8, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, %struct.mlxsw_sp2_acl_tcam* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %63
  %70 = load %struct.mlxsw_sp2_acl_tcam*, %struct.mlxsw_sp2_acl_tcam** %8, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, %struct.mlxsw_sp2_acl_tcam* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @mlxsw_reg_pefa_pack(i8* %22, i64 %75, i32 1, i8* %76)
  %78 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %79 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @pefa, align 4
  %82 = call i32 @MLXSW_REG(i32 %81)
  %83 = call i32 @mlxsw_reg_write(i32 %80, i32 %82, i8* %22)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  br label %118

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %63

91:                                               ; preds = %63
  %92 = load %struct.mlxsw_sp2_acl_tcam*, %struct.mlxsw_sp2_acl_tcam** %8, align 8
  %93 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, %struct.mlxsw_sp2_acl_tcam* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @mlxsw_reg_pgcr_pack(i8* %25, i64 %94)
  %96 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %97 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @pgcr, align 4
  %100 = call i32 @MLXSW_REG(i32 %99)
  %101 = call i32 @mlxsw_reg_write(i32 %98, i32 %100, i8* %25)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %117

105:                                              ; preds = %91
  %106 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %107 = load %struct.mlxsw_sp2_acl_tcam*, %struct.mlxsw_sp2_acl_tcam** %8, align 8
  %108 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, %struct.mlxsw_sp2_acl_tcam* %107, i32 0, i32 2
  %109 = call i32 @mlxsw_sp_acl_atcam_init(%struct.mlxsw_sp* %106, i32* %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %116

113:                                              ; preds = %105
  %114 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %9, align 8
  %115 = call i32 @mlxsw_afa_block_destroy(%struct.mlxsw_afa_block* %114)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %133

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116, %104
  br label %118

118:                                              ; preds = %117, %86
  br label %119

119:                                              ; preds = %118, %59
  %120 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %9, align 8
  %121 = call i32 @mlxsw_afa_block_destroy(%struct.mlxsw_afa_block* %120)
  br label %122

122:                                              ; preds = %119, %50
  %123 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %124 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_ACTSET, align 4
  %125 = load %struct.mlxsw_sp2_acl_tcam*, %struct.mlxsw_sp2_acl_tcam** %8, align 8
  %126 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, %struct.mlxsw_sp2_acl_tcam* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.mlxsw_sp2_acl_tcam*, %struct.mlxsw_sp2_acl_tcam** %8, align 8
  %129 = getelementptr inbounds %struct.mlxsw_sp2_acl_tcam, %struct.mlxsw_sp2_acl_tcam* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @mlxsw_sp_kvdl_free(%struct.mlxsw_sp* %123, i32 %124, i32 %127, i64 %130)
  %132 = load i32, i32* %15, align 4
  store i32 %132, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %133

133:                                              ; preds = %122, %113, %41
  %134 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp*, i32, i32, i64*) #2

declare dso_local %struct.mlxsw_afa_block* @mlxsw_afa_block_create(i32) #2

declare dso_local i32 @mlxsw_afa_block_continue(%struct.mlxsw_afa_block*) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i8* @mlxsw_afa_block_cur_set(%struct.mlxsw_afa_block*) #2

declare dso_local i32 @mlxsw_reg_pefa_pack(i8*, i64, i32, i8*) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_pgcr_pack(i8*, i64) #2

declare dso_local i32 @mlxsw_sp_acl_atcam_init(%struct.mlxsw_sp*, i32*) #2

declare dso_local i32 @mlxsw_afa_block_destroy(%struct.mlxsw_afa_block*) #2

declare dso_local i32 @mlxsw_sp_kvdl_free(%struct.mlxsw_sp*, i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
