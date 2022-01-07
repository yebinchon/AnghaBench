; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_uar.c_alloc_uars_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_uar.c_alloc_uars_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_uars_page = type { i32, i32, i32, i32, i8*, i8*, i32, i64, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MLX5_BFREGS_PER_UAR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX5_NON_FP_BFREGS_PER_UAR = common dso_local global i32 0, align 4
@MLX5_FP_BFREGS_PER_UAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mlx5_cmd_alloc_uar() failed, %d\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"allocated UAR page: index %d, total bfregs %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to free uar index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_uars_page* (%struct.mlx5_core_dev*, i32)* @alloc_uars_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_uars_page* @alloc_uars_page(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_uars_page*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_uars_page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %14 = call i32 @uars_per_sys_page(%struct.mlx5_core_dev* %13)
  %15 = load i32, i32* @MLX5_BFREGS_PER_UAR, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mlx5_uars_page* @kzalloc(i32 56, i32 %17)
  store %struct.mlx5_uars_page* %18, %struct.mlx5_uars_page** %6, align 8
  %19 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %20 = icmp ne %struct.mlx5_uars_page* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.mlx5_uars_page* @ERR_PTR(i32 %22)
  store %struct.mlx5_uars_page* %23, %struct.mlx5_uars_page** %3, align 8
  br label %184

24:                                               ; preds = %2
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %26 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %26, i32 0, i32 8
  store %struct.mlx5_core_dev* %25, %struct.mlx5_core_dev** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @bitmap_zalloc(i32 %28, i32 %29)
  %31 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %34 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %171

38:                                               ; preds = %24
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @bitmap_zalloc(i32 %39, i32 %40)
  %42 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %44, i32 0, i32 5
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %171

49:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %73, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @MLX5_BFREGS_PER_UAR, align 4
  %57 = srem i32 %55, %56
  %58 = load i32, i32* @MLX5_NON_FP_BFREGS_PER_UAR, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @set_bit(i32 %61, i8* %64)
  br label %72

66:                                               ; preds = %54
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %69 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %68, i32 0, i32 5
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @set_bit(i32 %67, i8* %70)
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %50

76:                                               ; preds = %50
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %79 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MLX5_FP_BFREGS_PER_UAR, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* @MLX5_BFREGS_PER_UAR, align 4
  %84 = sdiv i32 %82, %83
  %85 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %86 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @MLX5_NON_FP_BFREGS_PER_UAR, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* @MLX5_BFREGS_PER_UAR, align 4
  %91 = sdiv i32 %89, %90
  %92 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %93 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %95 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %96 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %95, i32 0, i32 3
  %97 = call i32 @mlx5_cmd_alloc_uar(%struct.mlx5_core_dev* %94, i32* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %76
  %101 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %171

104:                                              ; preds = %76
  %105 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %106 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %107 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @uar2pfn(%struct.mlx5_core_dev* %105, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %104
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @PAGE_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = call i64 @ioremap_wc(i32 %115, i32 %116)
  %118 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %119 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %118, i32 0, i32 7
  store i64 %117, i64* %119, align 8
  %120 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %121 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %112
  %125 = load i32, i32* @EAGAIN, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %7, align 4
  br label %157

127:                                              ; preds = %112
  br label %144

128:                                              ; preds = %104
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @PAGE_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* @PAGE_SIZE, align 4
  %133 = call i64 @ioremap(i32 %131, i32 %132)
  %134 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %135 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %134, i32 0, i32 7
  store i64 %133, i64* %135, align 8
  %136 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %137 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %128
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %7, align 4
  br label %157

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143, %127
  %145 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %146 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %145, i32 0, i32 6
  %147 = call i32 @kref_init(i32* %146)
  %148 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %149 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %150 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %153 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %148, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32 %154)
  %156 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  store %struct.mlx5_uars_page* %156, %struct.mlx5_uars_page** %3, align 8
  br label %184

157:                                              ; preds = %140, %124
  %158 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %159 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %160 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @mlx5_cmd_free_uar(%struct.mlx5_core_dev* %158, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %166 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %167 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %164, %157
  br label %171

171:                                              ; preds = %170, %100, %48, %37
  %172 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %173 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %172, i32 0, i32 5
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @bitmap_free(i8* %174)
  %176 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %177 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %176, i32 0, i32 4
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @bitmap_free(i8* %178)
  %180 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %6, align 8
  %181 = call i32 @kfree(%struct.mlx5_uars_page* %180)
  %182 = load i32, i32* %7, align 4
  %183 = call %struct.mlx5_uars_page* @ERR_PTR(i32 %182)
  store %struct.mlx5_uars_page* %183, %struct.mlx5_uars_page** %3, align 8
  br label %184

184:                                              ; preds = %171, %144, %21
  %185 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %3, align 8
  ret %struct.mlx5_uars_page* %185
}

declare dso_local i32 @uars_per_sys_page(%struct.mlx5_core_dev*) #1

declare dso_local %struct.mlx5_uars_page* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_uars_page* @ERR_PTR(i32) #1

declare dso_local i8* @bitmap_zalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i8*) #1

declare dso_local i32 @mlx5_cmd_alloc_uar(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @uar2pfn(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @ioremap_wc(i32, i32) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local i64 @mlx5_cmd_free_uar(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @bitmap_free(i8*) #1

declare dso_local i32 @kfree(%struct.mlx5_uars_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
