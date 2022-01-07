; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_i2c_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_i2c_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@I2C_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FW_LDST_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_I2C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_i2c_rd(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.fw_ldst_cmd, align 8
  %17 = alloca %struct.fw_ldst_cmd, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 4, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @I2C_PAGE_SIZE, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %117

27:                                               ; preds = %7
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @I2C_PAGE_SIZE, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = add i32 %32, %33
  %35 = load i32, i32* @I2C_PAGE_SIZE, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %117

40:                                               ; preds = %31, %27
  %41 = call i32 @memset(%struct.fw_ldst_cmd* %16, i32 0, i32 40)
  %42 = load i32, i32* @FW_LDST_CMD, align 4
  %43 = call i32 @FW_CMD_OP_V(i32 %42)
  %44 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @FW_CMD_READ_F, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @FW_LDST_ADDRSPC_I2C, align 4
  %49 = call i32 @FW_LDST_CMD_ADDRSPACE_V(i32 %48)
  %50 = or i32 %47, %49
  %51 = call i8* @cpu_to_be32(i32 %50)
  %52 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %16, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %16)
  %54 = call i8* @cpu_to_be32(i32 %53)
  %55 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %16, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  br label %61

59:                                               ; preds = %40
  %60 = load i32, i32* %11, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi i32 [ 255, %58 ], [ %60, %59 ]
  %63 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %16, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %16, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %97, %61
  %71 = load i32, i32* %14, align 4
  %72 = icmp ugt i32 %71, 0
  br i1 %72, label %73, label %115

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %14, align 4
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %18, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, i32* %20, align 4
  %83 = load i32, i32* %13, align 4
  %84 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %16, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* %20, align 4
  %88 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %16, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = load %struct.adapter*, %struct.adapter** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @t4_wr_mbox(%struct.adapter* %91, i32 %92, %struct.fw_ldst_cmd* %16, i32 40, %struct.fw_ldst_cmd* %17)
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  br label %115

97:                                               ; preds = %81
  %98 = load i32*, i32** %15, align 8
  %99 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %20, align 4
  %104 = call i32 @memcpy(i32* %98, i32 %102, i32 %103)
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %20, align 4
  %109 = load i32*, i32** %15, align 8
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %15, align 8
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %14, align 4
  %114 = sub i32 %113, %112
  store i32 %114, i32* %14, align 4
  br label %70

115:                                              ; preds = %96, %70
  %116 = load i32, i32* %19, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %115, %37, %24
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LDST_CMD_ADDRSPACE_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
