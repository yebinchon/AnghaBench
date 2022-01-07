; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_fw_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_ops.c_qed_init_fw_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.qed_fw_data* }
%struct.qed_fw_data = type { i32*, i32, i32*, %union.init_op*, %struct.fw_ver_info* }
%union.init_op = type { i32 }
%struct.fw_ver_info = type { i32 }
%struct.bin_buffer_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid fw data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BIN_BUF_INIT_FW_VER_INFO = common dso_local global i64 0, align 8
@BIN_BUF_INIT_CMD = common dso_local global i64 0, align 8
@BIN_BUF_INIT_VAL = common dso_local global i64 0, align 8
@BIN_BUF_INIT_MODE_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_init_fw_data(%struct.qed_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.qed_fw_data*, align 8
  %7 = alloca %struct.bin_buffer_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %11 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %10, i32 0, i32 0
  %12 = load %struct.qed_fw_data*, %struct.qed_fw_data** %11, align 8
  store %struct.qed_fw_data* %12, %struct.qed_fw_data** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %17 = call i32 @DP_NOTICE(%struct.qed_dev* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %80

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32* %21 to %struct.bin_buffer_hdr*
  store %struct.bin_buffer_hdr* %22, %struct.bin_buffer_hdr** %7, align 8
  %23 = load %struct.bin_buffer_hdr*, %struct.bin_buffer_hdr** %7, align 8
  %24 = load i64, i64* @BIN_BUF_INIT_FW_VER_INFO, align 8
  %25 = getelementptr inbounds %struct.bin_buffer_hdr, %struct.bin_buffer_hdr* %23, i64 %24
  %26 = getelementptr inbounds %struct.bin_buffer_hdr, %struct.bin_buffer_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = bitcast i32* %31 to %struct.fw_ver_info*
  %33 = load %struct.qed_fw_data*, %struct.qed_fw_data** %6, align 8
  %34 = getelementptr inbounds %struct.qed_fw_data, %struct.qed_fw_data* %33, i32 0, i32 4
  store %struct.fw_ver_info* %32, %struct.fw_ver_info** %34, align 8
  %35 = load %struct.bin_buffer_hdr*, %struct.bin_buffer_hdr** %7, align 8
  %36 = load i64, i64* @BIN_BUF_INIT_CMD, align 8
  %37 = getelementptr inbounds %struct.bin_buffer_hdr, %struct.bin_buffer_hdr* %35, i64 %36
  %38 = getelementptr inbounds %struct.bin_buffer_hdr, %struct.bin_buffer_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = bitcast i32* %43 to %union.init_op*
  %45 = load %struct.qed_fw_data*, %struct.qed_fw_data** %6, align 8
  %46 = getelementptr inbounds %struct.qed_fw_data, %struct.qed_fw_data* %45, i32 0, i32 3
  store %union.init_op* %44, %union.init_op** %46, align 8
  %47 = load %struct.bin_buffer_hdr*, %struct.bin_buffer_hdr** %7, align 8
  %48 = load i64, i64* @BIN_BUF_INIT_VAL, align 8
  %49 = getelementptr inbounds %struct.bin_buffer_hdr, %struct.bin_buffer_hdr* %47, i64 %48
  %50 = getelementptr inbounds %struct.bin_buffer_hdr, %struct.bin_buffer_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load %struct.qed_fw_data*, %struct.qed_fw_data** %6, align 8
  %57 = getelementptr inbounds %struct.qed_fw_data, %struct.qed_fw_data* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load %struct.bin_buffer_hdr*, %struct.bin_buffer_hdr** %7, align 8
  %59 = load i64, i64* @BIN_BUF_INIT_MODE_TREE, align 8
  %60 = getelementptr inbounds %struct.bin_buffer_hdr, %struct.bin_buffer_hdr* %58, i64 %59
  %61 = getelementptr inbounds %struct.bin_buffer_hdr, %struct.bin_buffer_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load %struct.qed_fw_data*, %struct.qed_fw_data** %6, align 8
  %68 = getelementptr inbounds %struct.qed_fw_data, %struct.qed_fw_data* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  %69 = load %struct.bin_buffer_hdr*, %struct.bin_buffer_hdr** %7, align 8
  %70 = load i64, i64* @BIN_BUF_INIT_CMD, align 8
  %71 = getelementptr inbounds %struct.bin_buffer_hdr, %struct.bin_buffer_hdr* %69, i64 %70
  %72 = getelementptr inbounds %struct.bin_buffer_hdr, %struct.bin_buffer_hdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = udiv i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = load %struct.qed_fw_data*, %struct.qed_fw_data** %6, align 8
  %79 = getelementptr inbounds %struct.qed_fw_data, %struct.qed_fw_data* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %20, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
