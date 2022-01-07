; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_cq = type { %struct.TYPE_9__, %struct.mlx5_core_cq, %struct.mlx5_core_dev* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.mlx5_core_cq = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_cq_param = type { i32, i32, i32 }

@create_cq_out = common dso_local global i32 0, align 4
@create_cq_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cq_context = common dso_local global i32 0, align 4
@pas = common dso_local global i32 0, align 4
@cq_period_mode = common dso_local global i32 0, align 4
@c_eqn = common dso_local global i32 0, align 4
@uar_page = common dso_local global i32 0, align 4
@log_page_size = common dso_local global i32 0, align 4
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i32 0, align 4
@dbr_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_cq*, %struct.mlx5e_cq_param*)* @mlx5e_create_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_cq(%struct.mlx5e_cq* %0, %struct.mlx5e_cq_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_cq*, align 8
  %5 = alloca %struct.mlx5e_cq_param*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca %struct.mlx5_core_cq*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5e_cq* %0, %struct.mlx5e_cq** %4, align 8
  store %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq_param** %5, align 8
  %17 = load i32, i32* @create_cq_out, align 4
  %18 = call i32 @MLX5_ST_SZ_DW(i32 %17)
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %22, i32 0, i32 2
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %23, align 8
  store %struct.mlx5_core_dev* %24, %struct.mlx5_core_dev** %8, align 8
  %25 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %25, i32 0, i32 1
  store %struct.mlx5_core_cq* %26, %struct.mlx5_core_cq** %9, align 8
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %28 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlx5_vector2eqn(%struct.mlx5_core_dev* %27, i32 %30, i32* %14, i32* %13)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %134

36:                                               ; preds = %2
  %37 = load i32, i32* @create_cq_in, align 4
  %38 = call i32 @MLX5_ST_SZ_BYTES(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = add i64 %39, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kvzalloc(i32 %49, i32 %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %36
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %134

57:                                               ; preds = %36
  %58 = load i32, i32* @create_cq_in, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @cq_context, align 4
  %61 = call i8* @MLX5_ADDR_OF(i32 %58, i8* %59, i32 %60)
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i8* %62, i32 %65, i32 4)
  %67 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %4, align 8
  %68 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* @create_cq_in, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* @pas, align 4
  %73 = call i8* @MLX5_ADDR_OF(i32 %70, i8* %71, i32 %72)
  %74 = bitcast i8* %73 to i32*
  %75 = call i32 @mlx5_fill_page_frag_array(%struct.TYPE_10__* %69, i32* %74)
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* @cq_period_mode, align 4
  %79 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %5, align 8
  %80 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @MLX5_SET(i8* %76, i8* %77, i32 %78, i32 %81)
  %83 = load i8*, i8** %11, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* @c_eqn, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @MLX5_SET(i8* %83, i8* %84, i32 %85, i32 %86)
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* @uar_page, align 4
  %91 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %92 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @MLX5_SET(i8* %88, i8* %89, i32 %90, i32 %96)
  %98 = load i8*, i8** %11, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load i32, i32* @log_page_size, align 4
  %101 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %4, align 8
  %102 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MLX5_ADAPTER_PAGE_SHIFT, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @MLX5_SET(i8* %98, i8* %99, i32 %100, i32 %107)
  %109 = load i8*, i8** %11, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load i32, i32* @dbr_addr, align 4
  %112 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %4, align 8
  %113 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @MLX5_SET64(i8* %109, i8* %110, i32 %111, i32 %116)
  %118 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %119 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* %12, align 4
  %122 = mul nuw i64 4, %19
  %123 = trunc i64 %122 to i32
  %124 = call i32 @mlx5_core_create_cq(%struct.mlx5_core_dev* %118, %struct.mlx5_core_cq* %119, i8* %120, i32 %121, i32* %21, i32 %123)
  store i32 %124, i32* %15, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @kvfree(i8* %125)
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %57
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %134

131:                                              ; preds = %57
  %132 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %4, align 8
  %133 = call i32 @mlx5e_cq_arm(%struct.mlx5e_cq* %132)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %134

134:                                              ; preds = %131, %129, %54, %34
  %135 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlx5_vector2eqn(%struct.mlx5_core_dev*, i32, i32*, i32*) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mlx5_fill_page_frag_array(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_create_cq(%struct.mlx5_core_dev*, %struct.mlx5_core_cq*, i8*, i32, i32*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @mlx5e_cq_arm(%struct.mlx5e_cq*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
