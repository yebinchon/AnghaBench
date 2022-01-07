; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_pack_op_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_pack_op_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_reg_info = type { i32 }

@MLXSW_EMAD_TLV_TYPE_OP = common dso_local global i32 0, align 4
@MLXSW_EMAD_OP_TLV_LEN = common dso_local global i32 0, align 4
@MLXSW_EMAD_OP_TLV_REQUEST = common dso_local global i32 0, align 4
@MLXSW_CORE_REG_ACCESS_TYPE_QUERY = common dso_local global i32 0, align 4
@MLXSW_EMAD_OP_TLV_METHOD_QUERY = common dso_local global i32 0, align 4
@MLXSW_EMAD_OP_TLV_METHOD_WRITE = common dso_local global i32 0, align 4
@MLXSW_EMAD_OP_TLV_CLASS_REG_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mlxsw_reg_info*, i32, i32)* @mlxsw_emad_pack_op_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_emad_pack_op_tlv(i8* %0, %struct.mlxsw_reg_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mlxsw_reg_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.mlxsw_reg_info* %1, %struct.mlxsw_reg_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @MLXSW_EMAD_TLV_TYPE_OP, align 4
  %11 = call i32 @mlxsw_emad_op_tlv_type_set(i8* %9, i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @MLXSW_EMAD_OP_TLV_LEN, align 4
  %14 = call i32 @mlxsw_emad_op_tlv_len_set(i8* %12, i32 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @mlxsw_emad_op_tlv_dr_set(i8* %15, i32 0)
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @mlxsw_emad_op_tlv_status_set(i8* %17, i32 0)
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlxsw_emad_op_tlv_register_id_set(i8* %19, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @MLXSW_EMAD_OP_TLV_REQUEST, align 4
  %26 = call i32 @mlxsw_emad_op_tlv_r_set(i8* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MLXSW_CORE_REG_ACCESS_TYPE_QUERY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @MLXSW_EMAD_OP_TLV_METHOD_QUERY, align 4
  %33 = call i32 @mlxsw_emad_op_tlv_method_set(i8* %31, i32 %32)
  br label %38

34:                                               ; preds = %4
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @MLXSW_EMAD_OP_TLV_METHOD_WRITE, align 4
  %37 = call i32 @mlxsw_emad_op_tlv_method_set(i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @MLXSW_EMAD_OP_TLV_CLASS_REG_ACCESS, align 4
  %41 = call i32 @mlxsw_emad_op_tlv_class_set(i8* %39, i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @mlxsw_emad_op_tlv_tid_set(i8* %42, i32 %43)
  ret void
}

declare dso_local i32 @mlxsw_emad_op_tlv_type_set(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_op_tlv_len_set(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_op_tlv_dr_set(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_op_tlv_status_set(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_op_tlv_register_id_set(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_op_tlv_r_set(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_op_tlv_method_set(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_op_tlv_class_set(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_op_tlv_tid_set(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
