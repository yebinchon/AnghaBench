; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cq.c_mlx5_core_create_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cq.c_mlx5_core_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_core_cq = type { i8*, i8*, i32, i32, %struct.TYPE_4__, i64, i32, i32, %struct.mlx5_eq_comp*, i64, i64 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.mlx5_eq_comp = type { i32, i32 }

@cqc = common dso_local global i32 0, align 4
@create_cq_in = common dso_local global i32 0, align 4
@cq_context = common dso_local global i32 0, align 4
@c_eqn = common dso_local global i32 0, align 4
@destroy_cq_out = common dso_local global i32 0, align 4
@destroy_cq_in = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_CQ = common dso_local global i8* null, align 8
@create_cq_out = common dso_local global i32 0, align 4
@cqn = common dso_local global i32 0, align 4
@uid = common dso_local global i32 0, align 4
@mlx5_add_cq_to_tasklet = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed adding CP 0x%x to debug file system\0A\00", align 1
@MLX5_CMD_OP_DESTROY_CQ = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_create_cq(%struct.mlx5_core_dev* %0, %struct.mlx5_core_cq* %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca %struct.mlx5_core_cq*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.mlx5_eq_comp*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %8, align 8
  store %struct.mlx5_core_cq* %1, %struct.mlx5_core_cq** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @cqc, align 4
  %22 = load i32, i32* @create_cq_in, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* @cq_context, align 4
  %25 = call i32* @MLX5_ADDR_OF(i32 %22, i32* %23, i32 %24)
  %26 = load i32, i32* @c_eqn, align 4
  %27 = call i8* @MLX5_GET(i32 %21, i32* %25, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* @destroy_cq_out, align 4
  %30 = call i32 @MLX5_ST_SZ_DW(i32 %29)
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %15, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %34 = load i32, i32* @destroy_cq_in, align 4
  %35 = call i32 @MLX5_ST_SZ_DW(i32 %34)
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %17, align 8
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call %struct.mlx5_eq_comp* @mlx5_eqn2comp_eq(%struct.mlx5_core_dev* %38, i32 %39)
  store %struct.mlx5_eq_comp* %40, %struct.mlx5_eq_comp** %18, align 8
  %41 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %18, align 8
  %42 = call i64 @IS_ERR(%struct.mlx5_eq_comp* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %6
  %45 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %18, align 8
  %46 = call i32 @PTR_ERR(%struct.mlx5_eq_comp* %45)
  store i32 %46, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %184

47:                                               ; preds = %6
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @memset(i32* %48, i32 0, i32 %49)
  %51 = load i32, i32* @create_cq_in, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* @opcode, align 4
  %54 = load i8*, i8** @MLX5_CMD_OP_CREATE_CQ, align 8
  %55 = call i32 @MLX5_SET(i32 %51, i32* %52, i32 %53, i8* %54)
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %56, i32* %57, i32 %58, i32* %59, i32 %60)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %47
  %65 = load i32, i32* %19, align 4
  store i32 %65, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %184

66:                                               ; preds = %47
  %67 = load i32, i32* @create_cq_out, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* @cqn, align 4
  %70 = call i8* @MLX5_GET(i32 %67, i32* %68, i32 %69)
  %71 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %72 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %74 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %73, i32 0, i32 10
  store i64 0, i64* %74, align 8
  %75 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %76 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %75, i32 0, i32 9
  store i64 0, i64* %76, align 8
  %77 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %18, align 8
  %78 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %79 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %78, i32 0, i32 8
  store %struct.mlx5_eq_comp* %77, %struct.mlx5_eq_comp** %79, align 8
  %80 = load i32, i32* @create_cq_in, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* @uid, align 4
  %83 = call i8* @MLX5_GET(i32 %80, i32* %81, i32 %82)
  %84 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %85 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %87 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %86, i32 0, i32 7
  %88 = call i32 @refcount_set(i32* %87, i32 1)
  %89 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %90 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %89, i32 0, i32 6
  %91 = call i32 @init_completion(i32* %90)
  %92 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %93 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %66
  %97 = load i64, i64* @mlx5_add_cq_to_tasklet, align 8
  %98 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %99 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %98, i32 0, i32 5
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %96, %66
  %101 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %18, align 8
  %102 = getelementptr inbounds %struct.mlx5_eq_comp, %struct.mlx5_eq_comp* %101, i32 0, i32 1
  %103 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %104 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32* %102, i32** %105, align 8
  %106 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %107 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i32 @INIT_LIST_HEAD(i32* %108)
  %110 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %18, align 8
  %111 = getelementptr inbounds %struct.mlx5_eq_comp, %struct.mlx5_eq_comp* %110, i32 0, i32 0
  %112 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %113 = call i32 @mlx5_eq_add_cq(i32* %111, %struct.mlx5_core_cq* %112)
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %100
  br label %154

117:                                              ; preds = %100
  %118 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %119 = call i32* @mlx5_get_async_eq(%struct.mlx5_core_dev* %118)
  %120 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %121 = call i32 @mlx5_eq_add_cq(i32* %119, %struct.mlx5_core_cq* %120)
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %19, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %149

125:                                              ; preds = %117
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %130 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %132 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %133 = call i32 @mlx5_debug_cq_add(%struct.mlx5_core_dev* %131, %struct.mlx5_core_cq* %132)
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %19, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %125
  %137 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %138 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %139 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %136, %125
  %143 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %144 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %148 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %184

149:                                              ; preds = %124
  %150 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %18, align 8
  %151 = getelementptr inbounds %struct.mlx5_eq_comp, %struct.mlx5_eq_comp* %150, i32 0, i32 0
  %152 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %153 = call i32 @mlx5_eq_del_cq(i32* %151, %struct.mlx5_core_cq* %152)
  br label %154

154:                                              ; preds = %149, %116
  %155 = mul nuw i64 4, %36
  %156 = trunc i64 %155 to i32
  %157 = call i32 @memset(i32* %37, i32 0, i32 %156)
  %158 = mul nuw i64 4, %31
  %159 = trunc i64 %158 to i32
  %160 = call i32 @memset(i32* %33, i32 0, i32 %159)
  %161 = load i32, i32* @destroy_cq_in, align 4
  %162 = load i32, i32* @opcode, align 4
  %163 = load i8*, i8** @MLX5_CMD_OP_DESTROY_CQ, align 8
  %164 = call i32 @MLX5_SET(i32 %161, i32* %37, i32 %162, i8* %163)
  %165 = load i32, i32* @destroy_cq_in, align 4
  %166 = load i32, i32* @cqn, align 4
  %167 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %168 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @MLX5_SET(i32 %165, i32* %37, i32 %166, i8* %169)
  %171 = load i32, i32* @destroy_cq_in, align 4
  %172 = load i32, i32* @uid, align 4
  %173 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %9, align 8
  %174 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @MLX5_SET(i32 %171, i32* %37, i32 %172, i8* %175)
  %177 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %178 = mul nuw i64 4, %36
  %179 = trunc i64 %178 to i32
  %180 = mul nuw i64 4, %31
  %181 = trunc i64 %180 to i32
  %182 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %177, i32* %37, i32 %179, i32* %33, i32 %181)
  %183 = load i32, i32* %19, align 4
  store i32 %183, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %184

184:                                              ; preds = %154, %142, %64, %44
  %185 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32, i32* %7, align 4
  ret i32 %186
}

declare dso_local i8* @MLX5_GET(i32, i32*, i32) #1

declare dso_local i32* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.mlx5_eq_comp* @mlx5_eqn2comp_eq(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_eq_comp*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_eq_comp*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i8*) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i32*, i32, i32*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mlx5_eq_add_cq(i32*, %struct.mlx5_core_cq*) #1

declare dso_local i32* @mlx5_get_async_eq(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_debug_cq_add(%struct.mlx5_core_dev*, %struct.mlx5_core_cq*) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i8*) #1

declare dso_local i32 @mlx5_eq_del_cq(i32*, %struct.mlx5_core_cq*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
