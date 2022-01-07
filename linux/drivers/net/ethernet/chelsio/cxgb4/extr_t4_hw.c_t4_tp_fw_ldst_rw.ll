; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_tp_fw_ldst_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_tp_fw_ldst_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@FW_LDST_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32*, i32, i32, i32, i32)* @t4_tp_fw_ldst_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_tp_fw_ldst_rw(%struct.adapter* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fw_ldst_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %92, %7
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %95

23:                                               ; preds = %19
  %24 = call i32 @memset(%struct.fw_ldst_cmd* %18, i32 0, i32 32)
  %25 = load i32, i32* @FW_LDST_CMD, align 4
  %26 = call i32 @FW_CMD_OP_V(i32 %25)
  %27 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @FW_CMD_READ_F, align 4
  br label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @FW_CMD_WRITE_F, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = or i32 %28, %36
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @FW_LDST_CMD_ADDRSPACE_V(i32 %38)
  %40 = or i32 %37, %39
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %18, i32 0, i32 2
  store i8* %41, i8** %42, align 8
  %43 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %18)
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %18, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %17, align 4
  %48 = add i32 %46, %47
  %49 = call i8* @cpu_to_be32(i32 %48)
  %50 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %18, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  br label %63

56:                                               ; preds = %35
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %17, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @cpu_to_be32(i32 %61)
  br label %63

63:                                               ; preds = %56, %55
  %64 = phi i8* [ null, %55 ], [ %62, %56 ]
  %65 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %18, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load %struct.adapter*, %struct.adapter** %9, align 8
  %69 = load %struct.adapter*, %struct.adapter** %9, align 8
  %70 = getelementptr inbounds %struct.adapter, %struct.adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @t4_wr_mbox_meat(%struct.adapter* %68, i32 %71, %struct.fw_ldst_cmd* %18, i32 32, %struct.fw_ldst_cmd* %18, i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %8, align 4
  br label %96

78:                                               ; preds = %63
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %18, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @be32_to_cpu(i8* %85)
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %17, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %81, %78
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %17, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %17, align 4
  br label %19

95:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %76
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LDST_CMD_ADDRSPACE_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox_meat(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*, i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
