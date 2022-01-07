; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_pack_reg_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_pack_reg_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_reg_info = type { i32 }

@MLXSW_EMAD_TLV_TYPE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mlxsw_reg_info*, i8*)* @mlxsw_emad_pack_reg_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_emad_pack_reg_tlv(i8* %0, %struct.mlxsw_reg_info* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlxsw_reg_info*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.mlxsw_reg_info* %1, %struct.mlxsw_reg_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* @MLXSW_EMAD_TLV_TYPE_REG, align 4
  %9 = call i32 @mlxsw_emad_reg_tlv_type_set(i8* %7, i32 %8)
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = add i64 %15, 1
  %17 = trunc i64 %16 to i32
  %18 = call i32 @mlxsw_emad_reg_tlv_len_set(i8* %10, i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i8* %20, i8* %21, i32 %24)
  ret void
}

declare dso_local i32 @mlxsw_emad_reg_tlv_type_set(i8*, i32) #1

declare dso_local i32 @mlxsw_emad_reg_tlv_len_set(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
