; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_bsc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_bsc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32 }
%struct.bnx2x = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"invalid xfer_cnt %d. Max is 16 bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MCP_REG_MCPR_IMC_COMMAND = common dso_local global i64 0, align 8
@MCPR_IMC_COMMAND_ENABLE = common dso_local global i32 0, align 4
@MCP_REG_MCPR_IMC_SLAVE_CONTROL = common dso_local global i64 0, align 8
@MCPR_IMC_COMMAND_WRITE_OP = common dso_local global i32 0, align 4
@MCPR_IMC_COMMAND_OPERATION_BITSHIFT = common dso_local global i32 0, align 4
@MCPR_IMC_COMMAND_TRANSFER_ADDRESS_BITSHIFT = common dso_local global i32 0, align 4
@MCPR_IMC_COMMAND_IMC_STATUS_BITSHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"wr 0 byte timed out after %d try\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@MCPR_IMC_COMMAND_READ_OP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"rd op timed out after %d try\0A\00", align 1
@MCP_REG_MCPR_IMC_DATAREG0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.bnx2x*, i32, i32, i32, i32, i32*)* @bnx2x_bsc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_bsc_read(%struct.link_params* %0, %struct.bnx2x* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.link_params*, align 8
  %10 = alloca %struct.bnx2x*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %9, align 8
  store %struct.bnx2x* %1, %struct.bnx2x** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp sgt i32 %19, 16
  br i1 %20, label %21, label %27

21:                                               ; preds = %7
  %22 = load i32, i32* @NETIF_MSG_LINK, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @DP(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %164

27:                                               ; preds = %7
  %28 = load %struct.link_params*, %struct.link_params** %9, align 8
  %29 = call i32 @bnx2x_bsc_module_sel(%struct.link_params* %28)
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 16, %30
  store i32 %31, i32* %14, align 4
  %32 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %33 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %34 = call i32 @REG_RD(%struct.bnx2x* %32, i64 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* @MCPR_IMC_COMMAND_ENABLE, align 4
  %36 = load i32, i32* %16, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %16, align 4
  %38 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %39 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @REG_WR(%struct.bnx2x* %38, i64 %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %42, 16
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %16, align 4
  %46 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %47 = load i64, i64* @MCP_REG_MCPR_IMC_SLAVE_CONTROL, align 8
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @REG_WR(%struct.bnx2x* %46, i64 %47, i32 %48)
  %50 = load i32, i32* @MCPR_IMC_COMMAND_ENABLE, align 4
  %51 = load i32, i32* @MCPR_IMC_COMMAND_WRITE_OP, align 4
  %52 = load i32, i32* @MCPR_IMC_COMMAND_OPERATION_BITSHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @MCPR_IMC_COMMAND_TRANSFER_ADDRESS_BITSHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %54, %57
  store i32 %58, i32* %16, align 4
  %59 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %60 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @REG_WR(%struct.bnx2x* %59, i64 %60, i32 %61)
  store i32 0, i32* %17, align 4
  %63 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %64 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %65 = call i32 @REG_RD(%struct.bnx2x* %63, i64 %64)
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %86, %27
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @MCPR_IMC_COMMAND_IMC_STATUS_BITSHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = and i32 %69, 3
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = call i32 @udelay(i32 10)
  %74 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %75 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %76 = call i32 @REG_RD(%struct.bnx2x* %74, i64 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  %79 = icmp sgt i32 %77, 1000
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load i32, i32* @NETIF_MSG_LINK, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @DP(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EFAULT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %18, align 4
  br label %87

86:                                               ; preds = %72
  br label %66

87:                                               ; preds = %80, %66
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* @EFAULT, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %18, align 4
  store i32 %93, i32* %8, align 4
  br label %164

94:                                               ; preds = %87
  %95 = load i32, i32* @MCPR_IMC_COMMAND_ENABLE, align 4
  %96 = load i32, i32* @MCPR_IMC_COMMAND_READ_OP, align 4
  %97 = load i32, i32* @MCPR_IMC_COMMAND_OPERATION_BITSHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = or i32 %95, %98
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @MCPR_IMC_COMMAND_TRANSFER_ADDRESS_BITSHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = or i32 %99, %102
  %104 = load i32, i32* %14, align 4
  %105 = or i32 %103, %104
  store i32 %105, i32* %16, align 4
  %106 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %107 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @REG_WR(%struct.bnx2x* %106, i64 %107, i32 %108)
  store i32 0, i32* %17, align 4
  %110 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %111 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %112 = call i32 @REG_RD(%struct.bnx2x* %110, i64 %111)
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %133, %94
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* @MCPR_IMC_COMMAND_IMC_STATUS_BITSHIFT, align 4
  %116 = ashr i32 %114, %115
  %117 = and i32 %116, 3
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %119, label %134

119:                                              ; preds = %113
  %120 = call i32 @udelay(i32 10)
  %121 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %122 = load i64, i64* @MCP_REG_MCPR_IMC_COMMAND, align 8
  %123 = call i32 @REG_RD(%struct.bnx2x* %121, i64 %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  %126 = icmp sgt i32 %124, 1000
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load i32, i32* @NETIF_MSG_LINK, align 4
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @DP(i32 %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @EFAULT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %18, align 4
  br label %134

133:                                              ; preds = %119
  br label %113

134:                                              ; preds = %127, %113
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* @EFAULT, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* %18, align 4
  store i32 %140, i32* %8, align 4
  br label %164

141:                                              ; preds = %134
  %142 = load i32, i32* %13, align 4
  %143 = ashr i32 %142, 2
  store i32 %143, i32* %17, align 4
  br label %144

144:                                              ; preds = %159, %141
  %145 = load i32, i32* %17, align 4
  %146 = icmp slt i32 %145, 4
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %149 = load i64, i64* @MCP_REG_MCPR_IMC_DATAREG0, align 8
  %150 = load i32, i32* %17, align 4
  %151 = mul nsw i32 %150, 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %149, %152
  %154 = call i32 @REG_RD(%struct.bnx2x* %148, i64 %153)
  %155 = load i32*, i32** %15, align 8
  %156 = load i32, i32* %17, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  br label %159

159:                                              ; preds = %147
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %17, align 4
  br label %144

162:                                              ; preds = %144
  %163 = load i32, i32* %18, align 4
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %162, %139, %92, %21
  %165 = load i32, i32* %8, align 4
  ret i32 %165
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_bsc_module_sel(%struct.link_params*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
