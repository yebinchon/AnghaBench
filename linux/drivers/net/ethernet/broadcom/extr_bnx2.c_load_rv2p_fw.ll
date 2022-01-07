; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_load_rv2p_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_load_rv2p_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.bnx2_rv2p_fw_file_entry = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@RV2P_PROC1 = common dso_local global i64 0, align 8
@BNX2_RV2P_PROC1_ADDR_CMD_RDWR = common dso_local global i64 0, align 8
@BNX2_RV2P_PROC1_ADDR_CMD = common dso_local global i64 0, align 8
@BNX2_RV2P_PROC2_ADDR_CMD_RDWR = common dso_local global i64 0, align 8
@BNX2_RV2P_PROC2_ADDR_CMD = common dso_local global i64 0, align 8
@BNX2_RV2P_INSTR_HIGH = common dso_local global i64 0, align 8
@BNX2_RV2P_INSTR_LOW = common dso_local global i64 0, align 8
@BNX2_RV2P_COMMAND = common dso_local global i64 0, align 8
@BNX2_RV2P_COMMAND_PROC1_RESET = common dso_local global i64 0, align 8
@BNX2_RV2P_COMMAND_PROC2_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i64, %struct.bnx2_rv2p_fw_file_entry*)* @load_rv2p_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_rv2p_fw(%struct.bnx2* %0, i64 %1, %struct.bnx2_rv2p_fw_file_entry* %2) #0 {
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bnx2_rv2p_fw_file_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.bnx2_rv2p_fw_file_entry* %2, %struct.bnx2_rv2p_fw_file_entry** %6, align 8
  %16 = load %struct.bnx2_rv2p_fw_file_entry*, %struct.bnx2_rv2p_fw_file_entry** %6, align 8
  %17 = getelementptr inbounds %struct.bnx2_rv2p_fw_file_entry, %struct.bnx2_rv2p_fw_file_entry* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @be32_to_cpu(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.bnx2_rv2p_fw_file_entry*, %struct.bnx2_rv2p_fw_file_entry** %6, align 8
  %22 = getelementptr inbounds %struct.bnx2_rv2p_fw_file_entry, %struct.bnx2_rv2p_fw_file_entry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @be32_to_cpu(i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %30, %31
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %9, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @RV2P_PROC1, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i64, i64* @BNX2_RV2P_PROC1_ADDR_CMD_RDWR, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* @BNX2_RV2P_PROC1_ADDR_CMD, align 8
  store i64 %39, i64* %13, align 8
  br label %43

40:                                               ; preds = %3
  %41 = load i64, i64* @BNX2_RV2P_PROC2_ADDR_CMD_RDWR, align 8
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* @BNX2_RV2P_PROC2_ADDR_CMD, align 8
  store i64 %42, i64* %13, align 8
  br label %43

43:                                               ; preds = %40, %37
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %75, %43
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %7, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %44
  %50 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %51 = load i64, i64* @BNX2_RV2P_INSTR_HIGH, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @be32_to_cpu(i32 %53)
  %55 = call i32 @BNX2_WR(%struct.bnx2* %50, i64 %51, i64 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %9, align 8
  %58 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %59 = load i64, i64* @BNX2_RV2P_INSTR_LOW, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @be32_to_cpu(i32 %61)
  %63 = call i32 @BNX2_WR(%struct.bnx2* %58, i64 %59, i64 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sdiv i32 %66, 8
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %12, align 8
  %70 = or i64 %68, %69
  store i64 %70, i64* %11, align 8
  %71 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @BNX2_WR(%struct.bnx2* %71, i64 %72, i64 %73)
  br label %75

75:                                               ; preds = %49
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 8
  store i32 %77, i32* %10, align 4
  br label %44

78:                                               ; preds = %44
  %79 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %80 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = add nsw i64 %83, %84
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %140, %78
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 8
  br i1 %89, label %90, label %143

90:                                               ; preds = %87
  %91 = load %struct.bnx2_rv2p_fw_file_entry*, %struct.bnx2_rv2p_fw_file_entry** %6, align 8
  %92 = getelementptr inbounds %struct.bnx2_rv2p_fw_file_entry, %struct.bnx2_rv2p_fw_file_entry* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @be32_to_cpu(i32 %97)
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %14, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %139

101:                                              ; preds = %90
  %102 = load i64, i64* %14, align 8
  %103 = mul nsw i64 %102, 4
  %104 = load i64, i64* %7, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %139

106:                                              ; preds = %101
  %107 = load i32*, i32** %9, align 8
  %108 = load i64, i64* %14, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = getelementptr inbounds i32, i32* %109, i64 -1
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @be32_to_cpu(i32 %111)
  store i64 %112, i64* %15, align 8
  %113 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %114 = load i64, i64* @BNX2_RV2P_INSTR_HIGH, align 8
  %115 = load i64, i64* %15, align 8
  %116 = call i32 @BNX2_WR(%struct.bnx2* %113, i64 %114, i64 %115)
  %117 = load i32*, i32** %9, align 8
  %118 = load i64, i64* %14, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @be32_to_cpu(i32 %120)
  store i64 %121, i64* %15, align 8
  %122 = load i64, i64* %5, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %15, align 8
  %126 = call i64 @rv2p_fw_fixup(i64 %122, i32 %123, i64 %124, i64 %125)
  store i64 %126, i64* %15, align 8
  %127 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %128 = load i64, i64* @BNX2_RV2P_INSTR_LOW, align 8
  %129 = load i64, i64* %15, align 8
  %130 = call i32 @BNX2_WR(%struct.bnx2* %127, i64 %128, i64 %129)
  %131 = load i64, i64* %14, align 8
  %132 = sdiv i64 %131, 2
  %133 = load i64, i64* %12, align 8
  %134 = or i64 %132, %133
  store i64 %134, i64* %11, align 8
  %135 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @BNX2_WR(%struct.bnx2* %135, i64 %136, i64 %137)
  br label %139

139:                                              ; preds = %106, %101, %90
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %87

143:                                              ; preds = %87
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* @RV2P_PROC1, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %149 = load i64, i64* @BNX2_RV2P_COMMAND, align 8
  %150 = load i64, i64* @BNX2_RV2P_COMMAND_PROC1_RESET, align 8
  %151 = call i32 @BNX2_WR(%struct.bnx2* %148, i64 %149, i64 %150)
  br label %157

152:                                              ; preds = %143
  %153 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %154 = load i64, i64* @BNX2_RV2P_COMMAND, align 8
  %155 = load i64, i64* @BNX2_RV2P_COMMAND_PROC2_RESET, align 8
  %156 = call i32 @BNX2_WR(%struct.bnx2* %153, i64 %154, i64 %155)
  br label %157

157:                                              ; preds = %152, %147
  ret i32 0
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i64, i64) #1

declare dso_local i64 @rv2p_fw_fixup(i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
