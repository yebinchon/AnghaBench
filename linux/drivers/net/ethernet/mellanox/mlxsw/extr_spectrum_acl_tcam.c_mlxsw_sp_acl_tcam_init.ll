; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, %struct.mlxsw_sp_acl_tcam_ops* }
%struct.mlxsw_sp_acl_tcam_ops = type { i32 (%struct.mlxsw_sp.0*, i32, %struct.mlxsw_sp_acl_tcam*)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp_acl_tcam = type opaque
%struct.mlxsw_sp_acl_tcam.1 = type { i8*, i8*, i32, i8*, i64, i64, i32, i32, i32 }

@MLXSW_SP_ACL_TCAM_VREGION_REHASH_INTRVL_DFLT = common dso_local global i32 0, align 4
@ACL_MAX_TCAM_REGIONS = common dso_local global i32 0, align 4
@ACL_MAX_REGIONS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACL_MAX_GROUPS = common dso_local global i32 0, align 4
@ACL_MAX_GROUP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_tcam_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam.1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_tcam.1*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_tcam_ops*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_tcam.1* %1, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %12, i32 0, i32 1
  %14 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %13, align 8
  store %struct.mlxsw_sp_acl_tcam_ops* %14, %struct.mlxsw_sp_acl_tcam_ops** %6, align 8
  %15 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %15, i32 0, i32 8
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load i32, i32* @MLXSW_SP_ACL_TCAM_VREGION_REHASH_INTRVL_DFLT, align 4
  %19 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %21, i32 0, i32 6
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ACL_MAX_TCAM_REGIONS, align 4
  %28 = call i8* @MLXSW_CORE_RES_GET(i32 %26, i32 %27)
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ACL_MAX_REGIONS, align 4
  %34 = call i8* @MLXSW_CORE_RES_GET(i32 %32, i32 %33)
  %35 = ptrtoint i8* %34 to i64
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i64, i64* %7, align 8
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %39, %2
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @BITS_TO_LONGS(i64 %42)
  %44 = sext i32 %43 to i64
  %45 = mul i64 1, %44
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kzalloc(i64 %46, i32 %47)
  %49 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %41
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %121

58:                                               ; preds = %41
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %60, i32 0, i32 5
  store i64 %59, i64* %61, align 8
  %62 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ACL_MAX_GROUPS, align 4
  %66 = call i8* @MLXSW_CORE_RES_GET(i32 %64, i32 %65)
  %67 = ptrtoint i8* %66 to i64
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @BITS_TO_LONGS(i64 %68)
  %70 = sext i32 %69 to i64
  %71 = mul i64 1, %70
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @kzalloc(i64 %72, i32 %73)
  %75 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %76 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %58
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %11, align 4
  br label %115

84:                                               ; preds = %58
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %87 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %86, i32 0, i32 4
  store i64 %85, i64* %87, align 8
  %88 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %89 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ACL_MAX_GROUP_SIZE, align 4
  %92 = call i8* @MLXSW_CORE_RES_GET(i32 %90, i32 %91)
  %93 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %6, align 8
  %96 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, %struct.mlxsw_sp_acl_tcam_ops* %95, i32 0, i32 0
  %97 = load i32 (%struct.mlxsw_sp.0*, i32, %struct.mlxsw_sp_acl_tcam*)*, i32 (%struct.mlxsw_sp.0*, i32, %struct.mlxsw_sp_acl_tcam*)** %96, align 8
  %98 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %99 = bitcast %struct.mlxsw_sp* %98 to %struct.mlxsw_sp.0*
  %100 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %101 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %104 = bitcast %struct.mlxsw_sp_acl_tcam.1* %103 to %struct.mlxsw_sp_acl_tcam*
  %105 = call i32 %97(%struct.mlxsw_sp.0* %99, i32 %102, %struct.mlxsw_sp_acl_tcam* %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %84
  br label %110

109:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  br label %121

110:                                              ; preds = %108
  %111 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %112 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @kfree(i8* %113)
  br label %115

115:                                              ; preds = %110, %81
  %116 = load %struct.mlxsw_sp_acl_tcam.1*, %struct.mlxsw_sp_acl_tcam.1** %5, align 8
  %117 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam.1, %struct.mlxsw_sp_acl_tcam.1* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @kfree(i8* %118)
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %115, %109, %55
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
