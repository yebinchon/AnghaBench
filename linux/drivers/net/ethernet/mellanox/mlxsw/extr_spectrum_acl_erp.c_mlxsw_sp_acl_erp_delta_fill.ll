; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_delta_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_delta_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_key = type { i64* }

@__MASK_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key*, i8*, i8*)* @mlxsw_sp_acl_erp_delta_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_erp_delta_fill(%struct.mlxsw_sp_acl_erp_key* %0, %struct.mlxsw_sp_acl_erp_key* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_acl_erp_key*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_erp_key*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_erp_key* %0, %struct.mlxsw_sp_acl_erp_key** %6, align 8
  store %struct.mlxsw_sp_acl_erp_key* %1, %struct.mlxsw_sp_acl_erp_key** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %51, %4
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* @__MASK_LEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = load %struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, %struct.mlxsw_sp_acl_erp_key* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %14, align 4
  %24 = call i64 @__MASK_IDX(i32 %23)
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key** %7, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, %struct.mlxsw_sp_acl_erp_key* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i64 @__MASK_IDX(i32 %30)
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %26, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %51

36:                                               ; preds = %19
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %11, align 4
  br label %50

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %14, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %173

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %39
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  br label %15

54:                                               ; preds = %15
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %173

60:                                               ; preds = %54
  %61 = load %struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key** %6, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, %struct.mlxsw_sp_acl_erp_key* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @__MASK_IDX(i32 %64)
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i8
  store i8 %68, i8* %12, align 1
  %69 = load %struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key** %7, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, %struct.mlxsw_sp_acl_erp_key* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @__MASK_IDX(i32 %72)
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i8
  store i8 %76, i8* %13, align 1
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* @__MASK_LEN, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %112

81:                                               ; preds = %60
  %82 = load %struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key** %6, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, %struct.mlxsw_sp_acl_erp_key* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i64 @__MASK_IDX(i32 %86)
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i8
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 8
  %93 = load i8, i8* %12, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %94, %92
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %12, align 1
  %97 = load %struct.mlxsw_sp_acl_erp_key*, %struct.mlxsw_sp_acl_erp_key** %7, align 8
  %98 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, %struct.mlxsw_sp_acl_erp_key* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i64 @__MASK_IDX(i32 %101)
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i8
  %106 = zext i8 %105 to i32
  %107 = shl i32 %106, 8
  %108 = load i8, i8* %13, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %109, %107
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %13, align 1
  br label %112

112:                                              ; preds = %81, %60
  %113 = load i8, i8* %12, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* %13, align 1
  %116 = zext i8 %115 to i32
  %117 = xor i32 %114, %116
  %118 = load i8, i8* %12, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %112
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %173

125:                                              ; preds = %112
  %126 = load i8, i8* %12, align 1
  %127 = zext i8 %126 to i32
  %128 = xor i32 %127, -1
  %129 = load i8, i8* %13, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %130, %128
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %13, align 1
  br label %133

133:                                              ; preds = %141, %125
  %134 = load i8, i8* %13, align 1
  %135 = zext i8 %134 to i32
  %136 = load i32, i32* %10, align 4
  %137 = shl i32 1, %136
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %133

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %151, %144
  %146 = load i8, i8* %13, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 1
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load i8, i8* %13, align 1
  %153 = zext i8 %152 to i32
  %154 = ashr i32 %153, 1
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %13, align 1
  br label %145

156:                                              ; preds = %145
  %157 = load i8, i8* %13, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 65280
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %5, align 4
  br label %173

164:                                              ; preds = %156
  %165 = load i32, i32* %11, align 4
  %166 = mul nsw i32 %165, 8
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %166, %167
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %8, align 8
  store i8 %169, i8* %170, align 1
  %171 = load i8, i8* %13, align 1
  %172 = load i8*, i8** %9, align 8
  store i8 %171, i8* %172, align 1
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %164, %161, %122, %57, %46
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i64 @__MASK_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
