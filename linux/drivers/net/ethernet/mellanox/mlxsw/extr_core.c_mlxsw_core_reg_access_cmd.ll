; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_reg_access_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_reg_access_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_reg_info = type { i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Reg cmd access (reg_id=%x(%s),type=%s)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_EMAD_OP_TLV_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_MRSR_ID = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@MLXSW_EMAD_MAX_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Reg cmd access status failed (status=%x(%s))\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Reg cmd access failed (reg_id=%x(%s),type=%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, %struct.mlxsw_reg_info*, i8*, i32)* @mlxsw_core_reg_access_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_core_reg_access_cmd(%struct.mlxsw_core* %0, %struct.mlxsw_reg_info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_core*, align 8
  %7 = alloca %struct.mlxsw_reg_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %6, align 8
  store %struct.mlxsw_reg_info* %1, %struct.mlxsw_reg_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %23 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %26 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @mlxsw_reg_id_str(i64 %27)
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @mlxsw_core_reg_access_type_str(i32 %29)
  %31 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %28, i32 %30)
  %32 = call i8* (...) @mlxsw_cmd_mbox_alloc()
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %140

38:                                               ; preds = %4
  %39 = call i8* (...) @mlxsw_cmd_mbox_alloc()
  store i8* %39, i8** %15, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %117

45:                                               ; preds = %38
  %46 = load i8*, i8** %14, align 8
  %47 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %50 = call i32 @mlxsw_core_tid_get(%struct.mlxsw_core* %49)
  %51 = call i32 @mlxsw_emad_pack_op_tlv(i8* %46, %struct.mlxsw_reg_info* %47, i32 %48, i32 %50)
  %52 = load i8*, i8** %14, align 8
  %53 = load i32, i32* @MLXSW_EMAD_OP_TLV_LEN, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8* %56, i8** %16, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @mlxsw_emad_pack_reg_tlv(i8* %57, %struct.mlxsw_reg_info* %58, i8* %59)
  %61 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %62 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MLXSW_REG_MRSR_ID, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %90, %45
  %68 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i8*, i8** %14, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @mlxsw_cmd_access_reg(%struct.mlxsw_core* %68, i32 %69, i8* %70, i8* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %103, label %75

75:                                               ; preds = %67
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 @mlxsw_emad_process_status(i8* %76, i32* %10)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* @MLXSW_EMAD_MAX_RETRY, align 4
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %67

91:                                               ; preds = %85, %80
  %92 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %93 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @mlxsw_emad_op_tlv_status_str(i32 %99)
  %101 = call i32 (i32, i8*, i64, i32, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %98, i32 %100)
  br label %102

102:                                              ; preds = %91, %75
  br label %103

103:                                              ; preds = %102, %67
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = call i32 @mlxsw_emad_reg_payload(i8* %108)
  %110 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %111 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @memcpy(i8* %107, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %106, %103
  %115 = load i8*, i8** %15, align 8
  %116 = call i32 @mlxsw_cmd_mbox_free(i8* %115)
  br label %117

117:                                              ; preds = %114, %42
  %118 = load i8*, i8** %14, align 8
  %119 = call i32 @mlxsw_cmd_mbox_free(i8* %118)
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %117
  %123 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %124 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %129 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %132 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @mlxsw_reg_id_str(i64 %133)
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @mlxsw_core_reg_access_type_str(i32 %135)
  %137 = call i32 (i32, i8*, i64, i32, ...) @dev_err(i32 %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %130, i32 %134, i32 %136)
  br label %138

138:                                              ; preds = %122, %117
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %138, %35
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @mlxsw_reg_id_str(i64) #1

declare dso_local i32 @mlxsw_core_reg_access_type_str(i32) #1

declare dso_local i8* @mlxsw_cmd_mbox_alloc(...) #1

declare dso_local i32 @mlxsw_emad_pack_op_tlv(i8*, %struct.mlxsw_reg_info*, i32, i32) #1

declare dso_local i32 @mlxsw_core_tid_get(%struct.mlxsw_core*) #1

declare dso_local i32 @mlxsw_emad_pack_reg_tlv(i8*, %struct.mlxsw_reg_info*, i8*) #1

declare dso_local i32 @mlxsw_cmd_access_reg(%struct.mlxsw_core*, i32, i8*, i8*) #1

declare dso_local i32 @mlxsw_emad_process_status(i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32, ...) #1

declare dso_local i32 @mlxsw_emad_op_tlv_status_str(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_emad_reg_payload(i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
